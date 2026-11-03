using System.Data;
using System.Web.Mvc;

namespace ShineWeb.Helpers
{
    /// <summary>
    /// Base controller that centralises the login/session check and menu-permission lookup
    /// that is currently copy-pasted into every controller action.
    ///
    /// Usage in a controller:
    ///   public class InvoiceController : SecuredController
    ///   {
    ///       public ActionResult Index(...)
    ///       {
    ///           var guard = RequireLogin();
    ///           if (guard != null) return guard;                  // not logged in -> Login page
    ///
    ///           var perm = RequireMenuPermission(223, "KUGYxS+KhoQB3/Yrx1I0cQ==");
    ///           if (perm != null) return perm;                    // no permission -> nopermission page
    ///           ...
    ///       }
    ///   }
    ///
    /// This is opt-in: existing controllers keep working unchanged. New or refactored
    /// controllers can inherit from SecuredController to remove the duplicated boilerplate.
    /// </summary>
    public abstract class SecuredController : Controller
    {
        /// <summary>Current logged-in user id, or 0 if none.</summary>
        protected int CurrentUserId
        {
            get
            {
                var val = Session["LoginUserID"];
                int id;
                return (val != null && int.TryParse(val.ToString(), out id)) ? id : 0;
            }
        }

        /// <summary>True when the current user is the superuser (id 1).</summary>
        protected bool IsSuperUser => CurrentUserId == 1;

        /// <summary>The cached permission table from session.</summary>
        protected DataTable Permissions => Session["dtPermission"] as DataTable;

        /// <summary>
        /// Returns a redirect to the Login page if the session has no logged-in user,
        /// otherwise null. Call at the start of every secured action.
        /// </summary>
        protected ActionResult RequireLogin()
        {
            if (Session["LoginUserID"] == null)
                return RedirectToAction("Index", "Login");
            return null;
        }

        /// <summary>
        /// Returns true when the current user has any permission for the given form menu id
        /// (either the menu itself or a child of it). The superuser always passes.
        /// </summary>
        protected bool HasFormPermission(int menuId)
        {
            if (IsSuperUser) return true;
            var perms = Permissions;
            if (perms == null) return false;
            return perms.Select("MenuId = " + menuId + " or MenuParentId = " + menuId).Length > 0;
        }

        /// <summary>
        /// Returns true when the current user has permission for a specific named menu id.
        /// The superuser always passes.
        /// </summary>
        protected bool HasMenuId(int menuId)
        {
            if (IsSuperUser) return true;
            var perms = Permissions;
            if (perms == null) return false;
            return perms.Select("MenuID = " + menuId).Length > 0;
        }

        /// <summary>
        /// Returns a redirect to the no-permission page if the user lacks any permission for
        /// the given form menu id, otherwise null.
        /// </summary>
        /// <param name="formMenuId">The MenuId / MenuParentId that grants access to this form.</param>
        /// <param name="encryptedFormName">The pre-encrypted form name used by Home/nopermission.</param>
        protected ActionResult RequireMenuPermission(int formMenuId, string encryptedFormName)
        {
            if (!HasFormPermission(formMenuId))
            {
                return RedirectToAction("nopermission", "Home",
                    new { emanmrofnoissimerpon = encryptedFormName });
            }
            return null;
        }

        /// <summary>"1" if the user has the given menu id, otherwise "0" — matches the
        /// string flags the views expect for permission toggles.</summary>
        protected string PermFlag(int menuId) => HasMenuId(menuId) ? "1" : "0";
    }
}

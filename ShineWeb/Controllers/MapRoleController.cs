using ShineWeb.Models;
using System;
using System.Data;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class MapRoleController : Controller
    {
        // NOTE: This controller no longer holds a direct-DB clsBusinessLayer. The view
        // (Views/MapRole/Index.cshtml) loads roles/tree and saves via the API
        // (maprole/getroles, maprole/gettreedata, maprole/savemaprole). The former
        // GetComboBoxData / GetTreeData / SaveMapUserDetails MVC actions were dead code
        // (no caller) that executed stored procedures directly against SQL Server, so they
        // have been removed to keep all data access flowing through the API.
        MapRoleModel MUModel = new MapRoleModel();
        public ActionResult Index()
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 117", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "DE496ZpzUGs9Hh2bCGXZw2e0y0WBlX8zPkg6CrsCc3I=" });
                }
                return View(MUModel);
            }
        }
    }
}
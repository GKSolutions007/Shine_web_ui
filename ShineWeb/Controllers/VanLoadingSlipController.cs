          using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class VanLoadingSlipController : Controller
    {
        // GET: VanLoadingSlip
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int nUID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 534 or MenuParentId = 534", null).Length > 0;
                if (!Formhaveanypermission && nUID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "Q0Cv4BuvYD4zCrDsSye9n/uNOy+kzwrXsr8e/vHCi+sWOHNVNN4O4ndU/TyhewWA" });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                string AddPerm = dtPermission.Select("MenuID = 535", null).Length > 0 || nUID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuID = 536", null).Length > 0 || nUID == 1 ? "1" : "0";
                string CancelPerm = dtPermission.Select("MenuID = 546", null).Length > 0 || nUID == 1 ? "1" : "0";
                string ModifyPerm = "0";// dtPermission.Select("MenuID = 547", null).Length > 0 || nUID == 1 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuID = 539", null).Length > 0 || nUID == 1 ? "1" : "0";
                string EnbBranch = nUID == 1 ? "0" : dtPermission.Select("MenuID = 221", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.View = ViewPerm;
                dam.Cancel = CancelPerm;
                dam.Modify = ModifyPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                return View(dam);
            }
        }
    }
}
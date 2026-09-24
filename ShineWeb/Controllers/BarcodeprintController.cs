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
    public class BarcodeprintController : Controller
    {
        // GET: Barcodeprint
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
                bool Formhaveanypermission = dtPermission.Select("MenuId = 571 or MenuParentId = 571", null).Length > 0;
                if (!Formhaveanypermission && nUID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "gYNqw95gD6yxD1/0iKRh462Kyyg+TjHXf8IaxBJBTho=" });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                string AddPerm = dtPermission.Select("MenuID = 572", null).Length > 0 || nUID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuID = 573", null).Length > 0 || nUID == 1 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuID = 574", null).Length > 0 || nUID == 1 ? "1" : "0";
                string EnbBranch = nUID == 1 ? "0" : dtPermission.Select("MenuID = 221", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.View = ViewPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                return View(dam);
            }
        }
    }
}
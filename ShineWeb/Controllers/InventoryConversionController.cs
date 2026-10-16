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
    public class InventoryConversionController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 328 or MenuParentId = 328", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "i3DMZtc/Tn0UH9DhV75tUuHjdtmqgq5lQj0C4yiivAKRctLDENVNUH/hBbeSFLKa" });
                }

                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string EnbBranch = UID == 1 ? "0" : dtPermission.Select("MenuID = 221", null).Length > 0 || UID == 1 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.EnableBranch = EnbBranch;
                dam.Add = AddPerm;// Convert.ToString(objBL.BL_CheckPermission(Convert.ToInt32(Session["LoginUserID"]), "Create " + Name, Convert.ToInt32(Session["RoleID"])) ? 1 : 0);
                dam.View = ViewPerm;// Convert.ToString(objBL.BL_CheckPermission(Convert.ToInt32(Session["LoginUserID"]), "View " + Name, Convert.ToInt32(Session["RoleID"])) ? 1 : 0);
                return View(dam);
            }
        }
    }
}
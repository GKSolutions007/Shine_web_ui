using DocumentFormat.OpenXml.Spreadsheet;
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
    public class AutomaticIndentController : Controller
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
                
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 159 or MenuParentId = 159", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home", new { emanmrofnoissimerpon = "w2ZCPJkGFF0AoGvRO1+MNrYg/TlGSP7RFKOTKnKk7TZy+jK6iu0iUfEo8qMSw+Yi" });
                }
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 ? "1" : "0";
                //string EnbBranch = dtPermission.Select("MenuName = 'Enable Branch in Transactions'", null).Length > 0 ? "1" : "0";
                string EnbBranch = UID == 1 ? "0" : dtPermission.Select("MenuID = 221", null).Length > 0 ? "1" : "0";
                string DrftMod = dtPermission.Select("MenuID = 380", null).Length > 0 ? "1" : "0";
                string DrftCan = dtPermission.Select("MenuID = 381", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.Variant = VarPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.EnableBranch = EnbBranch;//
                dam.DraftModify = DrftMod;
                dam.DraftCancel = DrftCan;
                return View(dam);
            }
        }
    }
}
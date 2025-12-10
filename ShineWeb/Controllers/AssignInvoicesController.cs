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
    public class AssignInvoicesController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public IDictionary<string, string> _mappings = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);

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
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuID = 281", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuID = 282", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuID = 284", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuID = 283", null).Length > 0 ? "1" : "0";
                string RtnPerm = dtPermission.Select("MenuID = 285", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.Return = RtnPerm;
                return View(dam);
            }
        }
    }
}
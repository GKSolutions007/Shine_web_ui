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
    public class sampgridController : Controller
    {
        // GET: SingleMaster
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string ID = "")//,string isDepend = "0", string ParMID = "", string ParFFID = ""
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                ViewData["TransType"] = TypeID;
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuName = 'Add " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";

                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.ID = ID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.TransType = TypeID;
                return View(dam);
            }
        }
    }
}
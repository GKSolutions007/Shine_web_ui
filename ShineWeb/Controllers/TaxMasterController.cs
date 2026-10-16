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
    public class TaxMasterController : Controller
    {
        // GET: TaxMaster
        clsBusinessLayer objBL = new clsBusinessLayer();       
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 488 or MenuParentId = 488", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "+2TriJdLN5rPHvjEM+Yvow==" });
                }

                Name = clsEncryptDecrypt.Decrypt(Name);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                string AddPerm = dtPermission.Select("MenuID = 489", null).Length > 0 || UID == 1 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuID = 490", null).Length > 0 || UID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuID = 491", null).Length > 0 || UID == 1 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                return View(dam);
            }
        }
    }
}
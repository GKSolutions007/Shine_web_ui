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
    public class ReportsUpgradedController : Controller
    {
        // GET: ReportsUpgraded
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
                bool Formhaveanypermission = dtPermission.Select("LocationName = 'Reports' and MenuTree = 10", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "GT8qP3MyjELXy6lQp2MtIA==" });
                }

                Name = !string.IsNullOrEmpty(Name) ? clsEncryptDecrypt.Decrypt(Name) : "";
                string decFormID = !string.IsNullOrEmpty(strFormID) ? clsEncryptDecrypt.Decrypt(strFormID) : "";
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.ID = TranID;
                dam.TransType = TypeID;
                return View(dam);
            }
        }
    }
}
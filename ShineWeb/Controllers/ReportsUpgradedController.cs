using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
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
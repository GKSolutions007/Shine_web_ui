using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class ReportsController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name,string strFormID,string strGpro = null)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {

                Name = !string.IsNullOrEmpty(Name) ? clsEncryptDecrypt.Decrypt(Name) : "";
                string decFormID = !string.IsNullOrEmpty(strFormID) ? clsEncryptDecrypt.Decrypt(strFormID) : "";
                string decProc = !string.IsNullOrEmpty(strGpro) ? clsEncryptDecrypt.Decrypt(strGpro) : "";
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.View = decProc;
                return View(dam);
            }
        }
    }
}
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
    public class FinancialReportsController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string strGpro = null)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("LocationName = 'FinancialReports'", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "NJw417j5+33dQvzLkF6kQQR2MH23u3udf0VFlM3J1COIPCFBv1Cxi9B3lfHjtlWL" });
                }
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
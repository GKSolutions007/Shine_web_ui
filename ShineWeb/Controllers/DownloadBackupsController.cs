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
    public class DownloadBackupsController : Controller
    {
        // GET: DownloadBackups
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuId = 360", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuId = 361", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuId = 362", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.Add = AddPerm;//Upload
                dam.Modify = ModPerm;//Delete
                dam.View = ViewPerm;//Download
                return View(dam);
            }
        }
    }
}
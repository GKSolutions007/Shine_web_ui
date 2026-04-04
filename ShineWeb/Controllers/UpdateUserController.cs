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
    public class UpdateUserController : Controller
    {
        // GET: UpdateUser
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
                string AddPerm = dtPermission.Select("MenuId = 473", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuId = 474", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuId = 475", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuId = 476", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.Add = AddPerm;//Upload
                dam.Modify = ModPerm;//Download
                dam.View = ViewPerm;//View
                dam.Cancel = CanPerm;//Delete
                return View(dam);
            }
        }
    }
}
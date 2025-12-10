using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class UpdateProductLocationController : Controller
    {
        // GET: UpdateProductLocation
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                
                Name = clsEncryptDecrypt.Decrypt(Name);
                ViewData["FormName"] = Name;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                return View(dam);
            }
        }
    }
}
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class ShinecodedataController : Controller
    {
        // GET: Shinecodedata
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                ViewData["FormName"] = Name;
                ViewData["FormID"] = strFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = strFormID;                
                return View(dam);
            }
        }
    }
}
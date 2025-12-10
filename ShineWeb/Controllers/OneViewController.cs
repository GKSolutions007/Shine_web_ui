using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class OneViewController : Controller
    {
        // GET: OneView
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string ID = "0", string PartyType = "0")
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                ViewData["ID"] = ID;
                Name = clsEncryptDecrypt.Decrypt(Name);               
                ViewData["FormName"] = Name;               
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = ID;
                dam.TransType = PartyType;
                return View(dam);
            }
        }
    }
}
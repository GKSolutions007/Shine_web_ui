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
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 299", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "sH+TEIdelWKGNxqaVlmc0mDpErf3b+6xXTQX8LLAeLU=" });
                }
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
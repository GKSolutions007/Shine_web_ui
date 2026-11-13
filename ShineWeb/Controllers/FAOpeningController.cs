using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Data;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class FAOpeningController : Controller
    {
        // GET: FAOpening
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 457 or MenuParentId = 457", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "MN/IEIeYmLCNmXXBR1dPmEbamFXOHPrBeovnqzR6Eco=" });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                string AddPerm = dtPermission.Select("MenuID = 458", null).Length > 0 || UID == 1 ? "1" : "0";
                string EditPerm = dtPermission.Select("MenuID = 459", null).Length > 0 || UID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuID = 460", null).Length > 0 || UID == 1 ? "1" : "0";
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.Add = AddPerm;
                dam.Modify = EditPerm;
                dam.View = ViewPerm;
                return View(dam);
            }
        }
    }
}
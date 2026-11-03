using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Data;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class TaxCompGiftController : Controller
    {
        // NOTE: This controller no longer holds a direct-DB clsBusinessLayer. The view
        // (Views/TaxCompGift/Index.cshtml) loads its grid data straight from the API
        // (taxcompgift/get), so no server-side DB access is needed here.
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string ID = "0", string DepFrom = "0")
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("EncFormID = '" + strFormID + "'", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = Name });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                ViewData["TransType"] = TypeID;
                string AddPerm = dtPermission.Select("MenuName = 'Add " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.TransType = TypeID;
                dam.DependFrom = DepFrom;
                dam.ID = ID;
                return View(dam);
            }
        }
        // SECURITY: the previous Get(FormID, Mode, Name) action executed BL_ExecuteParamSP(Name, ...)
        // where `Name` was the stored-procedure name supplied by the client — allowing arbitrary
        // stored-procedure execution from the browser. It was also dead code (the view calls the
        // API's taxcompgift/get endpoint directly), so it has been removed entirely.
    }
}
using DocumentFormat.OpenXml.Wordprocessing;
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
    public class ProductpricechangeController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string ID = "0", string BranchID = "0")
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                ViewData["FormName"] = Name;
                ViewData["TransType"] = TypeID;
                int nUID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string EnableReturn = dtPermission.Select("MenuName = 'Enable Return Price'", null).Length > 0 ? "1" : "0";
                string EnbleVLSBatch = dtPermission.Select("MenuID IN (535,536,546,547,539)").Length > 0 || nUID == 1 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = ID;
                dam.TransType = TypeID;
                dam.EnableReturnPrice = EnableReturn;
                dam.Modify = EnbleVLSBatch;
                dam.PartyID = BranchID;
                return View(dam);
            }
        }
    }
}
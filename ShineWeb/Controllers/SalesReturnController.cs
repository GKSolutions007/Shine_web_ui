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
    public class SalesReturnController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string TransVariantID = "0", string PartyID = "0")
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
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name.Replace("Sales","Saleable");
                ViewData["FormID"] = decFormID;
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 ? "1" : "0";
                string EnbBranch = dtPermission.Select("MenuName = 'Enable Branch in Transactions'", null).Length > 0 ? "1" : "0";
                string EnableReturn = dtPermission.Select("MenuName = 'Enable Return Price'", null).Length > 0 ? "1" : "0";
                string EnabSave = decFormID == "16" ? dtPermission.Select("MenuID = 257", null).Length > 0 ? "1" : "0" :
                     dtPermission.Select("MenuID = 317", null).Length > 0 ? "1" : "0";
                string editprice = decFormID == "16" ? dtPermission.Select("MenuID = 322", null).Length > 0 ? "1" : "0" :
                     dtPermission.Select("MenuID = 323", null).Length > 0 ? "1" : "0";
                string DrftMod = dtPermission.Select("MenuID = 380", null).Length > 0 ? "1" : "0";
                string DrftCan = dtPermission.Select("MenuID = 381", null).Length > 0 ? "1" : "0";


                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name.Replace("Sales", "Saleable");
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.FormID = decFormID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                dam.EnableReturnPrice = EnableReturn;
                dam.EnableSave = EnabSave;
                dam.EnablePriceEditInTransaction = editprice;
                dam.TransVariantID = TransVariantID;
                dam.PartyID = PartyID;
                dam.DraftModify = DrftMod;
                dam.DraftCancel = DrftCan;
                return View(dam);
            }
        }
    }
}
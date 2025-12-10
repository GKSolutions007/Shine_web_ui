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
    public class PurchaseReturnController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                //Name = "Purchase Return";
                //TranID = "0";
                //TypeID = "0";
                Name = clsEncryptDecrypt.Decrypt((Name));//HttpUtility.UrlDecode
                TypeID = clsEncryptDecrypt.Decrypt((TypeID));
                TranID = clsEncryptDecrypt.Decrypt((TranID));
                string decFormID = clsEncryptDecrypt.Decrypt((strFormID));
                ViewData["FormName"] = Name;
                ViewData["FormID"] =  decFormID;//"0";//
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 ? "1" : "0";
                string EnbBranch = dtPermission.Select("MenuName = 'Enable Branch in Transactions'", null).Length > 0 ? "1" : "0";
                string EnableReturn = dtPermission.Select("MenuName = 'Enable Return Price'", null).Length > 0 ? "1" : "0";
                string EnabSave = dtPermission.Select("MenuID = 255", null).Length > 0 ? "1" : "0";
                string editprice = dtPermission.Select("MenuID = 320", null).Length > 0 ? "1" : "0";
                string DrftMod = dtPermission.Select("MenuID = 384", null).Length > 0 ? "1" : "0";
                string DrftCan = dtPermission.Select("MenuID = 385", null).Length > 0 ? "1" : "0";

                SingleMasterModel dam = new SingleMasterModel();
                dam.FormID = "12";
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                dam.EnableReturnPrice = EnableReturn;
                dam.EnableSave = EnabSave;
                dam.EnablePriceEditInTransaction = editprice;
                dam.DraftModify = DrftMod;
                dam.DraftCancel = DrftCan;
                return View(dam);
            }
        }
    }
}
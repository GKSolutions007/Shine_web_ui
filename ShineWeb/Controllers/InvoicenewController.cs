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
    public class InvoicenewController : Controller
    {
        // GET: Invoicenew
        clsBusinessLayer objBL = new clsBusinessLayer();

        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID, string TransVariantID = "0", string PartyID = "0")
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int nUID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 223 or MenuParentId = 223", null).Length > 0;
                if (!Formhaveanypermission && nUID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "KUGYxS+KhoQB3/Yrx1I0cQ==" });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 || nUID == 1 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 || nUID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 || nUID == 1 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 || nUID == 1 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 || nUID == 1 ? "1" : "0";
                string EnbBranch = nUID == 1 ? "0" : dtPermission.Select("MenuID = 221", null).Length > 0 ? "1" : "0";
                string EnabSave = dtPermission.Select("MenuID = 256", null).Length > 0 || nUID == 1 ? "1" : "0";
                string editprice = dtPermission.Select("MenuID = 321", null).Length > 0 || nUID == 1 ? "1" : "0";
                string DrftMod = dtPermission.Select("MenuID = 388", null).Length > 0 || nUID == 1 ? "1" : "0";
                string DrftCan = dtPermission.Select("MenuID = 389", null).Length > 0 || nUID == 1 ? "1" : "0";
                string EnbPaid = dtPermission.Select("MenuID = 481", null).Length > 0 || nUID == 1 ? "1" : "0";
                string OTPerm = dtPermission.Select("MenuID = 523", null).Length > 0 || nUID == 1 ? "1" : "0";
                string QTNPerm = dtPermission.Select("MenuID = 522", null).Length > 0 || nUID == 1 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                dam.EnableSave = EnabSave;
                dam.EnablePriceEditInTransaction = editprice;
                dam.TransVariantID = TransVariantID;
                dam.PartyID = PartyID;
                dam.DraftModify = DrftMod;
                dam.DraftCancel = DrftCan;
                dam.EnablePaid = EnbPaid;
                dam.CrossTran1 = QTNPerm;
                dam.CrossTran2 = OTPerm;
                return View(dam);
            }
        }

    }
}
using ShineWeb.BuisnessLayer;
using ShineWeb.Helpers;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class PurchaseBillController : SecuredController
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            // Centralised login + permission checks (see SecuredController).
            var loginGuard = RequireLogin();
            if (loginGuard != null) return loginGuard;

            var permGuard = RequireMenuPermission(131, "Vd++rU8QQpt1lN1iIJW1a/K0VGZeYK0pqK2Sc7MnuHQ=");
            if (permGuard != null) return permGuard;

            Name = clsEncryptDecrypt.Decrypt(Name);
            TypeID = clsEncryptDecrypt.Decrypt(TypeID);
            TranID = clsEncryptDecrypt.Decrypt(TranID);
            string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
            ViewData["FormName"] = Name;
            ViewData["FormID"] = decFormID;

            var dtPermission = Permissions;
            bool isSuper = IsSuperUser;

            string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 || isSuper ? "1" : "0";
            string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 || isSuper ? "1" : "0";
            string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 || isSuper ? "1" : "0";
            string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 || isSuper ? "1" : "0";
            string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 || isSuper ? "1" : "0";
            // Note: branch toggle intentionally returns "0" for the superuser (original behaviour).
            string EnbBranch = isSuper ? "0" : dtPermission.Select("MenuID = " + PermissionMenuIds.EnableBranch, null).Length > 0 ? "1" : "0";
            string EnabSave = HasMenuId(PermissionMenuIds.PurchaseEnableSave) ? "1" : "0";
            string editprice = HasMenuId(PermissionMenuIds.PurchaseEditPrice) ? "1" : "0";
            string DrftMod = HasMenuId(PermissionMenuIds.PurchaseDraftModify) ? "1" : "0";
            string DrftCan = HasMenuId(PermissionMenuIds.PurchaseDraftCancel) ? "1" : "0";
            string EnbPaid = HasMenuId(PermissionMenuIds.EnablePaid) ? "1" : "0";
            string POPerm = HasMenuId(PermissionMenuIds.PurchaseOrderCrossTran) ? "1" : "0";

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
            dam.DraftModify = DrftMod;
            dam.DraftCancel = DrftCan;
            dam.EnablePaid = EnbPaid;
            dam.CrossTran1 = POPerm;
            return View(dam);
        }
    }
}

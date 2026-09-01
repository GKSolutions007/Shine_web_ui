using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace ShineWeb.Controllers
{
    public class ProductMasterController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID,string TypeID,string TranID,string ID = "0",string DepFrom = "0")
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 110 or MenuParentId = 110", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "dFLU9MS0CpfVS5wW5G17EQ==" });
                }
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                ViewData["TransType"] = TypeID;
                string AddPerm = dtPermission.Select("MenuName = 'Add " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 || UID == 1 ? "1" : "0";
                string EnableReturn = dtPermission.Select("MenuName = 'Enable Return Price'", null).Length > 0 || UID == 1 ? "1" : "0";
                string EnblTPrice = dtPermission.Select("MenuID = 297", null).Length > 0 || UID == 1 ? "1" : "0";
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.Variant = VarPerm;
                dam.View = ViewPerm;
                dam.EnableReturnPrice = EnableReturn;
                dam.ID = ID;
                dam.TransType = TypeID;
                dam.EnableUpdateTransPrice = EnblTPrice;
                dam.DependFrom = DepFrom;
                return View(dam);
            }
        }
    }
}
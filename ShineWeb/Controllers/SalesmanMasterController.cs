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
    public class SalesmanMasterController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuName = 'Add " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                DataRow[] dr1 = dtPermission.Select("MenuName = '" + Name + "'", null);
                string encMenuID = "";
                if (dr1.Length > 0)
                {
                    encMenuID = Url.Encode(dr1[0].ItemArray[9].ToString());
                }
                string EncTypeID = Url.Encode("jJOtHsRVwYECOhoiBc69dA==");//default 0
                string EncTranID = Url.Encode("jJOtHsRVwYECOhoiBc69dA==");//default 0
                string url = "";
                DataRow[] drrSMGroup = dtPermission.Select("MenuID = 50");// Salesman Group
                if (drrSMGroup.Length > 0)
                {
                    string main = Session["url"].ToString();
                    string RouteName = (drrSMGroup[0].ItemArray[5].ToString());
                    string DepName = Url.Encode(drrSMGroup[0].ItemArray[10].ToString());
                    string DepFormID = Url.Encode(drrSMGroup[0].ItemArray[11].ToString());
                    url = main + RouteName + "?name=" + DepName + "&strFormID=" + DepFormID + "&TypeID=" + EncTypeID + "&TranID=" + EncTypeID + "&isDepend=1&ParMID=" + encMenuID;
                }
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.ChildURL1 = url;
                return View(dam);
            }
        }
    }
}
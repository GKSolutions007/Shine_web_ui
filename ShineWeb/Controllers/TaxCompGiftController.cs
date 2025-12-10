using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Script.Serialization;

namespace ShineWeb.Controllers
{
    public class TaxCompGiftController : Controller
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
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.FormID = decFormID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                return View(dam);
            }
        }
        public JsonResult Get(string FormID, string Mode, string Name)
        {
            DataTable DDT = objBL.BL_ExecuteParamSP(Name,  Mode, 0, null);
            //System.Web.Script.Serialization.JavaScriptSerializer serializer = new System.Web.Script.Serialization.JavaScriptSerializer();
            string JSONresult;
            JSONresult = JsonConvert.SerializeObject(DDT);
            //string sonj = DataTableToJSONWithJavaScriptSerializer(DDT);
            //List<SingleMasterModel> list = new List<SingleMasterModel>();
            //for (int i = 0; i < DDT.Rows.Count; i++)
            //{
            //    list.Add(new SingleMasterModel
            //    {
            //        ID = DDT.Rows[i]["ID"].ToString(),
            //        Name = DDT.Rows[i]["Name"].ToString(),
            //        Value = DDT.Rows[i]["Value"].ToString(),
            //        Active = DDT.Rows[i]["Active"].ToString(),
            //    });
            //}
            //var jsonData = new
            //{
            //    data = from users in list
            //           select
            //               new
            //               {
            //                   ProspID = users.ID,
            //                   ClientName = users.Name,
            //                   ClientMobNo = users.Value,
            //                   ClientEmail = users.Active                               
            //               },

                           
            //};
            return Json(JSONresult, JsonRequestBehavior.AllowGet);
        }
        public string DataTableToJSONWithJavaScriptSerializer(DataTable table)
        {
            JavaScriptSerializer jsSerializer = new JavaScriptSerializer();
            List<Dictionary<string, object>> parentRow = new List<Dictionary<string, object>>();
            Dictionary<string, object> childRow;
            foreach (DataRow row in table.Rows)
            {
                childRow = new Dictionary<string, object>();
                foreach (DataColumn col in table.Columns)
                {
                    childRow.Add(col.ColumnName, row[col]);
                }
                parentRow.Add(childRow);
            }
            return jsSerializer.Serialize(parentRow);
        }
    }
}
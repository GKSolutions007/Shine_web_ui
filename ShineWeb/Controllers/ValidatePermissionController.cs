using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Http.Headers;
using System.Net.Http;
using System.Web;
using System.Web.Mvc;
using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
namespace ShineWeb.Controllers
{
    public class ValidatePermissionController : Controller
    {
        DataTable dtRes,dtParent, dtPermission, dtReportParent, dtReportPermission, dtAppconfig, dtCompReg = new DataTable();
        // GET: ValidatePermission
        clsBusinessLayer bl = new clsBusinessLayer();
        public ActionResult Index(string ID)
        {
            string APIurl = Session["APIurl"].ToString();
            HttpClient _client = new HttpClient();
            _client.BaseAddress = new Uri(APIurl);// APILink from app config
            _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
           
            HttpResponseMessage result = _client.GetAsync("validatepermissions?UID="+ ID).Result;
            if (result.IsSuccessStatusCode)
            {
                var jsonString = result.Content.ReadAsStringAsync();

                string json = JsonConvert.DeserializeObject<string>(jsonString.Result);
                DataSet dtResult = JsonConvert.DeserializeObject<DataSet>(json);
                if(dtResult.Tables.Count > 0)
                {
                    dtCompReg = dtResult.Tables[0];
                    dtAppconfig = dtResult.Tables[1];
                    dtRes = dtResult.Tables[2];
                    dtParent = dtResult.Tables[3];
                    dtPermission = dtResult.Tables[4];
                    dtReportParent = dtResult.Tables[5];
                    dtReportPermission = dtResult.Tables[6];
                }
            }
            //DataTable dtRes = bl.BL_ExecuteParamSP("uspManageUsers", 4, ID);            
            Session["LoginUserID"] = dtRes.Rows[0][0].ToString();
            Session["LoginUser"] = dtRes.Rows[0][1].ToString();
            Session["RoleID"] = dtRes.Rows[0]["RoleID"].ToString();
            Session["NavBarVisible"] = "UserPermission";
            //DataTable dtParent = bl.BL_ExecuteParamSP("uspMenuPermission", 1, null);
            //DataTable dtPermission = bl.BL_ExecuteParamSP("uspMenuPermission", 2, Convert.ToInt32(Session["RoleID"]), Convert.ToInt32(Session["LoginUserID"]));//Convert.ToInt32(Session["LoginUserID"])

            //DataTable dtReportParent = bl.BL_ExecuteParamSP("uspReportPermission", 1, Convert.ToInt32(Session["RoleID"]));
            //DataTable dtReportPermission = bl.BL_ExecuteParamSP("uspReportPermission", 2, Convert.ToInt32(Session["RoleID"]), Convert.ToInt32(Session["LoginUserID"]));//Convert.ToInt32(Session["LoginUserID"])
            //DataTable dtAppconfig = bl.BL_ExecuteParamSP("uspManageApplicationConfig", 1);
            //DataTable dtCompReg = bl.BL_ExecuteSqlQuery("select * from tblCompanyRegistration");
            Session["ConfirmFocus"] = dtAppconfig.Rows[0]["Confirmpopup"].ToString();
            Session["ClearConfirmFocus"] = dtAppconfig.Rows[0]["ClearConfirmpopup"].ToString();
            Session["CloseConfirmFocus"] = dtAppconfig.Rows[0]["CloseConfirmpopup"].ToString();
            Session["AllowPrint"] = dtAppconfig.Rows[0]["AllowPrint"].ToString();
            Session["ThemeID"] = dtAppconfig.Rows[0]["ThemeID"].ToString();
            Session["Showallstatus"] = dtAppconfig.Rows[0]["Showallstatus"].ToString();
            Session["DecimalValues"] = dtAppconfig.Rows[0]["DecimalValues"].ToString();
            Session["DefaultBranch"] = dtAppconfig.Rows[0]["DefaultBranch"].ToString();
            Session["RoundoffType"] = dtAppconfig.Rows[0]["Roundoff"].ToString();// 1 - nearest,2-lowest,3-heighest
            Session["RoundoffValue"] = dtAppconfig.Rows[0]["RoundoffValue"].ToString();
            Session["EnableReturnPrice"] = dtAppconfig.Rows[0]["EnableReturnPrice"].ToString();
            Session["VisaPern"] = dtAppconfig.Rows[0]["VisaPern"].ToString();
            Session["DefaultCustID"] = dtAppconfig.Rows[0]["DefaultCustID"].ToString();
            Session["SelectinvoiceinSR"] = dtAppconfig.Rows[0]["SelectinvoiceinSR"].ToString();
            Session["InvoiceStockOnlyProduct"] = dtAppconfig.Rows[0]["InvoiceStockOnlyProduct"].ToString();
            Session["FilterDateType"] = dtAppconfig.Rows[0]["FilterDate"].ToString();
            Session["PurchaseOneView"] = dtAppconfig.Rows[0]["PurchaseOneView"].ToString();
            Session["SalesOneView"] = dtAppconfig.Rows[0]["SalesOneView"].ToString();

            Session["SelectinvoiceinSR"] = dtAppconfig.Rows[0]["SelectinvoiceinSR"].ToString();
            Session["InvoiceStockOnlyProduct"] = dtAppconfig.Rows[0]["InvoiceStockOnlyProduct"].ToString();
            Session["FilterDateType"] = dtAppconfig.Rows[0]["FilterDate"].ToString();
            Session["PurchaseOneView"] = dtAppconfig.Rows[0]["PurchaseOneView"].ToString();
            Session["SalesOneView"] = dtAppconfig.Rows[0]["SalesOneView"].ToString();           
            Session["ItemsperPage"] = dtAppconfig.Rows[0]["ItemsperPage"].ToString();
            Session["Invoiceallowduplicateitem"] = dtAppconfig.Rows[0]["Invoiceallowduplicateitem"].ToString();
            Session["WriteoffAmt"] = dtAppconfig.Rows[0]["WriteoffAmt"].ToString();
            Session["RetainDate"] = dtAppconfig.Rows[0]["RetainDate"].ToString();
            Session["BeatMandatoryinCustomer"] = dtAppconfig.Rows[0]["BeatMandatoryinCustomer"].ToString();
            Session["DraftAutoSaveTimeInterval"] = dtAppconfig.Rows[0]["DraftAutoSaveTimeInterval"].ToString();
            
            Session["F_SD"] = Convert.ToDateTime(dtCompReg.Rows[0]["F_SD"].ToString()).ToString("yyyy-MM-dd");//,dtCompReg.Rows[0]["F_SD"].ToString();
            Session["F_ED"] = Convert.ToDateTime(dtCompReg.Rows[0]["F_ED"].ToString()).ToString("yyyy-MM-dd");//dtCompReg.Rows[0]["F_ED"].ToString();
            Session["CompanyCode"] = dtCompReg.Rows[0]["CompanyCode"].ToString();
            Session["StateID"] = dtCompReg.Rows[0]["StateID"].ToString();
            Session["dtParent"] = dtParent;
            Session["dtPermission"] = dtPermission;
            Session["dtReportParent"] = dtReportParent;
            Session["dtReportPermission"] = dtReportPermission;
            Session["dtCompany"] = dtCompReg;
            return RedirectToAction("Index", "Home");
        }
    }
}
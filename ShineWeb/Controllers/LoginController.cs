//using BuinessLayer;
using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Web;
using System.Web.Mvc;
using static System.Net.WebRequestMethods;

namespace ShineWeb.Controllers
{
    public class LoginController : Controller
    {
        string sdfk = "";
        //clsBusinessLayer bl = new clsBusinessLayer();
        //ShineWeb.BuisnessLayer bl = new ShineWeb.BuisnessLayer();
        BuisnessLayer.clsBusinessLayer bl = new BuisnessLayer.clsBusinessLayer();
        // GET: Login
        public ActionResult Index(string Msg=null)
        {
            //272,273,274,275,276
            //string plain = "378,379,380,381,382,383,384,385,386,387,388,389,390,391,392,393";
            //string[] strplain = plain.Split(',');
            //string EncVal = "";
            //for (int i = 0; strplain.Length > i; i++)
            //{
            //    string val = strplain[i].ToString();
            //    EncVal += clsEncryptDecrypt.Encrypt(val) + "\n";
            //}

            string nv = Convert.ToString(Session["NavBarVisible"]);
            string userAgent = Request.UserAgent;
            bl.BL_WriteErrorMsginLog("Login", "Browser Type", userAgent);
            string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
                //"http://202.21.32.54/sampapi/api/";
            // HttpContext.Request.Url.AbsoluteUri.ToString();
            //APIurl = "https://gksapp.in/shinewebapi/api/";
            //APIurl = "http://localhost:44396/api/";
            Session["APIurl"] = APIurl;
            HttpContext.Session.Add("APIurl", APIurl);

            string url = HttpContext.Request.Url.AbsoluteUri.ToString();
            char IsSlash = url[url.Length - 1];
            //string addslahinlast = IsSlash == '/' ? url : url + "/";
            Session["url"] = IsSlash == '/' ? url : url + "/";
            Session["DeviceType"] = Request.Browser.IsMobileDevice ? "0" : "1";
            Session["DeviceOS"] = GetOperatingSystem(userAgent);
            if (string.IsNullOrEmpty(nv))
            {
                Session["NavBarVisible"] = "LogOn";
            }
            HttpClient _client = new HttpClient();            
            _client.BaseAddress = new Uri(APIurl);// APILink from app config
            _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            DataTable dataTable = new DataTable();
            HttpResponseMessage result = _client.GetAsync("companyregistration").Result;
            if (result.IsSuccessStatusCode)
            {
                var jsonString = result.Content.ReadAsStringAsync();
                
                string json = JsonConvert.DeserializeObject<string>(jsonString.Result);
                DataTable dtResult = JsonConvert.DeserializeObject<DataTable>(json);                
                if (dtResult.Rows.Count > 0)
                {
                    dataTable = dtResult;
                }
                //DataTable dtResult = JsonConvert.DeserializeObject<DataTable>(jsonString.Result);
                //if(dtResult.Rows.Count > 0)
                //{
                //    dataTable = dtResult;
                //}
            }

                LoginModel model = new LoginModel();
            //DataTable dataTable = bl.BL_ExecuteSqlQuery("select * from tblCompanyRegistration");            
            string CompName = dataTable.Rows[0]["CompanyName"].ToString();
            string FSDYEAR =  Convert.ToDateTime(dataTable.Rows[0]["F_SD"].ToString()).ToString("yyyy");
            string FSDMONTH = Convert.ToDateTime(dataTable.Rows[0]["F_SD"].ToString()).ToString("MMM").ToUpper();
            string CompCode = dataTable.Rows[0]["CompanyCode"].ToString() + "_" + FSDMONTH+ FSDYEAR;
            model.CompanyCode = CompCode;
            model.CompanyName = CompName;
            model.CompanyFSD = FSDYEAR;
            ViewData["companycode"] = CompCode;
            ViewData["companyname"] = CompName;
            Session["companyname"] = CompName;
            ViewData["AlertMessage"] = Msg;
            return View(model);
        }
        [HttpGet]
        public JsonResult SendMail(string ToMail,string ID)
        {
            string url = Session["url"].ToString();
            char isslash = url[url.Length - 1];
            url = isslash == '/' ? url : url + "/";
            string ALink = url + "Login/AACM?AAlk=" + Url.Encode(clsEncryptDecrypt.Encrypt(ID));
            bool Issend = bl.SendEmail("Shine Activation mail", "Hii user, your activation link given below. Click the link to activate your account.\n" + ALink, ToMail);
            return Json(Issend ? 0 : 1, JsonRequestBehavior.AllowGet);
        }
        private string GetOperatingSystem(string userAgent)
        {
            if (string.IsNullOrEmpty(userAgent))
                return "Unknown";

            userAgent = userAgent.ToLower();

            if (userAgent.Contains("windows nt 10"))//Windows 10 / 11
                return "Windows";
            if (userAgent.Contains("windows nt 6.3"))//Windows 8.1
                return "Windows";
            if (userAgent.Contains("windows nt 6.2"))//Windows 8
                return "Windows";
            if (userAgent.Contains("windows nt 6.1"))//Windows 7
                return "Windows";
            if (userAgent.Contains("mac os x"))
                return "macOS";
            if (userAgent.Contains("android"))
                return "Android";
            if (userAgent.Contains("iphone") || userAgent.Contains("ipad"))
                return "iOS";
            if (userAgent.Contains("linux"))
                return "Linux";

            return "Unknown";
        }
        public ActionResult AACM(string AAlk)
        {
            try
            {
                string msg = "";
                if (!string.IsNullOrEmpty(AAlk))
                {
                    string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
                    string uid =  clsEncryptDecrypt.Decrypt(AAlk);
                    HttpClient _client = new HttpClient();
                    _client.BaseAddress = new Uri(APIurl);// APILink from app config
                    _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    HttpResponseMessage result = _client.GetAsync("activateaccount?UID=" + uid).Result;
                    if (result.IsSuccessStatusCode)
                    {                        
                        // DataTable dtRes = bl.BL_ExecuteParamSP("uspManageUsers", 5, uid);
                        msg = "You Account is Activated. You can Login now.";
                        ViewData["AlertMessage"] = msg;
                    }
                    else
                    {
                        msg = "Account not activated. Try again later.";
                    }
                    return RedirectToAction("Index", "Login",new { Msg = msg });
                }
            }
            catch (Exception ex)
            {
            }
            return View();
        }
        public ActionResult LogOff()
        {
            HttpContext.Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            HttpContext.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Response.Cache.SetNoStore();
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            return RedirectToAction("Index", "Login");
        }
    }
}
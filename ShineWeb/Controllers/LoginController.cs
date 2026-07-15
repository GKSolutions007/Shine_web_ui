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
using System.Web.Security;
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
            //string plain = "Order Taken,No Order,Feedback,Manufacturer Filter,Category Filter,Product Filter";
            //string[] strplain = plain.Split(',');
            //string EncVal = "";
            //for (int i = 0; strplain.Length > i; i++)
            //{
            //    string val = strplain[i].ToString();
            //    EncVal += clsEncryptDecrypt.Encrypt(val) + "\n";
            //}

            string nv = Convert.ToString(Session["NavBarVisible"]);
            string userAgent = Request.UserAgent;
            //bl.BL_WriteErrorMsginLog("Login", "Browser Type", userAgent);
            string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
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
        public ActionResult AAP()
        {
            string nv = Convert.ToString(Session["NavBarVisible"]);
            string userAgent = Request.UserAgent;
            //bl.BL_WriteErrorMsginLog("Login", "Browser Type", userAgent);
            string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
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
            return View();
        }
            [HttpGet]
        public JsonResult SendMail_old(string ToMail,string ID)
        {
            string url = Session["url"].ToString();
            char isslash = url[url.Length - 1];
            url = isslash == '/' ? url : url + "/";
            string ALink = url + "Login/AACM?AAlk=" + Url.Encode(clsEncryptDecrypt.Encrypt(ID));
            bool Issend = bl.SendEmail("Shine Activation mail", "Hii user, your activation link given below. Click the link to activate your account.\n" + ALink, ToMail);
            return Json(Issend ? 0 : 1, JsonRequestBehavior.AllowGet);
        }
        public JsonResult SendMail(string ToMail, string ID)
        {
            string url = Session["url"].ToString();
            char isslash = url[url.Length - 1];
            url = isslash == '/' ? url : url + "/";
            //string ALink = url + "Login/AACM?AAlk=" + Url.Encode(clsEncryptDecrypt.Encrypt(ID));

            //string subject = "Activate Your Account";
            //string body = BuildActivationEmailBody(ALink);

            //bool Issend = bl.SendEmail(subject, body, ToMail); // ensure IsBodyHtml = true inside SendEmail
            string sitelink = Url.Encode(clsEncryptDecrypt.Encrypt(url));
            string EncID = Url.Encode(clsEncryptDecrypt.Encrypt(ID));
            string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
            HttpClient _client = new HttpClient();
            _client.BaseAddress = new Uri(APIurl);// APILink from app config
            _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

            HttpResponseMessage result = _client.GetAsync("signup/sendaam?SiteLink=" + sitelink + "&ToEmailID=" + ToMail + "&ID=" + EncID).Result;
            if (result.IsSuccessStatusCode)
            {
                var jsonString = result.Content.ReadAsStringAsync();
                if (jsonString.Result != null)
                {
                    return Json(jsonString.Result.ToLower() == "true" ? 0 : 1, JsonRequestBehavior.AllowGet);
                }
            }
            return Json(null, JsonRequestBehavior.AllowGet);
        }

        private string BuildActivationEmailBody(string activationLink)
        {
            return $@"
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8' />
<meta name='viewport' content='width=device-width, initial-scale=1.0'/>
</head>
<body style='margin:0;padding:0;background-color:#f4f6f8;font-family:Segoe UI, Arial, sans-serif;'>
  <table role='presentation' width='100%' cellpadding='0' cellspacing='0' style='background-color:#f4f6f8;padding:30px 0;'>
    <tr>
      <td align='center'>
        <table role='presentation' width='480' cellpadding='0' cellspacing='0' style='background-color:#ffffff;border-radius:8px;overflow:hidden;box-shadow:0 2px 8px rgba(0,0,0,0.06);'>
          
          <!-- Header -->
          <tr>
            <td style='background-color:#2563eb;padding:24px 32px;text-align:center;'>
              <span style='color:#ffffff;font-size:20px;font-weight:600;'>Welcome Aboard!</span>
            </td>
          </tr>

          <!-- Body -->
          <tr>
            <td style='padding:32px;'>
              <p style='font-size:16px;color:#1f2937;margin:0 0 16px 0;'>Hi there,</p>
              <p style='font-size:15px;color:#4b5563;line-height:1.6;margin:0 0 24px 0;'>
                Thank you for creating an account with us. To get started, please confirm your email address by activating your account below.
              </p>

              <!-- Button -->
              <table role='presentation' cellpadding='0' cellspacing='0' align='center' style='margin:0 auto 24px auto;'>
                <tr>
                  <td align='center' style='border-radius:6px;background-color:#2563eb;'>
                    <a href='{activationLink}' target='_blank'
                       style='display:inline-block;padding:14px 32px;font-size:15px;font-weight:600;color:#ffffff;text-decoration:none;border-radius:6px;'>
                      Activate Account
                    </a>
                  </td>
                </tr>
              </table>

              <p style='font-size:13px;color:#9ca3af;line-height:1.5;margin:0 0 8px 0;'>
                If the button above doesn't work, please contact our support team for assistance.
              </p>              
            </td>
          </tr>

          <!-- Footer -->
          <tr>
            <td style='background-color:#f9fafb;padding:16px 32px;text-align:center;border-top:1px solid #eef0f2;'>
              <p style='font-size:12px;color:#9ca3af;margin:0;'>&copy; {DateTime.Now.Year} Shine. All rights reserved.</p>
            </td>
          </tr>

        </table>
      </td>
    </tr>
  </table>
</body>
</html>";
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
                    string uid =  clsEncryptDecrypt.Decrypt((AAlk));//HttpUtility.UrlDecode
                    HttpClient _client = new HttpClient();
                    _client.BaseAddress = new Uri(APIurl);// APILink from app config
                    _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));

                    HttpResponseMessage result = _client.GetAsync("activateaccount?UID=" + uid).Result;
                    if (result.IsSuccessStatusCode)
                    {
                        //var jsonString = result.Content.ReadAsStringAsync();
                        //string json = JsonConvert.DeserializeObject<string>(jsonString.Result);
                        //DataTable dtResult = JsonConvert.DeserializeObject<DataTable>(json);
                        // DataTable dtRes = bl.BL_ExecuteParamSP("uspManageUsers", 5, uid);
                        msg = "You Account is Activated. You can Login now.";
                        ViewData["AlertMessage"] = msg;
                    }
                    else
                    {
                        msg = "Account not activated. Try again later.";
                    }
                    return RedirectToAction("AAP", "Login",new { Msg = !result.IsSuccessStatusCode ? msg : null });//Index
                }
            }
            catch (Exception ex)
            {
            }
            return View();
        }
        public ActionResult LogOff()
        {
            string APIurl = clsEncryptDecrypt.Decrypt(ConfigurationManager.AppSettings["apiurl"].ToString());
            HttpClient _client = new HttpClient();
            _client.BaseAddress = new Uri(APIurl);// APILink from app config
            _client.DefaultRequestHeaders.Accept.Add(new MediaTypeWithQualityHeaderValue("application/json"));
            var authcookie = HttpContext.Request.Cookies["AuthToken"];
            if (authcookie != null)
            {
                HttpResponseMessage result = _client.GetAsync("resetlogin?token=" + authcookie.Value).Result;
            }

            HttpContext.Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            HttpContext.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Response.Cache.SetNoStore();
            HttpContext.Response.Cookies.Clear();
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();
            // Sign out Forms Authentication
            FormsAuthentication.SignOut();

            // Expire all cookies
            foreach (string cookieName in Request.Cookies.AllKeys)
            {
                var cookie = new HttpCookie(cookieName)
                {
                    Expires = DateTime.Now.AddDays(-1)
                };

                Response.Cookies.Add(cookie);
            }
            return RedirectToAction("Index", "Login");
        }
    }
}
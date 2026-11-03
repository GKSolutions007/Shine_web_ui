//using BuinessLayer;
using Newtonsoft.Json;
using ShineWeb.BuisnessLayer;
using ShineWeb.Helpers;
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
        //clsBusinessLayer bl = new clsBusinessLayer();
        //ShineWeb.BuisnessLayer bl = new ShineWeb.BuisnessLayer();
        BuisnessLayer.clsBusinessLayer bl = new BuisnessLayer.clsBusinessLayer();
        // GET: Login
        public ActionResult Index(string Msg=null)
        {
            //string plain = "546,547";// "Van Loading Slip,Create Van Loading Slip,View Van Loading Slip";
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
            string APIurl = ApiClient.ApiUrl; // decrypted once, cached
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
            DataTable dataTable = new DataTable();
            HttpResponseMessage result = ApiClient.Shared.GetAsync("companyregistration").Result;
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
            string APIurl = ApiClient.ApiUrl; // decrypted once, cached
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
            bool Issend = false;
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

            HttpResponseMessage result = ApiClient.Shared.GetAsync("signup/sendaam?SiteLink=" + sitelink + "&ToEmailID=" + ToMail + "&ID=" + EncID).Result;
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
                    string uid =  clsEncryptDecrypt.Decrypt((AAlk));//HttpUtility.UrlDecode

                    HttpResponseMessage result = ApiClient.Shared.GetAsync("activateaccount?UID=" + uid).Result;
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
                bl.BL_WriteErrorMsginLog("Login", "AACM", ex.Message);
                return RedirectToAction("AAP", "Login",
                    new { Msg = "Account activation failed. Please try again later." });
            }
            return View();
        }
        public ActionResult LogOff()
        {
            var authcookie = HttpContext.Request.Cookies["AuthToken"];
            var Sessionidcookie = HttpContext.Request.Cookies["ASP.NET_SessionId"];
            if (authcookie != null)
            {
                try
                {
                    // Send the token in request headers (not the query string) so it does not
                    // leak into server access logs, browser history, or referrer headers.

                    var req = new HttpRequestMessage(HttpMethod.Get, "resetlogin");
                    req.Headers.Add("X-Auth-Token", authcookie.Value);
                    if (Sessionidcookie != null)
                        req.Headers.Add("X-Session-Id", Sessionidcookie.Value);
                    HttpResponseMessage result = ApiClient.Shared.SendAsync(req).Result;
                    if(result != null)
                    {

                    }
                }
                catch (Exception ex)
                {
                    bl.BL_WriteErrorMsginLog("Login", "LogOff", ex.Message);
                }
            }

            HttpContext.Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
            HttpContext.Response.Cache.SetCacheability(HttpCacheability.NoCache);
            HttpContext.Response.Cache.SetNoStore();
            HttpContext.Response.Cookies.Clear();
            Session.Clear();
            Session.Abandon();
            Session.RemoveAll();

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
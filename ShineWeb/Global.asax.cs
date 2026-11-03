using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Optimization;
using System.Web.Routing;

namespace ShineWeb
{
    public class MvcApplication : System.Web.HttpApplication
    {
        protected void Application_Start()
        {
            AreaRegistration.RegisterAllAreas();
            FilterConfig.RegisterGlobalFilters(GlobalFilters.Filters);
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }

        // Global safety net for any unhandled MVC exception: logs it and routes the user to
        // the friendly Error page instead of a raw ASP.NET error screen.
        protected void Application_Error()
        {
            Exception ex = Server.GetLastError();
            try
            {
                var bl = new ShineWeb.BuisnessLayer.clsBusinessLayer();
                bl.BL_WriteErrorMsginLog("Global", "Application_Error", ex != null ? ex.ToString() : "null");
            }
            catch
            {
                // never let logging failure mask the original error
            }

            Server.ClearError();
            Response.Redirect("~/Error/Index?Msg=" +
                HttpUtility.UrlEncode("An unexpected error occurred. Please try again or contact support."));
        }
    }
}

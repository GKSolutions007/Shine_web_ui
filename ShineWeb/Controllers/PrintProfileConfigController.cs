using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class PrintProfileConfigController : Controller
    {
        // GET: PrintProfileConfig
        public ActionResult Index()
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                int UID = Convert.ToInt32(Session["LoginUserID"]);
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                bool Formhaveanypermission = dtPermission.Select("MenuId = 301", null).Length > 0;
                if (!Formhaveanypermission && UID != 1)
                {
                    return RedirectToAction("nopermission", "Home",
                        new { emanmrofnoissimerpon = "cec2eFi8hN85q9BakQKHipmOFIPE5DmYEpGKPYec+Yb3Ytf9/q8VQld/9eJZSTCu" });
                }
                return View();
            }
        }
    }
}
using System;
using System.Collections.Generic;
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
                return View();
            }
        }
    }
}
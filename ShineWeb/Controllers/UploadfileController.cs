using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class UploadfileController : Controller
    {
        // GET: Uploadfile
        public ActionResult Index()
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                ViewData["FormName"] = "Upload File";
                return View();
            }
        }
    }
}
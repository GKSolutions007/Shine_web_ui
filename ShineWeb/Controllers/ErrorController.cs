using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class ErrorController : Controller
    {
        // GET: Error
        public ActionResult Index(string Msg)
        {
            ViewData["ErrorMsg"] = Msg;
            return View();
        }
    }
}
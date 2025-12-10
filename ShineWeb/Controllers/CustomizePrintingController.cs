using DocumentFormat.OpenXml.Bibliography;
using DocumentFormat.OpenXml.InkML;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using ShineWeb.Printing;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class CustomizePrintingController : Controller
    {
        public IDictionary<string, string> _mappings = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);
        clsBusinessLayer objBL = new clsBusinessLayer();
        // GET: CustomizePrinting
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = "Customize Print";// clsEncryptDecrypt.Decrypt(Name);
                string decFormID = "0";// clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                return View(dam);
            }
        }
        [HttpGet]
        public JsonResult PDFGenerate(string DocID, string TransID = "", string ConfigID = "", string PrinterID = "", string TransName = "")
        {
            string pdfFilePath = System.Configuration.ConfigurationManager.AppSettings["SupportFilePath"] + "\\PDF\\";
            string FileLocationwithname = "";

            if (!string.IsNullOrEmpty(pdfFilePath))
            {                
                DataTable dtTName = objBL.BL_ExecuteSqlQuery("select TransName from tblTransName where Id = " + TransID);

                PrintBase PB = new PrintBase { GKS_BL = objBL };
                int Ident = 0; int nTransrange = 0;
                nTransrange = objBL.BL_nValidation(DocID);
                DataTable dtID = objBL.BL_ExecuteParamSP("uspGetTransIdentforPrint", TransID, nTransrange);
                if (dtID.Rows.Count > 0)
                {
                    Ident = objBL.BL_nValidation(dtID.Rows[0][0]);
                }
                if (Convert.ToInt32(Ident) > 0)
                {
                    if (!string.IsNullOrEmpty(ConfigID.ToString()))
                    {
                        FileLocationwithname = PB.SaveAsPDF(Convert.ToInt32(TransID), Convert.ToInt32(Ident), Dns.GetHostName(), "", Convert.ToInt32(ConfigID));
                    }
                }
                else
                {
                    return Json("", JsonRequestBehavior.AllowGet);
                }
            }            
            string pathwithFileName = FileLocationwithname;
            string exts = Path.GetExtension(pathwithFileName);
            string ctype = GetMimeType(exts);
            string fileName = Path.GetFileName(pathwithFileName);            
            return Json(fileName, JsonRequestBehavior.AllowGet);            
        }
        public string GetMimeType(string extension)
        {
            if (extension == null)
            {
                throw new ArgumentNullException("extension");
            }

            if (!extension.StartsWith("."))
            {
                extension = "." + extension;
            }
            string mime;

            return _mappings.TryGetValue(extension, out mime) ? mime : "application/octet-stream";
        }
    }
}
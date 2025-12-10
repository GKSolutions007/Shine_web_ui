using DocumentFormat.OpenXml.InkML;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using ShineWeb.Printing;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class InvoiceController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public IDictionary<string, string> _mappings = new Dictionary<string, string>(StringComparer.InvariantCultureIgnoreCase);
        
        public ActionResult Index(string Name, string strFormID, string TypeID, string TranID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                TypeID = clsEncryptDecrypt.Decrypt(TypeID);
                TranID = clsEncryptDecrypt.Decrypt(TranID);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string AddPerm = dtPermission.Select("MenuName = 'Create " + Name + "'", null).Length > 0 ? "1" : "0";
                string ModPerm = dtPermission.Select("MenuName = 'Modify " + Name + "'", null).Length > 0 ? "1" : "0";
                string ViewPerm = dtPermission.Select("MenuName = 'View " + Name + "'", null).Length > 0 ? "1" : "0";
                string CanPerm = dtPermission.Select("MenuName = 'Cancel " + Name + "'", null).Length > 0 ? "1" : "0";
                string VarPerm = dtPermission.Select("MenuName = 'Variant " + Name + "'", null).Length > 0 ? "1" : "0";
                string EnbBranch = dtPermission.Select("MenuID = 221", null).Length > 0 ? "1" : "0";
                string EnabSave = dtPermission.Select("MenuID = 256", null).Length > 0 ? "1" : "0";
                string editprice = dtPermission.Select("MenuID = 321", null).Length > 0 ? "1" : "0";
                string DrftMod = dtPermission.Select("MenuID = 388", null).Length > 0 ? "1" : "0";
                string DrftCan = dtPermission.Select("MenuID = 389", null).Length > 0 ? "1" : "0";

                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                dam.ID = TranID;
                dam.TransType = TypeID;
                dam.Add = AddPerm;
                dam.Modify = ModPerm;
                dam.View = ViewPerm;
                dam.Cancel = CanPerm;
                dam.Variant = VarPerm;
                dam.EnableBranch = EnbBranch;
                dam.EnableSave = EnabSave;
                dam.EnablePriceEditInTransaction = editprice;
                dam.DraftModify = DrftMod;
                dam.DraftCancel = DrftCan;
                return View(dam);
            }
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
        [HttpGet]
        public JsonResult PDFGenerate(string DocID, string TransID = "", string ConfigID = "", string PrinterID = "", string TransName = "")
        {
            string pdfFilePath = System.Configuration.ConfigurationManager.AppSettings["SupportFilePath"]+"\\PDF\\";
            string FileLocationwithname = "";

            if (!string.IsNullOrEmpty(pdfFilePath))
            {
                //DownloadFile df = new DownloadFile();
                // df.DownloadFiles(@"E:\Print Document\PrintSpool\full.pdf");
                //GKSDownload gksd = new GKSDownload();

                //DownloadFiles(@"E:\Print Document\PrintSpool\half.pdf");
                //tpm.TransName = "Invoice";
                //ConfigID = "1";
                DataTable dtTName = objBL.BL_ExecuteSqlQuery("select TransName from tblTransName where Id = " + TransID);

                PrintBase PB = new PrintBase { GKS_BL = objBL };
                //DataTable dt = objBL.BL_ExecuteParamSP("uspgetID", dtTName.Rows[0][0].ToString(), DocID);
                if (Convert.ToInt32(DocID) > 0)
                {
                    if (!string.IsNullOrEmpty(ConfigID.ToString()))
                    {
                        FileLocationwithname = PB.SaveAsPDF(Convert.ToInt32(TransID), Convert.ToInt32(DocID), Dns.GetHostName(), "", Convert.ToInt32(ConfigID));
                        //PB.PrintAndPreview(Convert.ToInt32(TransID), Convert.ToInt32(dt.Rows[0][0].ToString()), true, false, false, "");

                    }
                }
            }
            //Build the File Path.
            //string path = Server.MapPath("~/Files/") + fileName;
            //string path = @"E:\Print Document\PrintSpool\" + fileName;

            //if (!string.IsNullOrEmpty(FileLocationwithname))
            //{
            string pathwithFileName = FileLocationwithname;// @"E:\Print Document\PrintSpool\half.pdf";
                                                           //Read the File data into Byte Array.
            byte[] bytes = System.IO.File.ReadAllBytes(pathwithFileName);
            string exts = Path.GetExtension(pathwithFileName);
            string ctype = GetMimeType(exts);
            string fileName = Path.GetFileName(pathwithFileName);
            //string pth = pathwithFileName.Replace(Filena, "");
            //Send the File to Download.
            //return File(bytes, "application/pdf", fileName);
            //Directory.Delete(pth, true);

            //return File(bytes, ctype, fileName);
            return Json(fileName, JsonRequestBehavior.AllowGet);
            //}
            //else
            //{
            //    return File(null,"");
            //}
        }
        public FileResult ExportData(string Fname)
        {
            var sDocument = Fname;
            string pdfFilePath = AppDomain.CurrentDomain.BaseDirectory + @"\PDF\"+ Fname;          
            byte[] fileBytes = System.IO.File.ReadAllBytes(pdfFilePath);
            string fileName = Path.GetFileName(Fname);
            if (System.IO.File.Exists(Fname))
            {
                System.IO.File.Delete(Fname);
            }
            return File(fileBytes, "application/pdf", fileName);
        }
        public ActionResult DownloadFile(string Fname)
        {
            string pdfFilePath = AppDomain.CurrentDomain.BaseDirectory + @"\PDF\" + Fname;
            byte[] fileBytes = System.IO.File.ReadAllBytes(pdfFilePath);

            Response.Clear();
            Response.AddHeader("Content-Disposition", "attachment; filename="+ Fname);
            Response.AddHeader("Content-Length", fileBytes.Length.ToString());
            Response.ContentType = "application/octet-stream";
            Response.BinaryWrite(fileBytes);
            Response.End();

            return new EmptyResult();
        }
        public FileResult PreviewData(string Fname)
        {
            var sDocument = Fname;
            byte[] fileBytes = System.IO.File.ReadAllBytes(sDocument);
            string fileName = Path.GetFileName(Fname);
            if(System.IO.File.Exists(Fname))
            {
                //System.IO.File.Delete(Fname);
            }
            return File(fileBytes, "application/pdf");
        }
    }
}
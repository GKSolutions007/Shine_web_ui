using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using ShineWeb.Printing;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace ShineWeb.Controllers
{
    public class TransactionPrintController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public ActionResult Index(string Name, string strFormID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                Name = clsEncryptDecrypt.Decrypt(Name);
                string decFormID = clsEncryptDecrypt.Decrypt(strFormID);
                ViewData["FormName"] = Name;
                ViewData["FormID"] = decFormID;
                SingleMasterModel dam = new SingleMasterModel();
                dam.FormName = Name;
                return View(dam);
            }
        }
        [HttpGet]
        public JsonResult GeneratePrint(int TransID = 0, int ConfigID = 0, string DocValue = "")
        {
            DataView dtView = new DataView(objBL.BL_StringSplitCommaHyphen(DocValue.Trim()));
            DataTable dtDocIDs = dtView.ToTable(true, "SerialNo");
            int nTransrange = 0;
            if (dtDocIDs.Rows.Count > 0)
            {
                if (!Convert.ToString(dtDocIDs.Rows[0][0]).Contains("Range Should be"))
                {
                    string Outputfile = "";
                    for (int nCount = 0; nCount < dtDocIDs.Rows.Count; nCount++)
                    {
                        int Ident = 0;
                        nTransrange = objBL.BL_nValidation(dtDocIDs.Rows[nCount][0]);
                        DataTable dtID = objBL.BL_ExecuteParamSP("uspGetTransIdentforPrint", TransID, nTransrange);
                        if (dtID.Rows.Count > 0)
                        {
                            Ident = objBL.BL_nValidation(dtID.Rows[0][0]);
                        }
                        PrintBase Print = new PrintBase
                        {
                            GKS_BL = objBL
                        };
                        Print.GroupPDFPB(TransID, Ident, ConfigID, (nCount + 1) == dtDocIDs.Rows.Count);
                        if ((nCount + 1) == dtDocIDs.Rows.Count)
                            Outputfile = Print.GroupPDFoutputPath;
                    }
                    string pathwithFileName = Outputfile;
                    byte[] bytes = System.IO.File.ReadAllBytes(pathwithFileName);
                    string exts = Path.GetExtension(pathwithFileName);
                    string fileName = Path.GetFileName(pathwithFileName);
                    return Json(fileName, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    //obj_mdi.ShowMessage(Convert.ToString(dtDocIDs.Rows[0][0]), GKSShineBL.ToolStripErrorMsg);
                }
            }
            return Json("", JsonRequestBehavior.AllowGet);
        }
    }
}
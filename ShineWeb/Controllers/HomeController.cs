using DocumentFormat.OpenXml.Wordprocessing;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using static Org.BouncyCastle.Asn1.Cmp.Challenge;

namespace ShineWeb.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index(string ID)
        {
            if (Session["LoginUserID"] == null)
            {
                return RedirectToAction("Index", "Login");
            }
            else
            {
                DataTable dtPermission = (System.Data.DataTable)Session["dtPermission"];
                string ColldtlEnable = dtPermission.Select("MenuID = 303", null).Length > 0 ? "1" : "0";
                string ChqdtlEnable = dtPermission.Select("MenuID = 304", null).Length > 0 ? "1" : "0";
                string tranvariantEnable = dtPermission.Select("MenuID = 309", null).Length > 0 ? "1" : "0";
                Homescreen dam = new Homescreen();
                dam.CollectionDetailEnable = ColldtlEnable;
                dam.ChequeDetailEnable = ChqdtlEnable;
                dam.TransVariantEnable = tranvariantEnable;
                return View(dam);
            }
        }
        [HttpGet]
        public JsonResult setdate(int TypeID)
        {
            DateTime dtMin = DateTime.Now, dtMax = DateTime.Now, dtValue = DateTime.Now;
            DateTime Date = DateTime.Now;
            DateTime dtFinancialdate = Convert.ToDateTime(Session["F_SD"]).Date;
            DateTime dtpF_ED = Convert.ToDateTime(Session["F_ED"]).Date;
            if (TypeID == 0)//set ServerDate
            {
                dtMin = dtFinancialdate;
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                dtValue = dtpF_ED > Date ? Date : dtpF_ED;
            }
            else if (TypeID == 1) //Set value as Financial Start Date 
            {
                dtMin = dtFinancialdate;
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                dtValue = dtFinancialdate;// dtFinancialdate > dtpF_ED ? dtFinancialdate : dtpF_ED;///dtFinancialdate;
            }
            else if (TypeID == 2)//Month First Date
            {
                dtMin = dtFinancialdate;
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime dtDate = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime MonFstDt = new DateTime(dtDate.Year, dtDate.Month, 1);
                dtValue = dtMin > MonFstDt ? dtMin : MonFstDt;//  new DateTime(dtDate.Year, dtDate.Month, 1);
            }
            else if (TypeID == 3)//F_SD with no MinDate
            {

                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                dtValue = dtFinancialdate;
            }
            else if (TypeID == 4)// Book strart date as min date
            {
                dtMin = Convert.ToDateTime(dtFinancialdate);
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                dtValue = dtFinancialdate > dtpF_ED ? dtFinancialdate : dtpF_ED;
            }
            else if (TypeID == 5)// For View
            {
                dtMin = dtFinancialdate;
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                dtValue = dtpF_ED > Date ? Date : dtpF_ED;
            }
            else if (TypeID == 6)// Previous Month First Date
            {
                dtMin = dtFinancialdate;// (dtFinancialdate > dtpF_ED ? dtFinancialdate : dtpF_ED);
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime dtDate = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime MonFstDt = new DateTime(dtDate.Year, dtDate.Month - 1, 1);
                dtValue = dtMin > MonFstDt ? dtMin : MonFstDt;//  new DateTime(dtDate.Year, dtDate.Month, 1);
            }
            else if (TypeID == 7)//Previous Month Last Date
            {
                dtMin = dtFinancialdate;// (dtFinancialdate > dtpF_ED ? dtFinancialdate : dtpF_ED);
                dtMax = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime dtDate = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime MonFstDt = new DateTime(dtDate.Year, dtDate.Month, 1).AddDays(-1);
                dtValue = dtMin > MonFstDt ? dtMin : MonFstDt;//  new DateTime(dtDate.Year, dtDate.Month, 1);
            }
            else if (TypeID == 8)//Month First Date with NO Min date
            {
                dtMin = DateTime.Now.AddYears(-100);
                dtMax = Date;
                DateTime dtDate = dtpF_ED > Date ? Date : dtpF_ED;
                DateTime MonFstDt = new DateTime(dtDate.Year, dtDate.Month, 1);
                dtValue = dtMin > MonFstDt ? dtMin : MonFstDt;//  new DateTime(dtDate.Year, dtDate.Month, 1);
            }
            List<getsetdates> listdt = new List<getsetdates>();
            listdt.Add(new getsetdates
            {
                MinDate = Convert.ToDateTime(dtMin).ToString("yyyy-MM-dd"),
                MaxDate = Convert.ToDateTime(dtMax).ToString("yyyy-MM-dd"),
                Value = Convert.ToDateTime(dtValue).ToString("yyyy-MM-dd"),
            });
            return Json(listdt, JsonRequestBehavior.AllowGet);
        }

    }
}
using ClosedXML.Excel;
using DocumentFormat.OpenXml.Drawing.Diagrams;
using DocumentFormat.OpenXml.Office2010.Excel;
using DocumentFormat.OpenXml.Packaging;
using DocumentFormat.OpenXml.Spreadsheet;
using DocumentFormat.OpenXml.VariantTypes;
using DocumentFormat.OpenXml.Wordprocessing;
using MessagingToolkit.QRCode.Crypt;
using ShineWeb.BuisnessLayer;
using ShineWeb.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using WebGrease.Activities;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TreeView;

namespace ShineWeb.Controllers
{
    public class ImportexportController : Controller
    {
        clsBusinessLayer objBL = new clsBusinessLayer();
        public string strSheetName { get; set; }
        public int BranchID { get; set; }
        public int VendorID { get; set; }
        public int CustomerID { get; set; }
        public int ProductID { get; set; }
        public int BeatID { get; set; }
        public int SalesmanID { get; set; }
        public int TaxID { get; set; }
        public int UOMID { get; set; }
        public decimal TaxPern { get; set; }
        public string strExtension = ".xlsx";
        public string strFileName = "";
        public string strFilePath
        {
            get; set;
        }
        public DataTable dtData { get; set; }
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
        [HttpPost]
        public JsonResult LoadSelectFiledata(HttpPostedFileBase File)
        {
            string Msg = "";
            string dt = "";
            List<ImportResults> MTM = new List<ImportResults>();
            try
            {
                //var data = Request.Files[0].InputStream.Read;                                                       
                if (Request.Files.Count > 0)
                {
                    string TransID = Request.Files.AllKeys[0].ToString();
                    string TransName = Request.Files.AllKeys[1].ToString();
                    string fileName = Request.Files[2].FileName;
                    string fileContentType = Request.Files[2].ContentType;
                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Upload Files\\";
                    string FPt = System.Configuration.ConfigurationManager.AppSettings["SupportFilePath"];
                    strFilePath = FPt + "Upload Files\\";
                    strFileName = TransName + "_Upload_" + fileName;
                    if (!Directory.Exists(strFilePath))
                    {
                        Directory.CreateDirectory(strFilePath);
                    }
                    Request.Files[2].SaveAs(strFilePath + strFileName);
                    bool blResult = true;
                    List<string> lst = null;
                    if (TransID == "3")//PO
                    {
                        lst = POImpDataTemp();
                    }
                    if (TransID == "1")//Customer
                    {
                        lst = CustomerMasterTemp();
                    }
                    if (TransID == "2")//Product
                    {
                        lst = ProductMasterTemp();
                    }
                    if (TransID == "4")//Price Change
                    {
                        lst = PrichangeTemp();
                    }
                    if (TransID == "5")//order taken
                    {
                        lst = OrderTakenTemp();
                    }
                    bool ErrorColAlreadyExisist = false;
                    ColumnValidation(lst, ref blResult);
                    if (!blResult)
                    {
                        if (TransID == "3")//PO
                        {
                            lst = POImpDataTempWithErrCol();
                        }
                        if (TransID == "1")//Customer
                        {
                            lst = CustomerMasterTempWithErrCol();
                        }
                        if (TransID == "2")//Product
                        {
                            lst = ProductMasterTempWithErrCol();
                        }
                        if (TransID == "4")//Price Change
                        {
                            lst = PrichangeTempWithErrCol();
                        }
                        if (TransID == "5")//order taken
                        {
                            lst = OrderTakenTempWithErrCol();
                        }
                        ColumnValidation(lst, ref blResult);
                        ErrorColAlreadyExisist = true;
                    }
                    if (blResult)
                    {
                        DataTable dtCorrectValues = new DataTable();
                        DataTable dtWrongValues = new DataTable();
                        foreach (string str in lst)
                        {
                            dtCorrectValues.Columns.Add(str);
                            dtWrongValues.Columns.Add(str);
                        }
                        if (!ErrorColAlreadyExisist)
                        {
                            dtCorrectValues.Columns.Add("Error");
                            dtWrongValues.Columns.Add("Error");
                        }
                        #region Purchase Order
                        if (TransID == "3")
                        {
                            if (dtData.Rows.Count > 0)
                            {
                                int nIndex = 1;
                                foreach (DataRow item in dtData.Rows)
                                {
                                    string RowError = POImpValiation(item);
                                    if (string.IsNullOrEmpty(RowError))
                                    {
                                        DataRow drC = dtCorrectValues.NewRow();
                                        drC["Doc ID"] = item.ItemArray[0];
                                        drC["Doc Date"] = item.ItemArray[1];
                                        drC["Branch Name"] = BranchID;
                                        drC["Vendor Name"] = VendorID;
                                        drC["Item Name"] = ProductID;
                                        drC["Price"] = item.ItemArray[5];
                                        drC["Qty"] = item.ItemArray[6];
                                        drC["Tax"] = TaxID;
                                        drC["TaxPern"] = TaxPern;
                                        drC["UOM"] = UOMID;
                                        drC["Error"] = nIndex;
                                        dtCorrectValues.Rows.Add(drC);
                                        nIndex++;
                                    }
                                    else
                                    {
                                        DataRow drW = dtWrongValues.NewRow();
                                        drW["Doc ID"] = item.ItemArray[0];
                                        drW["Doc Date"] = item.ItemArray[1];
                                        drW["Branch Name"] = item.ItemArray[2];
                                        drW["Vendor Name"] = item.ItemArray[3];
                                        drW["Item Name"] = item.ItemArray[4];
                                        drW["Price"] = item.ItemArray[5];
                                        drW["Qty"] = item.ItemArray[6];
                                        drW["Tax"] = item.ItemArray[7];
                                        drW["Error"] = RowError;
                                        dtWrongValues.Rows.Add(drW);
                                    }
                                }

                                if (dtWrongValues.Rows.Count == 0)
                                {
                                    DataTable dtProd = new DataTable();
                                    if (dtProd.Columns.Count == 0)
                                    {
                                        dtProd.Columns.Add("ProdId", typeof(int));
                                        dtProd.Columns.Add("UomId", typeof(int));
                                        dtProd.Columns.Add("Qty", typeof(decimal));
                                        dtProd.Columns.Add("PurchasePrice", typeof(decimal));
                                        dtProd.Columns.Add("TaxID", typeof(int));
                                        dtProd.Columns.Add("TaxPercentage", typeof(decimal));
                                        dtProd.Columns.Add("GrossAmt", typeof(decimal), "(Qty*PurchasePrice)");
                                        dtProd.Columns.Add("TaxAmt", typeof(decimal), "(GrossAmt*TaxPercentage)/100");
                                        dtProd.Columns.Add("NetAmt", typeof(decimal), "GrossAmt+TaxAmt");
                                        dtProd.Columns.Add("InventoryId", typeof(int)).DefaultValue = 0;
                                        dtProd.Columns.Add("Serial", typeof(int));
                                    }
                                    DataTable dtDistinct = new DataTable();
                                    dtDistinct = dtCorrectValues.DefaultView.ToTable(true, dtCorrectValues.Columns["Doc ID"].ColumnName);
                                    string sortExpression = string.Format("{0}", "Doc ID");
                                    dtDistinct.DefaultView.Sort = sortExpression + " ASC";
                                    dtDistinct = dtDistinct.DefaultView.ToTable();
                                    for (int i = 0; i < dtDistinct.Rows.Count; i++)
                                    {
                                        dtProd.Rows.Clear();
                                        DataRow[] DRR = dtCorrectValues.Select("[Doc ID] = '" + dtDistinct.Rows[i][0].ToString() + "'");
                                        if (DRR.Length > 0)
                                        {
                                            for (int j = 0; j < DRR.Length; j++)
                                            {
                                                DataRow dtRow = dtProd.NewRow();
                                                dtRow[0] = objBL.BL_nValidation(Convert.ToString(DRR[j]["Item Name"]));
                                                dtRow[1] = objBL.BL_nValidation(Convert.ToString(DRR[j]["UOM"]));
                                                dtRow[2] = objBL.BL_dValidation(Convert.ToString(DRR[j]["Qty"]));
                                                dtRow[3] = objBL.BL_dValidation(Convert.ToString(DRR[j]["Price"]));
                                                dtRow[4] = objBL.BL_nValidation(Convert.ToString(DRR[j]["Tax"]));
                                                dtRow[5] = objBL.BL_dValidation(Convert.ToString(DRR[j]["TaxPern"]));
                                                dtRow[10] = (j + 1);
                                                dtProd.Rows.Add(dtRow);
                                            }
                                        }
                                        object gross = dtProd.Compute("sum(GrossAmt)", null);
                                        object Tax = dtProd.Compute("sum(TaxAmt)", null);
                                        object Net = dtProd.Compute("sum(NetAmt)", null);
                                        decimal roundnet = Math.Floor(objBL.BL_dValidation(Net));
                                        decimal Roundoff = roundnet - objBL.BL_dValidation(Net);
                                        dt = "Excel Sheet Date :" + DRR[0]["Doc Date"].ToString();
                                        DateTime date = DateTime.ParseExact(DRR[0]["Doc Date"].ToString(), "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                                        string formattedDate = date.ToString("yyyy-MM-dd");
                                        dt = Convert.ToDateTime(formattedDate).ToString();//"yyyy-MM-dd"
                                        objBL.bl_Transaction(1);
                                        DataTable dtResult = objBL.bl_ManageTrans("uspManagePurchaseOrder", dtProd, 1, 0, objBL.BL_nValidation(DRR[0]["Branch Name"]),
                                1, dt, DRR[0]["Vendor Name"], DRR[0]["Doc ID"], 1, objBL.BL_dValidation(Roundoff), objBL.BL_dValidation(gross), objBL.BL_dValidation(Tax),
                                objBL.BL_dValidation(roundnet), 0, null, "Import Data", objBL.BL_nValidation(Session["LoginUserID"]), 0);
                                        if (dtResult.Rows.Count == 3)
                                        {
                                            objBL.bl_Transaction(3);
                                        }
                                        objBL.bl_Transaction(2);
                                    }
                                    //int UID = Convert.ToInt32(Session["LoginUserID"]);

                                    if (dtWrongValues.Rows.Count == 0)
                                    {
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "0",
                                            Msg = "Data Saved Successfully.",
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                }
                                if (dtWrongValues.Rows.Count > 0)
                                {
                                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Error Files\\";
                                    strFilePath = FPt + "Error Files\\";
                                    strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                    strSheetName = "Data";
                                    ExportToExcel(dtWrongValues);
                                    MTM.Add(new ImportResults()
                                    {
                                        ID = "1",
                                        Msg = "Data Not Saved. Error occured in some documents. See error list in downloads.",
                                        FileName = strFileName + strExtension,
                                        FilePath = strFilePath + strFileName + strExtension,
                                        Total = Convert.ToString(dtData.Rows.Count),
                                        Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                        UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                    });
                                }
                                return Json(MTM, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                Msg = "0";// no records found;
                            }
                        }
                        #endregion
                        #region Customer
                        else if (TransID == "1")
                        {
                            if (dtData.Rows.Count > 0)
                            {
                                foreach (DataRow item in dtData.Rows)
                                {
                                    DataTable dtValidate = dtData.Clone();
                                    dtValidate.TableName = "Validation";
                                    dtValidate.Rows.Add(item.ItemArray);
                                    string RowError = CustomerImpValiation(dtValidate);
                                    if (string.IsNullOrEmpty(RowError))
                                    {
                                        dtCorrectValues.Rows.Add(item.ItemArray);
                                    }
                                    else
                                    {
                                        dtWrongValues.Rows.Add(item.ItemArray);
                                        int rid = dtWrongValues.Rows.Count;
                                        dtWrongValues.Rows[rid - 1]["Error"] = RowError;
                                    }
                                }
                                if (dtWrongValues.Rows.Count == 0)// no error, create new records
                                {
                                    bool NoErrorwhenInsert = true;
                                    for (int i = 0; i < dtCorrectValues.Rows.Count; i++)
                                    {
                                        DataTable DDT = objBL.BL_ExecuteParamSP("uspManageCustomerMasterImport",
                                            dtCorrectValues.Rows[i]["Code *"].ToString(),
                                            dtCorrectValues.Rows[i]["Name *"].ToString(),
                                            dtCorrectValues.Rows[i]["Billing Address 1"].ToString(),
                                            dtCorrectValues.Rows[i]["Billing Address 2"].ToString(),
                                            dtCorrectValues.Rows[i]["Billing Address 3"].ToString(),
                                            dtCorrectValues.Rows[i]["Shipping Address 1"].ToString(),
                                            dtCorrectValues.Rows[i]["Shipping Address 2"].ToString(),
                                            dtCorrectValues.Rows[i]["Shipping Address 3"].ToString(),
                                            dtCorrectValues.Rows[i]["Pincode *"].ToString(),
                                            dtCorrectValues.Rows[i]["Contact Person"].ToString(),
                                            dtCorrectValues.Rows[i]["Phone No 1"].ToString(),
                                            dtCorrectValues.Rows[i]["Phone No 2"].ToString(),
                                            dtCorrectValues.Rows[i]["Mobile No 1"].ToString(),
                                            dtCorrectValues.Rows[i]["Mobile No 2"].ToString(),
                                            dtCorrectValues.Rows[i]["Email ID"].ToString(),
                                            dtCorrectValues.Rows[i]["PAN Number"].ToString(),
                                            dtCorrectValues.Rows[i]["Aadhar No"].ToString(),
                                            dtCorrectValues.Rows[i]["DL No 20"].ToString(),
                                            dtCorrectValues.Rows[i]["DL No 21"].ToString(),
                                            dtCorrectValues.Rows[i]["FSSAI No"].ToString(),
                                            dtCorrectValues.Rows[i]["State Name"].ToString(),
                                            dtCorrectValues.Rows[i]["GSTIN"].ToString(),
                                            dtCorrectValues.Rows[i]["Credit Term"].ToString(),
                                            dtCorrectValues.Rows[i]["Payment Mode"].ToString(),
                                            dtCorrectValues.Rows[i]["Tax Type *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Over Due Value"].ToString()),
                                            objBL.BL_nValidation(dtCorrectValues.Rows[i]["Over Due Inv Count"].ToString()),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Credit Limit Value"].ToString()),
                                            objBL.BL_nValidation(dtCorrectValues.Rows[i]["Credit Limit Count"].ToString()),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Over Due Value"].ToString()),
                                            dtCorrectValues.Rows[i]["Price Type *"].ToString(),
                                            dtCorrectValues.Rows[i]["Owner Name"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Discount %"].ToString()),
                                            dtCorrectValues.Rows[i]["Track Point"].ToString() == "Y" ? "1" : "0", 0,
                                            dtCorrectValues.Rows[i]["TCS Tax"].ToString() == "Y" ? "1" : "0", null, null,
                                            dtCorrectValues.Rows[i]["Distance"].ToString(),
                                            dtCorrectValues.Rows[i]["Remark"].ToString(),
                                            dtCorrectValues.Rows[i]["Active"].ToString() == "Y" ? "1" : "0",
                                            objBL.BL_nValidation(Session["LoginUserID"]),
                                            dtCorrectValues.Rows[i]["Customer Type"].ToString(),
                                            dtCorrectValues.Rows[i]["Rating"].ToString());
                                        if (DDT.Columns.Count == 3)
                                        {
                                            NoErrorwhenInsert = false;
                                            dtWrongValues.Rows.Add(dtCorrectValues.Rows[i].ItemArray);
                                            int rid = dtWrongValues.Rows.Count;
                                            dtWrongValues.Rows[rid - 1]["Error"] = DDT.Rows[0][0].ToString();
                                        }
                                    }
                                    if (!NoErrorwhenInsert)
                                    {
                                        strFilePath = FPt + "Error Files\\";
                                        strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                        strSheetName = "Data";
                                        ExportToExcel(dtWrongValues);
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "1",
                                            Msg = "Data Saved with errors. Error occured in some documents. See error list in downloads.",
                                            FileName = strFileName + strExtension,
                                            FilePath = strFilePath + strFileName + strExtension,
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                    else
                                    {
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "0",
                                            Msg = "Data Saved Successfully.",
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                }
                                else
                                {
                                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Error Files\\";
                                    strFilePath = FPt + "Error Files\\";
                                    strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                    strSheetName = "Data";
                                    ExportToExcel(dtWrongValues);
                                    MTM.Add(new ImportResults()
                                    {
                                        ID = "1",
                                        Msg = "Data Not Saved. Error occured in some documents. See error list in downloads.",
                                        FileName = strFileName + strExtension,
                                        FilePath = strFilePath + strFileName + strExtension,
                                        Total = Convert.ToString(dtData.Rows.Count),
                                        Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                        UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                    });
                                }
                                return Json(MTM, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                Msg = "0";// no records found;
                            }
                        }
                        #endregion
                        #region Product
                        else if (TransID == "2")
                        {
                            if (dtData.Rows.Count > 0)
                            {
                                foreach (DataRow item in dtData.Rows)
                                {
                                    DataTable dtValidate = dtData.Clone();
                                    dtValidate.TableName = "Validation";
                                    dtValidate.Rows.Add(item.ItemArray);
                                    string RowError = ProductImpValiation(dtValidate);
                                    if (string.IsNullOrEmpty(RowError))
                                    {
                                        dtCorrectValues.Rows.Add(item.ItemArray);
                                    }
                                    else
                                    {
                                        dtWrongValues.Rows.Add(item.ItemArray);
                                        int rid = dtWrongValues.Rows.Count;
                                        dtWrongValues.Rows[rid - 1]["Error"] = RowError;
                                    }
                                }
                                if (dtWrongValues.Rows.Count == 0)// no error, create/update records
                                {
                                    DataTable dtErrors = dtWrongValues.Clone();
                                    dtErrors.TableName = "Error Data";
                                    bool NoErrorwhenInsert = true;
                                    for (int i = 0; i < dtCorrectValues.Rows.Count; i++)
                                    {
                                        DataTable DDT = objBL.BL_ExecuteParamSP("uspManageProductMasterImport",
                                            dtCorrectValues.Rows[i]["Code *"].ToString(), dtCorrectValues.Rows[i]["Name *"].ToString(),
                                            dtCorrectValues.Rows[i]["EAN *"].ToString(), dtCorrectValues.Rows[i]["Mfr Name *"].ToString(),
                                            dtCorrectValues.Rows[i]["Brand Name *"].ToString(), dtCorrectValues.Rows[i]["Category Name *"].ToString(),
                                            dtCorrectValues.Rows[i]["HSN Code"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Discount %"].ToString()),
                                            dtCorrectValues.Rows[i]["Base Uom *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Base CR *"].ToString()),
                                            dtCorrectValues.Rows[i]["Purchase Uom *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Purchase CR *"].ToString()),
                                            dtCorrectValues.Rows[i]["Sales Uom *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Sales CR *"].ToString()),
                                            dtCorrectValues.Rows[i]["Reporting Uom *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Reporting CR *"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["Reporting CR *"].ToString()),
                                             dtCorrectValues.Rows[i]["Purchase Tax *"].ToString(),
                                            dtCorrectValues.Rows[i]["Sales Tax *"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Purchase Price *"].ToString()),
                                            dtCorrectValues.Rows[i]["Sale on MRP"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["Sales Margin %"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["Sales Price *"].ToString()),
                                             dtCorrectValues.Rows[i]["ECP on MRP"].ToString(),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["ECP Margin %"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["ECP *"].ToString()),
                                            dtCorrectValues.Rows[i]["SPL on MRP"].ToString(),
                                            objBL.BL_dValidation(dtCorrectValues.Rows[i]["SPL Margin %"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["SPL Price *"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["MRP *"].ToString()),
                                             objBL.BL_dValidation(dtCorrectValues.Rows[i]["Return Price"].ToString()),
                                             dtCorrectValues.Rows[i]["Track Inventory"].ToString(),
                                            dtCorrectValues.Rows[i]["Track Batch"].ToString(),
                                            dtCorrectValues.Rows[i]["Track Serial"].ToString(),
                                            dtCorrectValues.Rows[i]["Track PKD"].ToString(),
                                            dtCorrectValues.Rows[i]["Date Format"].ToString(),
                                            dtCorrectValues.Rows[i]["Barcode Print"].ToString(),
                                            dtCorrectValues.Rows[i]["Barcode Uom"].ToString(),
                                            dtCorrectValues.Rows[i]["Barcode Price"].ToString(),
                                            dtCorrectValues.Rows[i]["Vendor Name"].ToString(),
                                            objBL.BL_nValidation(dtCorrectValues.Rows[i]["MOH"].ToString()),
                                            objBL.BL_nValidation(dtCorrectValues.Rows[i]["MOQ"].ToString()),
                                            dtCorrectValues.Rows[i]["Remarks"].ToString(), dtCorrectValues.Rows[i]["Location Name"].ToString(),
                                        objBL.BL_nValidation(dtCorrectValues.Rows[i]["Weborder"].ToString()), dtCorrectValues.Rows[i]["Active"].ToString(),
                                        objBL.BL_nValidation(Session["LoginUserID"]), dtCorrectValues.Rows[i]["Life Time"].ToString());
                                        if (DDT.Columns.Count == 3)
                                        {
                                            NoErrorwhenInsert = false;
                                            dtWrongValues.Rows.Add(dtCorrectValues.Rows[i].ItemArray);
                                            int rid = dtWrongValues.Rows.Count;
                                            dtWrongValues.Rows[rid - 1]["Error"] = DDT.Rows[0][0].ToString();
                                        }
                                    }
                                    if (!NoErrorwhenInsert)
                                    {
                                        strFilePath = FPt + "Error Files\\";
                                        strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                        strSheetName = "Data";
                                        ExportToExcel(dtWrongValues);
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "1",
                                            Msg = "Data Saved with errors. Error occured in some documents. See error list in downloads.",
                                            FileName = strFileName + strExtension,
                                            FilePath = strFilePath + strFileName + strExtension,
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                    else
                                    {
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "0",
                                            Msg = "Data Saved Successfully.",
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                }
                                else
                                {
                                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Error Files\\";
                                    strFilePath = FPt + "Error Files\\";
                                    strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                    strSheetName = "Data";
                                    ExportToExcel(dtWrongValues);
                                    MTM.Add(new ImportResults()
                                    {
                                        ID = "1",
                                        Msg = "Data Not Saved. Error occured in some documents. See error list in downloads.",
                                        FileName = strFileName + strExtension,
                                        FilePath = strFilePath + strFileName + strExtension,
                                        Total = Convert.ToString(dtData.Rows.Count),
                                        Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                        UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                    });
                                }
                                return Json(MTM, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                Msg = "0";
                            }
                        }
                        #endregion
                        #region Price Change
                        else if (TransID == "4")
                        {
                            if (dtData.Rows.Count > 0)
                            {
                                foreach (DataRow item in dtData.Rows)
                                {
                                    DataTable dtValidate = dtData.Clone();
                                    dtValidate.TableName = "Validation";
                                    dtValidate.Rows.Add(item.ItemArray);
                                    string RowError = PriceChangeImpValiation(dtValidate);
                                    if (string.IsNullOrEmpty(RowError))
                                    {
                                        dtCorrectValues.Rows.Add(item.ItemArray);
                                    }
                                    else
                                    {
                                        dtWrongValues.Rows.Add(item.ItemArray);
                                        int rid = dtWrongValues.Rows.Count;
                                        dtWrongValues.Rows[rid - 1]["Error"] = RowError;
                                    }
                                }
                                if (dtWrongValues.Rows.Count == 0)// no error, create/update records
                                {
                                    DataTable dtErrors = dtWrongValues.Clone();
                                    dtErrors.TableName = "Error Data";
                                    bool NoErrorwhenInsert = true;
                                    for (int i = 0; i < dtCorrectValues.Rows.Count; i++)
                                    {
                                        string exp = !string.IsNullOrEmpty(dtCorrectValues.Rows[i]["Expiry"].ToString()) ? Convert.ToDateTime(dtCorrectValues.Rows[i]["Expiry"].ToString()).ToString("yyyy-MM-dd") : null;
                                        string pkd = !string.IsNullOrEmpty(dtCorrectValues.Rows[i]["PKD"].ToString()) ? Convert.ToDateTime(dtCorrectValues.Rows[i]["PKD"].ToString()).ToString("yyyy-MM-dd") : null;

                                        DataTable DDT = objBL.BL_ExecuteParamSP("uspManageProductPricechangedata", 6, 0, 0, dtCorrectValues.Rows[i]["ID"].ToString(), 0,
                                        0, dtCorrectValues.Rows[i]["Batch No"].ToString(), pkd, exp, null, objBL.BL_dValidation(dtCorrectValues.Rows[i]["Sales Price"].ToString()),
                                        objBL.BL_dValidation(dtCorrectValues.Rows[i]["ECP"].ToString()), objBL.BL_dValidation(dtCorrectValues.Rows[i]["SPL Price"].ToString()),
                                        objBL.BL_dValidation(dtCorrectValues.Rows[i]["MRP Incl"].ToString()), objBL.BL_dValidation(dtCorrectValues.Rows[i]["Return Price"].ToString()), 
                                        objBL.BL_nValidation(Session["LoginUserID"]));
                                        if (DDT.Columns.Count == 3)
                                        {
                                            NoErrorwhenInsert = false;
                                            dtWrongValues.Rows.Add(dtCorrectValues.Rows[i].ItemArray);
                                            int rid = dtWrongValues.Rows.Count;
                                            dtWrongValues.Rows[rid - 1]["Error"] = DDT.Rows[0][0].ToString();
                                        }
                                    }
                                    if (!NoErrorwhenInsert)
                                    {
                                        strFilePath = FPt + "Error Files\\";
                                        strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                        strSheetName = "Data";
                                        ExportToExcel(dtWrongValues);
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "1",
                                            Msg = "Data Saved with errors. Error occured in some documents. See error list in downloads.",
                                            FileName = strFileName + strExtension,
                                            FilePath = strFilePath + strFileName + strExtension,
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                    else
                                    {
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "0",
                                            Msg = "Data Saved Successfully.",
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                }
                                else
                                {
                                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Error Files\\";
                                    strFilePath = FPt + "Error Files\\";
                                    strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                    strSheetName = "Data";
                                    ExportToExcel(dtWrongValues);
                                    MTM.Add(new ImportResults()
                                    {
                                        ID = "1",
                                        Msg = "Data Not Saved. Error occured in some documents. See error list in downloads.",
                                        FileName = strFileName + strExtension,
                                        FilePath = strFilePath + strFileName + strExtension,
                                        Total = Convert.ToString(dtData.Rows.Count),
                                        Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                        UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                    });
                                }
                                return Json(MTM, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                Msg = "0";
                            }
                        }
                        #endregion
                        #region Order Taken
                        else if(TransID == "5")
                        {
                            if (dtData.Rows.Count > 0)
                            {
                                int nIndex = 1;
                                foreach (DataRow item in dtData.Rows)
                                {
                                    DataTable dtValidate = dtData.Clone();
                                    dtValidate.TableName = "Validation";
                                    dtValidate.Rows.Add(item.ItemArray);
                                    string RowError = OrderTakenImpValiation(dtValidate);
                                    if (string.IsNullOrEmpty(RowError))
                                    {
                                        //dtCorrectValues.Rows.Add(item.ItemArray);
                                        DataRow drC = dtCorrectValues.NewRow();
                                        drC["Order ID"] = item.ItemArray[0];
                                        drC["Doc Date"] = item.ItemArray[1];
                                        drC["Branch Name"] = BranchID;
                                        drC["Beat Name"] = BeatID;
                                        drC["Salesman Name"] = SalesmanID;
                                        drC["Customer Name"] = CustomerID;
                                        drC["Additional Discount %"] = objBL.BL_dValidation(item.ItemArray[6]);
                                        drC["Trade Discount %"] = objBL.BL_dValidation(item.ItemArray[7]);
                                        drC["Remarks"] = item.ItemArray[8];
                                        drC["Product Name"] = ProductID;
                                        drC["Price"] = objBL.BL_dValidation(item.ItemArray[10]);
                                        drC["Quantity"] = objBL.BL_dValidation(item.ItemArray[11]);
                                        drC["Discount %"] = objBL.BL_dValidation(item.ItemArray[12]); ;                                        
                                        drC["Error"] = nIndex;
                                        dtCorrectValues.Rows.Add(drC);
                                        nIndex++;
                                    }
                                    else
                                    {
                                        //dtWrongValues.Rows.Add(item.ItemArray);
                                        //int rid = dtWrongValues.Rows.Count;
                                        //dtWrongValues.Rows[rid - 1]["Error"] = RowError;

                                        DataRow drC = dtWrongValues.NewRow();
                                        drC["Order ID"] = item.ItemArray[0];
                                        drC["Doc Date"] = item.ItemArray[1];
                                        drC["Branch Name"] = item.ItemArray[2];
                                        drC["Beat Name"] = item.ItemArray[3];
                                        drC["Salesman Name"] = item.ItemArray[4];
                                        drC["Customer Name"] = item.ItemArray[5];
                                        drC["Additional Discount %"] = item.ItemArray[6];
                                        drC["Trade Discount %"] = item.ItemArray[7];
                                        drC["Remarks"] = item.ItemArray[8];
                                        drC["Product Name"] = ProductID;
                                        drC["Price"] = item.ItemArray[10];
                                        drC["Quantity"] = item.ItemArray[11];
                                        drC["Discount %"] = item.ItemArray[12];
                                        drC["Error"] = RowError;
                                        dtWrongValues.Rows.Add(drC);

                                    }
                                }
                                if (dtWrongValues.Rows.Count == 0)// no error, create records
                                {
                                    DataTable dtProd = new DataTable();
                                    if (dtProd.Columns.Count == 0)
                                    {
                                        dtProd.Columns.Add("ProdId", typeof(int));
                                        dtProd.Columns.Add("UomId", typeof(int));
                                        dtProd.Columns.Add("Qty", typeof(decimal));
                                        dtProd.Columns.Add("Price", typeof(decimal));
                                        dtProd.Columns.Add("OrgPrice", typeof(decimal));
                                        dtProd.Columns.Add("Amount", typeof(decimal), "(Qty*Price)");
                                        dtProd.Columns.Add("DiscPern", typeof(decimal));
                                        dtProd.Columns.Add("DiscAmt", typeof(decimal), "(DiscPern*Amount)/100");
                                        dtProd.Columns.Add("ConversionRate", typeof(decimal));
                                        dtProd.Columns.Add("Serial", typeof(int));
                                    }
                                    DataTable dtDistinct = new DataTable();
                                    dtDistinct = dtCorrectValues.DefaultView.ToTable(true, dtCorrectValues.Columns["Order ID"].ColumnName);
                                    string sortExpression = string.Format("{0}", "Order ID");
                                    dtDistinct.DefaultView.Sort = sortExpression + " ASC";
                                    dtDistinct = dtDistinct.DefaultView.ToTable();
                                    for (int i = 0; i < dtDistinct.Rows.Count; i++)
                                    {
                                        dtProd.Rows.Clear();
                                        DataRow[] DRR = dtCorrectValues.Select("[Order ID] = '" + dtDistinct.Rows[i][0].ToString() + "'");
                                        if (DRR.Length > 0)
                                        {
                                            for (int j = 0; j < DRR.Length; j++)
                                            {
                                                DataRow dtRow = dtProd.NewRow();
                                                dtRow[0] = Convert.ToString(DRR[j]["Product Name"]);
                                                dtRow[1] = 0;
                                                dtRow[2] = objBL.BL_dValidation(Convert.ToString(DRR[j]["Quantity"]));
                                                dtRow[3] = objBL.BL_dValidation(Convert.ToString(DRR[j]["Price"]));
                                                dtRow[4] = objBL.BL_nValidation(Convert.ToString(DRR[j]["Price"]));//Discount %
                                                dtRow[6] = objBL.BL_dValidation(Convert.ToString(DRR[j]["Discount %"]));
                                                dtRow[8] = 1;
                                                dtRow[9] = (j + 1);
                                                dtProd.Rows.Add(dtRow);
                                            }
                                        }
                                        //save
                                        DateTime date = DateTime.ParseExact(DRR[0]["Doc Date"].ToString(), "dd/MM/yyyy", System.Globalization.CultureInfo.InvariantCulture);
                                        string formattedDate = date.ToString("yyyy-MM-dd");
                                        dt = Convert.ToDateTime(formattedDate).ToString();//"yyyy-MM-dd"
                                        objBL.bl_Transaction(1);
                                        DataTable dtResult = objBL.bl_ManageTrans("uspManageOrderTakenImport", dtProd, 1, 0, dt, objBL.BL_nValidation(DRR[0]["Branch Name"]),
                                            DRR[0]["Customer Name"], DRR[0]["Beat Name"], DRR[0]["Salesman Name"], DRR[0]["Order ID"], objBL.BL_dValidation(DRR[0]["Additional Discount %"]),
                                            objBL.BL_dValidation(DRR[0]["Trade Discount %"]), 1, 0, DRR[0]["Remarks"], objBL.BL_nValidation(Session["LoginUserID"]), 1, 1);
                                        if (dtResult.Rows.Count == 3)//
                                        {
                                            objBL.bl_Transaction(3);
                                        }
                                        objBL.bl_Transaction(2);
                                    }
                                    if (dtWrongValues.Rows.Count == 0)
                                    {
                                        MTM.Add(new ImportResults()
                                        {
                                            ID = "0",
                                            Msg = "Data Saved Successfully.",
                                            Total = Convert.ToString(dtData.Rows.Count),
                                            Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                            UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                        });
                                    }
                                }
                                else
                                {
                                    //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "Error Files\\";
                                    strFilePath = FPt + "Error Files\\";
                                    strFileName = TransName + "_Error_" + DateTime.Now.ToString("yyyyMMddHHmmss");
                                    strSheetName = "Data";
                                    ExportToExcel(dtWrongValues);
                                    MTM.Add(new ImportResults()
                                    {
                                        ID = "1",
                                        Msg = "Data Not Saved. Error occured in some documents. See error list in downloads.",
                                        FileName = strFileName + strExtension,
                                        FilePath = strFilePath + strFileName + strExtension,
                                        Total = Convert.ToString(dtData.Rows.Count),
                                        Saved = Convert.ToString(dtCorrectValues.Rows.Count),
                                        UnSaved = Convert.ToString(dtWrongValues.Rows.Count),
                                    });
                                }
                                return Json(MTM, JsonRequestBehavior.AllowGet);
                            }
                            else
                            {
                                Msg = "0";
                            }
                        }
                        #endregion
                    }
                    else
                    {
                        Msg = "2";// column names mismatching
                    }
                }
                else
                {
                    Msg = "1";// file not choosing
                }
            }
            catch (Exception ex)
            {
                MTM.Add(new ImportResults()
                {
                    ID = "2",
                    Msg = ex.Message + " Date : " + dt,
                });
                return Json(MTM, JsonRequestBehavior.AllowGet);
            }
            return Json(Msg, JsonRequestBehavior.AllowGet);
        }
        public string CustomerImpValiation(DataTable dtCheck)
        {
            string RowError = "";

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Code *"].ToString()))
            {
                RowError += "Code : Code should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Code *"].ToString()))
                {
                    RowError += "Code : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Name *"].ToString()))
            {
                RowError += "Name : Name should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Name *"].ToString()))
                {
                    RowError += "Name : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Customer Type"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Customer Type"].ToString()))
                {
                    RowError += "Customer Type : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Price Type *"].ToString()))
            {
                RowError += "Price Type should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Price Type *"].ToString()))
                {
                    RowError += "Price Type : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Owner Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Owner Name"].ToString()))
                {
                    RowError += "Owner Name : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Contact Person"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Contact Person"].ToString()))
                {
                    RowError += "Contact Person : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Email ID"].ToString()))
            {
                if (!objBL.BL_Email(dtCheck.Rows[0]["Email ID"].ToString()))
                {
                    RowError += "Email ID : Invalid Email Format\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Phone No 1"].ToString()))
            {
                if (!objBL.BL_MobileNumberValidate(dtCheck.Rows[0]["Phone No 1"].ToString()))
                {
                    RowError += "Phone No 1 : Invalid Phone No Format\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Phone No 2"].ToString()))
            {
                if (!objBL.BL_MobileNumberValidate(dtCheck.Rows[0]["Phone No 2"].ToString()))
                {
                    RowError += "Phone No 2 : Invalid Phone No Format\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Mobile No 1"].ToString()))
            {
                if (!objBL.BL_MobileNumberValidate(dtCheck.Rows[0]["Mobile No 1"].ToString()))
                {
                    RowError += "Mobile No 1 : Invalid Mobile No Format\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Mobile No 2"].ToString()))
            {
                if (!objBL.BL_MobileNumberValidate(dtCheck.Rows[0]["Mobile No 2"].ToString()))
                {
                    RowError += "Mobile No 2 : Invalid Mobile No Format\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Billing Address 1"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Billing Address 1"].ToString()))
                {
                    RowError += "Billing Address 1 : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Billing Address 2"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Billing Address 2"].ToString()))
                {
                    RowError += "Billing Address 2 : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Billing Address 3"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Billing Address 3"].ToString()))
                {
                    RowError += "Billing Address 3 : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Shipping Address 1"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Shipping Address 1"].ToString()))
                {
                    RowError += "Shipping Address 1 : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Shipping Address 2"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Shipping Address 2"].ToString()))
                {
                    RowError += "Shipping Address 2 : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Shipping Address 3"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Shipping Address 3"].ToString()))
                {
                    RowError += "Shipping Address 3 : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Pincode *"].ToString()))
            {
                RowError += "Pincode should not be empty\n";
            }
            else
            {
                if (!objBL.BL_PinNumberValidate(dtCheck.Rows[0]["Pincode *"].ToString()))
                {
                    RowError += "Pincode : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Distance"].ToString()))
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["Distance"].ToString()))
                {
                    RowError += "Distance : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Credit Limit Value"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Credit Limit Value"].ToString()))
                {
                    RowError += "Credit Limit Value : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Credit Limit Count"].ToString()))
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["Credit Limit Count"].ToString()))
                {
                    RowError += "Credit Limit Count : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Over Due Value"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Over Due Value"].ToString()))
                {
                    RowError += "Over Due Value : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Over Due Inv Count"].ToString()))
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["Over Due Inv Count"].ToString()))
                {
                    RowError += "Over Due Inv Count : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["PAN Number"].ToString()))
            {
                if (!objBL.BL_PANValidation(dtCheck.Rows[0]["PAN Number"].ToString()))
                {
                    RowError += "PAN Number : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Aadhar No"].ToString()))
            {
                if (!objBL.BL_AadhaarValidate(dtCheck.Rows[0]["Aadhar No"].ToString()))
                {
                    RowError += "Aadhar No : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["FSSAI No"].ToString()))
            {
                if (!objBL.BL_FSSAIValidate(dtCheck.Rows[0]["FSSAI No"].ToString()))
                {
                    RowError += "FSSAI No : Invalid character(Numbers only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["State Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["State Name"].ToString()))
                {
                    RowError += "State Name : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["GSTIN"].ToString()))
            {
                if (!objBL.BL_isValidGSTIN(dtCheck.Rows[0]["GSTIN"].ToString()))
                {
                    RowError += "GSTIN : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Tax Type *"].ToString()))
            {
                RowError += "Tax Type should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumeric(dtCheck.Rows[0]["Tax Type *"].ToString()))
                {
                    RowError += "Tax Type : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Payment Mode"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Payment Mode"].ToString()))
                {
                    RowError += "Payment Mode : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Credit Term"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Credit Term"].ToString()))
                {
                    RowError += "Credit Term : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Discount %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Discount %"].ToString()))
                {
                    RowError += "Discount % : Invalid character\n";
                }
                else
                {
                    if(objBL.BL_dValidation(dtCheck.Rows[0]["Discount %"].ToString()) > 100)
                    {
                        RowError += "Discount % : % should be less than 100\n";
                    }
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Remark"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Remark"].ToString()))
                {
                    RowError += "Remark : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Rating"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Rating"].ToString()))
                {
                    RowError += "Rating : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["TCS Tax"].ToString()))
            {
                RowError += "TCS Tax should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["TCS Tax"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["TCS Tax"].ToString().ToUpper() != "N")
                {
                    RowError += "TCS Tax : Value should be Y or N\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Track Point"].ToString()))
            {
                RowError += "Track Point should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Track Point"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Track Point"].ToString().ToUpper() != "N")
                {
                    RowError += "Track Point : Value should be Y or N\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Active"].ToString()))
            {
                RowError += "Active should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Active"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Active"].ToString().ToUpper() != "N")
                {
                    RowError += "Active : Value should be Y or N\n";
                }
            }
            //Code *	Name *	Customer Type	Price Type *	Owner Name	Contact Person	Email ID	Phone No 1	
            //Phone No 2	Mobile No 1	Mobile No 2	Billing Address 1	Billing Address 2	Billing Address 3	
            //Shipping Address 1	Shipping Address 2	Shipping Address 3	Pincode *	Distance	Credit Limit Value	
            //Credit Limit Count	Over Due Value	Over Due Inv Count	PAN Number	Aadhar No	FSSAI No	DL No 20	
            //DL No 21	State Name	GSTIN	Tax Type *	Payment Mode	Credit Term	Discount %	Remark	Rating	
            //TCS Tax	Track Point	Active

            return RowError;
        }
        public string ProductImpValiation(DataTable dtCheck)
        {
            string RowError = "";
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Code *"].ToString()))
            {
                RowError += "Code : Code should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Code *"].ToString()))
                {
                    RowError += "Code : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Name *"].ToString()))
            {
                RowError += "Name : Name should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Name *"].ToString()))
                {
                    RowError += "Name : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["EAN *"].ToString()))
            {
                RowError += "EAN : EAN should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["EAN *"].ToString()))
                {
                    RowError += "EAN : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Mfr Name *"].ToString()))
            {
                RowError += "Mfr Name : Mfr Name should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Mfr Name *"].ToString()))
                {
                    RowError += "Mfr Name : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Brand Name *"].ToString()))
            {
                RowError += "Brand Name : Brand Name should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Brand Name *"].ToString()))
                {
                    RowError += "Brand Name : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Category Name *"].ToString()))
            {
                RowError += "Category Name : Category Name should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Category Name *"].ToString()))
                {
                    RowError += "Category Name : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["HSN Code"].ToString()))
            {
                if (!objBL.BL_HSNSACValidation(dtCheck.Rows[0]["HSN Code"].ToString()))
                {
                    RowError += "HSN Code : Invalid Format(Upto 8 Numeric Only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Discount %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Discount %"].ToString()))
                {
                    RowError += "Discount % : Invalid Format(Numbers Only)\n";
                }
                else
                {
                    if (objBL.BL_dValidation(dtCheck.Rows[0]["Discount %"].ToString()) > 100)
                    {
                        RowError += "Discount % : % should be lessthan 100\n";
                    }
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Base Uom *"].ToString()))
            {
                RowError += "Base Uom : Base Uom should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Base Uom *"].ToString()))
                {
                    RowError += "Base Uom : Invalid character\n";
                }                
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Base CR *"].ToString()))
            {
                RowError += "Base CR : Base CR should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Base CR *"].ToString()))
                {
                    RowError += "Base CR : Invalid character\n";
                }
                else
                {
                    if (objBL.BL_dValidation(dtCheck.Rows[0]["Base CR *"].ToString()) != 1)
                    {
                        RowError += "Base CR : Base CR must be 1\n";
                    }
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Purchase Uom *"].ToString()))
            {
                RowError += "Purchase Uom : Purchase Uom should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Purchase Uom *"].ToString()))
                {
                    RowError += "Purchase Uom : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Purchase CR *"].ToString()))
            {
                RowError += "Purchase CR : Purchase CR should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Purchase CR *"].ToString()))
                {
                    RowError += "Purchase CR : Invalid character\n";
                }                
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sales Uom *"].ToString()))
            {
                RowError += "Sales Uom : Sales Uom should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Sales Uom *"].ToString()))
                {
                    RowError += "Sales Uom : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sales CR *"].ToString()))
            {
                RowError += "Sales CR : Sales CR should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Sales CR *"].ToString()))
                {
                    RowError += "Sales CR : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Reporting Uom *"].ToString()))
            {
                RowError += "Reporting Uom : Reporting Uom should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Reporting Uom *"].ToString()))
                {
                    RowError += "Reporting Uom : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Reporting CR *"].ToString()))
            {
                RowError += "Reporting CR : Reporting CR should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Reporting CR *"].ToString()))
                {
                    RowError += "Reporting CR : Invalid character\n";
                }
            }
            //if (string.IsNullOrEmpty(dtCheck.Rows[0]["Reporting Qty *"].ToString()))
            //{
            //    RowError += "Reporting Qty : Reporting Uom should not be empty\n";
            //}
            //else
            //{
            //    if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Reporting Qty *"].ToString()))
            //    {
            //        RowError += "Reporting Qty : Invalid character\n";
            //    }
            //}

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Purchase Tax *"].ToString()))
            {
                RowError += "Purchase Tax : Purchase Tax should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Purchase Tax *"].ToString()))
                {
                    RowError += "Purchase Tax : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sales Tax *"].ToString()))
            {
                RowError += "Sales Tax : Sales Tax should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Sales Tax *"].ToString()))
                {
                    RowError += "Sales Tax : Invalid character\n";
                }
            }           
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sale on MRP"].ToString()))
            {
                RowError += "Sale on MRP : Sale on MRP should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Sale on MRP"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Sale on MRP"].ToString().ToUpper() != "N")
                {
                    RowError += "Sale on MRP : Value should be Y or N\n";
                }
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Sales Margin %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Sales Margin %"].ToString()))
                {
                    RowError += "Sales Margin % : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sales Price *"].ToString()))
            {
                RowError += "Sales Price : Sales Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Sales Price *"].ToString()))
                {
                    RowError += "Sales Price : Invalid character\n";
                }
            }
            //ecp
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["ECP on MRP"].ToString()))
            {
                RowError += "ECP on MRP : ECP on MRP should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["ECP on MRP"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["ECP on MRP"].ToString().ToUpper() != "N")
                {
                    RowError += "ECP on MRP : Value should be Y or N\n";
                }
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["ECP Margin %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["ECP Margin %"].ToString()))
                {
                    RowError += "ECP Margin % : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["ECP *"].ToString()))
            {
                RowError += "ECP : ECP Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["ECP *"].ToString()))
                {
                    RowError += "ECP : Invalid character\n";
                }
            }
            //spl
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["SPL on MRP"].ToString()))
            {
                RowError += "SPL on MRP : SPL on MRP should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["SPL on MRP"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["SPL on MRP"].ToString().ToUpper() != "N")
                {
                    RowError += "SPL on MRP : Value should be Y or N\n";
                }
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["SPL Margin %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["SPL Margin %"].ToString()))
                {
                    RowError += "SPL Margin % : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["SPL Price *"].ToString()))
            {
                RowError += "SPL Price : SPL Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["SPL Price *"].ToString()))
                {
                    RowError += "SPL Price : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["MRP *"].ToString()))
            {
                RowError += "MRP : MRP should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["MRP *"].ToString()))
                {
                    RowError += "MRP : Invalid character\n";
                }
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Return Price"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Return Price"].ToString()))
                {
                    RowError += "Return Price : Invalid character\n";
                }
            }
            //
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Track Inventory"].ToString()))
            {
                RowError += "Track Inventory : Track Inventory should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Track Inventory"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Track Inventory"].ToString().ToUpper() != "N")
                {
                    RowError += "Track Inventory : Value should be Y or N\n";
                }
            }
            //
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Track Batch"].ToString()))
            {
                RowError += "Track Batch : Track Batch should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Track Batch"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Track Batch"].ToString().ToUpper() != "N")
                {
                    RowError += "Track Batch : Value should be Y or N\n";
                }
            }
            //PKD
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Track PKD"].ToString()))
            {
                RowError += "Track PKD : Track PKD should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Track PKD"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Track PKD"].ToString().ToUpper() != "N")
                {
                    RowError += "Track PKD : Value should be Y or N\n";
                }
            }
            //SERI
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Track Serial"].ToString()))
            {
                RowError += "Track Serial : Track Serial should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Track Serial"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Track Serial"].ToString().ToUpper() != "N")
                {
                    RowError += "Track Serial : Value should be Y or N\n";
                }
            }
            //DF
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Date Format"].ToString()))
            {
                RowError += "Date Format : Date Format should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Date Format"].ToString().ToUpper() != "DMY" && dtCheck.Rows[0]["Date Format"].ToString().ToUpper() != "YM")
                {
                    RowError += "Date Format : Value should be DMY or YM\n";
                }
            }
            bool barcodechk = false;
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Barcode Print"].ToString()))
            {
                if (dtCheck.Rows[0]["Barcode Print"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Barcode Print"].ToString().ToUpper() != "N")
                {
                    RowError += "Barcode Print : Value should be Y or N\n";
                }
                else
                {
                    barcodechk = dtCheck.Rows[0]["Barcode Print"].ToString().ToUpper() == "Y";
                }
            }
            if (barcodechk)
            {
                if (string.IsNullOrEmpty(dtCheck.Rows[0]["Barcode Uom"].ToString()))
                {
                    RowError += "Barcode Uom : Barcode Uom should not be empty\n\n";
                }
                else
                {
                    if (!objBL.BL_AlphaNumeric(dtCheck.Rows[0]["Barcode Uom"].ToString()))
                    {
                        RowError += "Barcode Uom : Invalid character\n";
                    }
                }
            }
            if (barcodechk)
            {
                if (string.IsNullOrEmpty(dtCheck.Rows[0]["Barcode Price"].ToString()))
                {
                    RowError += "Barcode Price : Barcode Price should not be empty\n\n";
                }
                else
                {
                    if (!objBL.BL_AlphaNumeric(dtCheck.Rows[0]["Barcode Price"].ToString()))
                    {
                        RowError += "Barcode Price : Invalid character\n";
                    }
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Vendor Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Vendor Name"].ToString()))
                {
                    RowError += "Vendor Name : Invalid character\n";
                }
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["MOH"].ToString()))
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["MOH"].ToString()))
                {
                    RowError += "MOH : Invalid character(Numbers Only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["MOQ"].ToString()))
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["MOQ"].ToString()))
                {
                    RowError += "MOQ : Invalid character(Numbers Only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Remarks"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Remarks"].ToString()))
                {
                    RowError += "Remarks : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Location Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Location Name"].ToString()))
                {
                    RowError += "Location Name : Invalid character\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Life Time"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Life Time"].ToString()))
                {
                    RowError += "Life Time : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Active"].ToString()))
            {
                RowError += "Active : Active should not be empty\n\n";
            }
            else
            {
                if (dtCheck.Rows[0]["Active"].ToString().ToUpper() != "Y" && dtCheck.Rows[0]["Active"].ToString().ToUpper() != "N")
                {
                    RowError += "Active : Value should be Y or N\n";
                }
            }
            //D
            //"Code *","Name *","EAN *","Mfr Name *","Brand Name *","Category Name *","HSN Code","Discount %","Base Uom *","Base CR *","Purchase Uom *",
            //"Purchase CR *","Sales Uom *","Sales CR *","Reporting Uom *","Reporting CR *","Reporting Qty *","Purchase Tax *","Sales Tax *","Purchase Price *",
            //"Sale on MRP","Sales Margin %","Sales Price *","ECP on MRP","ECP Margin %","ECP *","SPL on MRP","SPL Margin %","SPL Price *","MRP *","Return Price",
            //"Track Inventory","Track Batch","Track Serial","Track PKD","Date Format","Barcode Print","Barcode Uom","Barcode Price","Vendor Name",
            //"MOH","MOQ","Remarks","Location Name","Weborder","Active"
            return RowError;
        }
        public string OrderTakenImpValiation(DataTable dtCheck)
        {
            string RowError = "";
            BranchID = 0; BeatID = 0; SalesmanID = 0; CustomerID = 0; ProductID = 0;
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Order ID"].ToString()))
            {
                RowError += "Order ID : Order ID should not be empty\n";
            }
            else
            {
                if (!objBL.BL_AlphaNumeric(dtCheck.Rows[0]["Order ID"].ToString()))
                {
                    RowError += "Order ID : Invalid character(Alpha Numeric Only)\n";
                }
            }
            
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Doc Date"].ToString()))
            {
                if (!objBL.BL_DateformatDMY(dtCheck.Rows[0]["Doc Date"].ToString()))
                {
                    RowError += "Doc Date : Invalid Format(DD/MM/YYYY) Only\n";
                }
            }
            else
            {
                RowError += "Doc Date : Doc Date should not be empty\n";
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Branch Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Branch Name"].ToString()))
                {
                    RowError += "Branch Name : Invalid Characters\n";
                }
                else
                {
                    DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 7, 3, dtCheck.Rows[0]["Branch Name"].ToString());
                    if (dt.Rows.Count == 0)
                    {
                        RowError += "* Branch Name not found in Database\n";
                    }
                    else
                    {
                        BranchID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                }
            }
            else
            {
                RowError += "Customer Name : Customer Name should not be empty\n";
            }
            
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Beat Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Beat Name"].ToString()))
                {
                    RowError += "Beat Name : Invalid Characters\n";
                }
                else
                {
                    DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 9, 3, dtCheck.Rows[0]["Beat Name"].ToString());
                    if (dt.Rows.Count == 0)
                    {
                        RowError += "* Beat Name not found in Database\n";
                    }
                    else
                    {
                        BeatID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Salesman Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Salesman Name"].ToString()))
                {
                    RowError += "Salesman Name : Invalid Characters\n";
                }
                else
                {
                    DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 10, 3, dtCheck.Rows[0]["Salesman Name"].ToString());
                    if (dt.Rows.Count == 0)
                    {
                        RowError += "* Salesman Name not found in Database\n";
                    }
                    else
                    {
                        SalesmanID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Customer Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Customer Name"].ToString()))
                {
                    RowError += "Customer Name : Invalid Characters\n";
                }
                else
                {
                    DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 8, 3, dtCheck.Rows[0]["Customer Name"].ToString());
                    if (dt.Rows.Count == 0)
                    {
                        RowError += "* Customer Name not found in Database\n";
                    }
                    else
                    {
                        CustomerID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                }
            }
            else
            {
                RowError += "Customer Name : Customer Name should not be empty\n";
            }

            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Additional Discount %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Additional Discount %"].ToString()))
                {
                    RowError += "Additional Discount % : Invalid character(Numeric Only)\n";
                }
                else
                {
                    if(objBL.BL_dValidation(dtCheck.Rows[0]["Additional Discount %"].ToString()) > 100)
                    {
                        RowError += "Additional Discount % : Discount % should be less than 100 only\n";
                    }
                    //if (objBL.BL_dValidation(dtCheck.Rows[0]["Trade Discount %"].ToString()) < 0)
                    //{
                    //    RowError += "Trade Discount % : Discount % should be greater than or equal to 0 only\n";
                    //}
                }
            }
            //T DETERGENT CAKE
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Trade Discount %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Trade Discount %"].ToString()))
                {
                    RowError += "Trade Discount % : Invalid character(Numeric Only)\n";
                }
                else
                {
                    if (objBL.BL_dValidation(dtCheck.Rows[0]["Trade Discount %"].ToString()) > 100)
                    {
                        RowError += "Trade Discount % : Discount % should be less than 100 only\n";
                    }
                    //if (objBL.BL_dValidation(dtCheck.Rows[0]["Trade Discount %"].ToString()) < 0)
                    //{
                    //    RowError += "Trade Discount % : Discount % should be greater than or equal to 0 only\n";
                    //}
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Remarks"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Remarks"].ToString()))
                {
                    RowError += "Remarks : Invalid Characters\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Product Name"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Product Name"].ToString()))
                {
                    RowError += "Product Name : Invalid Characters\n";
                }
                else
                {
                    DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 5, 3, dtCheck.Rows[0]["Product Name"].ToString());
                    if (dt.Rows.Count == 0)
                    {
                        RowError += "* Product Name not found in Database\n";
                    }
                    else
                    {
                        ProductID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    }
                }
            }
            else
            {
                RowError += "Product Name : Product Name should not be empty\n";
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Price"].ToString()))
            {
                RowError += "Price : Price Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Price"].ToString()))
                {
                    RowError += "Price : Invalid character\n";
                }
            }

            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Quantity"].ToString()))
            {
                RowError += "Quantity : Quantity should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Quantity"].ToString()))
                {
                    RowError += "Quantity : Invalid character\n";
                }
                if (objBL.BL_dValidation(dtCheck.Rows[0]["Quantity"].ToString()) <= 0)
                {
                    RowError += "Quantity : Quantity should be greater than 0 only\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Discount %"].ToString()))
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Discount %"].ToString()))
                {
                    RowError += "Discount % : Invalid character(Numeric Only)\n";
                }
                else
                {
                    if (objBL.BL_dValidation(dtCheck.Rows[0]["Discount %"].ToString()) > 100)
                    {
                        RowError += "Discount % : Discount % should be less than 100 only\n";
                    }
                    //if (objBL.BL_dValidation(dtCheck.Rows[0]["Trade Discount %"].ToString()) < 0)
                    //{
                    //    RowError += "Trade Discount % : Discount % should be greater than or equal to 0 only\n";
                    //}
                }
            }
            return RowError;
        }
        public string PriceChangeImpValiation(DataTable dtCheck)
        {
            string RowError = "";
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["ID"].ToString()))
            {
                RowError += "ID : ID should not be empty\n";
            }
            else
            {
                if (!objBL.BL_Numeric(dtCheck.Rows[0]["ID"].ToString()))
                {
                    RowError += "ID : Invalid character(Numbers Only)\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Batch No"].ToString()))
            {
                if (!objBL.BL_AlphaNumericSpl(dtCheck.Rows[0]["Batch No"].ToString()))
                {
                    RowError += "Batch No : Invalid Format(Alpha Numeric Only)\n";
                }                
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["PKD"].ToString()))
            {
                if (!objBL.BL_DateformatDMY(dtCheck.Rows[0]["PKD"].ToString()))
                {
                    RowError += "PKD : Invalid Format (DD/MM/YYYY) Only\n";
                }
            }
            if (!string.IsNullOrEmpty(dtCheck.Rows[0]["Expiry"].ToString()))
            {
                if (!objBL.BL_DateformatDMY(dtCheck.Rows[0]["Expiry"].ToString()))
                {
                    RowError += "Expiry : Invalid Format (DD/MM/YYYY) Only\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Sales Price"].ToString()))
            {
                RowError += "Sales Price : Sales Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Sales Price"].ToString()))
                {
                    RowError += "Sales Price : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["ECP"].ToString()))
            {
                RowError += "ECP : ECP Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["ECP"].ToString()))
                {
                    RowError += "ECP : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["SPL Price"].ToString()))
            {
                RowError += "SPL Price : SPL Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["SPL Price"].ToString()))
                {
                    RowError += "SPL Price : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["MRP Incl"].ToString()))
            {
                RowError += "MRP Incl : MRP Incl should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["MRP Incl"].ToString()))
                {
                    RowError += "MRP Incl : Invalid character\n";
                }
            }
            if (string.IsNullOrEmpty(dtCheck.Rows[0]["Return Price"].ToString()))
            {
                RowError += "Return Price : Return Price should not be empty\n";
            }
            else
            {
                if (!objBL.BL_NumericWithDecimal(dtCheck.Rows[0]["Return Price"].ToString()))
                {
                    RowError += "Return Price : Invalid character\n";
                }
            }
            return RowError;
        }
        public string POImpValiation(DataRow dr)
        { 
            bool IsValid = true;
            string RowError = "";
            if (string.IsNullOrEmpty(dr.ItemArray[0].ToString()))
            {
                IsValid = false;
                RowError += "* Doc ID should not be empty\n";
            }
            if (string.IsNullOrEmpty(dr.ItemArray[1].ToString()))
            {
                IsValid = false;
                RowError += "* Doc Date should not be empty\n";
            }
            if (string.IsNullOrEmpty(dr.ItemArray[2].ToString()))
            {
                IsValid = false;
                RowError += "* Branch Name Should not be Empty\n";
            }
            else
            {
                DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 7, 3, dr.ItemArray[2].ToString());
                if (dt.Rows.Count == 0)
                {
                    IsValid = false;
                    RowError += "* Enter valid Branch Name\n";
                }
                else
                {
                    BranchID = Convert.ToInt32(dt.Rows[0][0].ToString());
                }
            }
            if (string.IsNullOrEmpty(dr.ItemArray[3].ToString()))
            {
                IsValid = false;
                RowError += "* Vendor Name Should not be Empty\n";
            }
            else
            {
                DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 4, 3, dr.ItemArray[3].ToString());
                if (dt.Rows.Count == 0)
                {
                    IsValid = false;
                    RowError += "* Enter valid Vendor Name\n";
                }
                else
                {
                    VendorID = Convert.ToInt32(dt.Rows[0][0].ToString());
                }
            }
            if (string.IsNullOrEmpty(dr.ItemArray[4].ToString()))
            {
                IsValid = false;
                RowError += "* Product Name Should not be Empty\n";
            }
            else
            {
                DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 5, 3, dr.ItemArray[4].ToString());
                if (dt.Rows.Count == 0)
                {
                    IsValid = false;
                    RowError += "* Enter valid Product Name\n";
                }
                else
                {
                    ProductID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    UOMID = Convert.ToInt32(dt.Rows[0][9].ToString());//base uom
                }
            }
            if (string.IsNullOrEmpty(dr.ItemArray[5].ToString()))
            {
                IsValid = false;
                RowError += "* Price should not be empty\n";
            }
            else
            {
                if (!objBL.NumberValidate(dr.ItemArray[5].ToString()))
                {
                    IsValid = false;
                    RowError += "* Invalid Format. Numeric only allowed\n";
                }
            }
            if (string.IsNullOrEmpty(dr.ItemArray[6].ToString()))
            {
                IsValid = false;
                RowError += "* Qty should not be empty\n";
            }
            else
            {
                if (!objBL.NumberValidate(dr.ItemArray[6].ToString()))
                {
                    IsValid = false;
                    RowError += "* Invalid Format. Numeric only allowed\n";
                }
            }
            if (string.IsNullOrEmpty(dr.ItemArray[7].ToString()))
            {
                IsValid = false;
                RowError += "* Tax Should not be Empty\n";
            }
            else
            {
                DataTable dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 6, 3, dr.ItemArray[7].ToString());
                if (dt.Rows.Count == 0)
                {
                    IsValid = false;
                    RowError += "* Enter valid Tax\n";
                }
                else
                {
                    TaxID = Convert.ToInt32(dt.Rows[0][0].ToString());
                    TaxPern = Convert.ToDecimal(dt.Rows[0][2].ToString());//base uom
                }
            }
            return RowError;
        }       
        public void ColumnValidation(List<string> lst, ref bool blResult)
        {
            try
            {
                blResult = true;
                List<string> lstdtColumn = new List<string>();
                string ffp = strFilePath + strFileName;
                SpreadsheetDocument docSelected = SpreadsheetDocument.Open(strFilePath + strFileName, false);
                IEnumerable<Sheet> AllSheet = docSelected.WorkbookPart.Workbook.Descendants<Sheet>();
                strSheetName = "Data";
                Sheet sCurrent = GetSelectedSheet(AllSheet);
                if (sCurrent != null)
                {
                    Worksheet worksheet = (docSelected.WorkbookPart.GetPartById(sCurrent.Id.Value) as WorksheetPart).Worksheet;
                    IEnumerable<Row> rows = worksheet.GetFirstChild<SheetData>().Descendants<Row>();
                    // Add Header Columns
                    foreach (Row row in rows)
                    {
                        if (row.RowIndex.Value == 1)
                        {
                            foreach (Cell cell in row.Descendants<Cell>())
                            {
                                lstdtColumn.Add(GetValue(docSelected, cell));
                            }
                        }
                        break;
                    }
                    // Verify Columns Count
                    if (lst.Count != lstdtColumn.Count)
                    {
                        blResult = false;
                    }
                    string ErrMsg = "";
                    // Verify Columns Names Are Same Or Not
                    foreach (string str in lst)
                    {
                        if (!lstdtColumn.Contains(str))
                        {
                            ErrMsg = str;
                            blResult = false;
                            break;
                        }
                    }
                    if (blResult)
                    {
                        GetTable(docSelected, rows);
                        // Get the elapsed time as a TimeSpan value.
                    }
                    //docSelected.Close();
                }
            }
            catch (IOException)
            {

            }
            catch (Exception)
            {
                throw;
            }
        }
        public void GetTable(SpreadsheetDocument docSelected, IEnumerable<Row> rows)
        {
            DataTable dCheck = new DataTable();
            List<string> lstv = new List<string>();
            // Iterate Every Rows In Excel Sheet
            int TotalRowCount = rows.Count();

            decimal dRowFact = (decimal)TotalRowCount / 100;

            int TempRowCount = 0;

            foreach (Row row in rows)
            {
                if (row.RowIndex.Value == 1)
                {
                    foreach (Cell cell in row.Descendants<Cell>())
                    {
                        dCheck.Columns.Add(GetValue(docSelected, cell));
                        lstv.Add(Regex.Replace(cell.CellReference, @"[\d-]", string.Empty));
                    }
                }
                else
                {
                    dCheck.Rows.Add();
                    int nCount = 0, index = 0, TempCount;
                    foreach (Cell cell in row.Descendants<Cell>())
                    {
                        var vCellHeader = Regex.Replace(cell.CellReference, @"[\d-]", string.Empty);
                        var Temp = lstv[nCount];
                        if (lstv[nCount] != vCellHeader)
                        {
                            index = lstv.FindIndex(x => x.StartsWith(vCellHeader));
                            TempCount = nCount;
                            while (index > 0 && index > TempCount)
                            {
                                dCheck.Rows[dCheck.Rows.Count - 1][nCount] = null;
                                nCount++;
                                index--;
                            }
                        }
                        // Added By Sriram G
                        // Excel Cell Value Decimal Should be RoundOff 6 Digits
                        decimal dOutValue = 0.00M;
                        string strCellValue = GetValue(docSelected, cell);
                        //if (!string.IsNullOrEmpty(strCellValue))
                        //{
                        //    if (strCellValue.Contains('.'))
                        //    {
                        //        if (decimal.TryParse(strCellValue, out dOutValue))
                        //        {
                        //            strCellValue = Convert.ToString(Math.Round(Convert.ToDecimal(strCellValue), 6));
                        //        }
                        //    }
                        //}
                        dCheck.Rows[dCheck.Rows.Count - 1][nCount] = strCellValue;
                        nCount++;
                    }
                }

                TempRowCount++;
            }
            dtData = dCheck;
        }
        private string GetValue(SpreadsheetDocument doc, Cell cell)
        {
            try
            {
                if (cell.DataType != null && cell.DataType.Value == CellValues.SharedString)
                {
                    return doc.WorkbookPart.SharedStringTablePart.SharedStringTable.ChildElements[(int.Parse(cell.CellValue.InnerText))].InnerText;
                    return null;
                }
                else
                if (cell.StyleIndex != null)
                {
                    CellFormat cf = doc.WorkbookPart.WorkbookStylesPart.Stylesheet.CellFormats.ChildElements[int.Parse(cell.StyleIndex.InnerText)] as CellFormat;
                    if (cf.NumberFormatId == 14)
                    {
                        return DateTime.FromOADate(double.Parse(cell.CellValue.InnerText)).ToString("dd/MM/yyyy");
                    }
                    return cell.InnerText;
                }
                else
                {
                    return cell.InnerText;
                }
            }
            catch (NullReferenceException)
            {
                return null;
            }
            catch
            {
                throw;
            }
        }
        private Sheet GetSelectedSheet(IEnumerable<Sheet> Sheets)
        {
            foreach (Sheet sName in Sheets)
            {
                if (sName.Name == strSheetName)
                {
                    return sName;
                }
            }
            return null;
        }
        public FileResult GenerateTemplate(int TransID,string TransName)
        {
            DataTable dt = new DataTable();
            List<string> strTemp = null;
            if(TransID == 1)
            {
                strTemp = CustomerMasterTemp();
            }
            else if (TransID == 2) // product
            {
                strTemp = ProductMasterTemp();
            }
            else if (TransID == 3) // purchase order
            {
                strTemp = POImpDataTemp();
            }
            else if (TransID == 5) // order taken
            {
                strTemp = OrderTakenTemp();
            }
            OpenTemplate(strTemp, 1, TransID, TransName);
            var sDocument = strFilePath + strFileName + strExtension;
            byte[] fileBytes = System.IO.File.ReadAllBytes(sDocument);
            string fileName = strFileName + strExtension;
            return File(fileBytes, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", fileName);
        }
        public FileResult ExportData(int TransID, string TransName)
        {
            List<string> strTemp = null;
            if (TransID == 1)
            {
                strTemp = CustomerMasterTemp();
            }
            else if (TransID == 2) // product
            {
                strTemp = ProductMasterTemp();
            }
            else if (TransID == 3) // purchase order
            {
                strTemp = POImpDataTemp();
            }
            else if (TransID == 5) // order taken
            {
                strTemp = OrderTakenTemp();
            }
            DataTable dt = new DataTable();
            OpenTemplate(strTemp, 2, TransID, TransName);
            var sDocument = strFilePath + strFileName + strExtension;
            byte[] fileBytes = System.IO.File.ReadAllBytes(sDocument);
            string fileName = strFileName + strExtension;
            return File(fileBytes, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", fileName);
        }
        public FileResult DownloadErrorData(string FPath, string FName)
        {
            DataTable dt = new DataTable();
            //OpenTemplate(ImpDataTemp());
            var sDocument = FPath;
            byte[] fileBytes = System.IO.File.ReadAllBytes(sDocument);
            string fileName = FName;
            return File(fileBytes, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet", fileName);
        }
        public void OpenTemplate(List<string> str, int Type, int TransID, string TransName)
        {
            DataTable dt = new DataTable();
            DataTable dtDefaultData = new DataTable();
            DataTable dtExampleData = new DataTable();
            string FPt = System.Configuration.ConfigurationManager.AppSettings["SupportFilePath"];
            //strFilePath = AppDomain.CurrentDomain.BaseDirectory + "\\Export Data\\";
            strFilePath = FPt + "\\Export Data\\";
            strFileName = TransName+(Type == 1 ? "_Import_" : "_Export_") + DateTime.Now.ToString("yyyyMMddHHmmss");
            if (Type == 1)
            {
                foreach (string strHeaderName in str)
                {
                    dt.Columns.Add(strHeaderName, typeof(string));
                }
                DataTable dt1 = objBL.BL_ExecuteSqlQuery("SELECT TaxName '* Tax Name *'  FROM tblMasterTax where Active = 1 order by TaxName");
                DataTable dt2 = objBL.BL_ExecuteSqlQuery("SELECT Name '* Branch *'  FROM tblMasterBranchOffice where Active = 1 order by Name");
               
                dtDefaultData = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 2, TransID);
                dtExampleData = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 3, TransID);
                
            }
            else if (Type == 2)
            {
                dt = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 1, TransID);
                dtDefaultData = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 2, TransID);
                dtExampleData = objBL.BL_ExecuteParamSP("uspgetsetImportExport", 3, TransID);
            }
            strSheetName = "Data";
            ExportToExcelThreeSheet(dt, "Data", dtDefaultData, "Default Data", dtExampleData, "Example");
            
        }
        public void ExportToExcel(DataTable DtData)
        {
            try
            {                
                //Exporting to Excel
                if (!Directory.Exists(strFilePath))
                {
                    Directory.CreateDirectory(strFilePath);
                }
                using (XLWorkbook wb = new XLWorkbook())
                {
                    Int32 len = strSheetName.Length;
                    wb.Worksheets.Add(DtData, strSheetName.Substring(0, len).Trim());
                    wb.SaveAs(strFilePath + strFileName + strExtension);
                }
            }
            catch (IOException ex)
            {
                objBL.BL_WriteErrorMsginLog("Import/Emport", "ExportToExcel", ex.Message);
            }
            catch (Exception ex)
            {
                objBL.BL_WriteErrorMsginLog("Import/Emport", "ExportToExcel", ex.Message);
                throw;
            }
        }
        public void ExportToExcelTwoSheet(DataTable DtDataSheet1,string Sheet1Name, DataTable DtDataSheet2, string Sheet2Name)
        {
            try
            {
                //Exporting to Excel
                if (!Directory.Exists(strFilePath))
                {
                    Directory.CreateDirectory(strFilePath);
                }
                using (XLWorkbook wb = new XLWorkbook())
                {
                    Int32 len = Sheet1Name.Length;                    
                    wb.Worksheets.Add(DtDataSheet1, Sheet1Name.Substring(0, len).Trim());
                    len = Sheet2Name.Length;
                    wb.Worksheets.Add(DtDataSheet2, Sheet2Name.Substring(0, len).Trim());
                    wb.SaveAs(strFilePath + strFileName + strExtension);
                }
            }
            catch (IOException)
            {

            }
            catch (Exception)
            {
                throw;
            }
        }
        public void ExportToExcelThreeSheet(DataTable DtDataSheet1, string Sheet1Name, DataTable DtDataSheet2, string Sheet2Name, DataTable DtDataSheet3, string Sheet3Name)
        {
            try
            {
                //Exporting to Excel
                if (!Directory.Exists(strFilePath))
                {
                    Directory.CreateDirectory(strFilePath);
                }
                using (XLWorkbook wb = new XLWorkbook())
                {
                    Int32 len = Sheet1Name.Length;
                    wb.Worksheets.Add(DtDataSheet1, Sheet1Name.Substring(0, len).Trim());
                    len = Sheet2Name.Length;
                    wb.Worksheets.Add(DtDataSheet2, Sheet2Name.Substring(0, len).Trim());
                    len = Sheet3Name.Length;
                    wb.Worksheets.Add(DtDataSheet3, Sheet3Name.Substring(0, len).Trim());
                    wb.SaveAs(strFilePath + strFileName + strExtension);
                }
            }
            catch (IOException)
            {

            }
            catch (Exception)
            {
                throw;
            }
        }
        public static List<string> POImpDataTemp()
        {
            return new List<string>()
            {
                "Doc ID","Doc Date","Branch Name","Vendor Name","Item Name","Price","Qty","Tax"
            };
        }
        public static List<string> POImpDataTempWithErrCol()
        {
            return new List<string>()
            {
                "Doc ID","Doc Date","Branch Name","Vendor Name","Item Name","Price","Qty","Tax","Error"
            };
        }
        public static List<string> CustomerMasterTemp()
        {
            return new List<string>() 
            {
                "Code *","Name *","Customer Type","Price Type *","Owner Name","Contact Person","Email ID",
                "Phone No 1","Phone No 2","Mobile No 1","Mobile No 2","Billing Address 1","Billing Address 2",
                "Billing Address 3","Shipping Address 1","Shipping Address 2","Shipping Address 3","Pincode *","Distance",
                "Credit Limit Value","Credit Limit Count","Over Due Value","Over Due Inv Count","PAN Number","Aadhar No",
                "FSSAI No","DL No 20","DL No 21","State Name","GSTIN","Tax Type *","Payment Mode","Credit Term","Discount %",
                "Remark","Rating","TCS Tax","Track Point","Active"
                };
        }
        public static List<string> CustomerMasterTempWithErrCol()
        {
            return new List<string>()
            {
                "Code *","Name *","Customer Type","Price Type *","Owner Name","Contact Person","Email ID",
                "Phone No 1","Phone No 2","Mobile No 1","Mobile No 2","Billing Address 1","Billing Address 2",
                "Billing Address 3","Shipping Address 1","Shipping Address 2","Shipping Address 3","Pincode *","Distance",
                "Credit Limit Value","Credit Limit Count","Over Due Value","Over Due Inv Count","PAN Number","Aadhar No",
                "FSSAI No","DL No 20","DL No 21","State Name","GSTIN","Tax Type *","Payment Mode","Credit Term","Discount %",
                "Remark","Rating","TCS Tax","Track Point","Active","Error"
                };
        }
        public static List<string> ProductMasterTemp()
        {
            return new List<string>()
            {
                "Code *","Name *","EAN *","Mfr Name *","Brand Name *","Category Name *","HSN Code","Discount %","Base Uom *","Base CR *","Purchase Uom *",
                "Purchase CR *","Sales Uom *","Sales CR *","Reporting Uom *","Reporting CR *","Purchase Tax *","Sales Tax *","Purchase Price *",
                "Sale on MRP","Sales Margin %","Sales Price *","ECP on MRP","ECP Margin %","ECP *","SPL on MRP","SPL Margin %","SPL Price *","MRP *","Return Price",
                "Track Inventory","Track Batch","Track Serial","Track PKD","Date Format","Barcode Print","Barcode Uom","Barcode Price","Vendor Name",
                "MOH","MOQ","Remarks","Location Name","Weborder","Life Time","Active"
            };
        }
        public static List<string> ProductMasterTempWithErrCol()
        {
            return new List<string>()
            {
                "Code *","Name *","EAN *","Mfr Name *","Brand Name *","Category Name *","HSN Code","Discount %","Base Uom *","Base CR *","Purchase Uom *",
                "Purchase CR *","Sales Uom *","Sales CR *","Reporting Uom *","Reporting CR *","Purchase Tax *","Sales Tax *","Purchase Price *",
                "Sale on MRP","Sales Margin %","Sales Price *","ECP on MRP","ECP Margin %","ECP *","SPL on MRP","SPL Margin %","SPL Price *","MRP *","Return Price",
                "Track Inventory","Track Batch","Track Serial","Track PKD","Date Format","Barcode Print","Barcode Uom","Barcode Price","Vendor Name",
                "MOH","MOQ","Remarks","Location Name","Weborder","Life Time","Active","Error"
            };
        }
        public static List<string> PrichangeTemp()
        {
            return new List<string>() {
              "ID", "Code", "Name", "Branch",   "Manufacturer", "Brand",    "Category", "Batch No", "PKD",  "Expiry",   "Sales Price",  "ECP",  "SPL Price",    "Return Price", "MRP Incl"
            };
        }
        public static List<string> PrichangeTempWithErrCol()
        {
            return new List<string>() {
              "ID","Code","Name","Branch","Manufacturer","Brand","Category","Batch No","PKD","Expiry","Sales Price","ECP","SPL Price",
                "Return Price", "MRP Incl","Error"
            };
        }
        public static List<string> OrderTakenTemp()
        {
            return new List<string>() {
                "Order ID", "Doc Date","Branch Name","Beat Name","Salesman Name","Customer Name","Additional Discount %","Trade Discount %","Remarks","Product Name", "Price","Quantity","Discount %"
            };
        }
        public static List<string> OrderTakenTempWithErrCol()
        {
            return new List<string>() {
                "Order ID", "Doc Date","Branch Name","Beat Name","Salesman Name","Customer Name","Additional Discount %","Trade Discount %","Remarks","Product Name", 
                "Price","Quantity","Discount %","Error"
            };
        }
    }
}
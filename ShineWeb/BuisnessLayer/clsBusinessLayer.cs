using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Globalization;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using System.Windows.Forms;

namespace ShineWeb.BuisnessLayer
{
    public class clsBusinessLayer
    {
        DALHelper.clsDAL ObjDL = new DALHelper.clsDAL();
        
        public DataTable BL_ExecuteParamSP(string strProcedure, params object[] objParams)
        {
            return ObjDL.dl_ExecuteParamSP(strProcedure, objParams);
        }
        public DataTable BL_ExecuteSqlQuery(string strquery)
        {
            return ObjDL.dl_ExecuteSqlQuery(strquery);
        }
        public string BL_AppConfigValuebyID(int AppID)
        {
            string AppValue = "";
            DataTable dtApps = ObjDL.dl_ExecuteSqlQuery("SELECT * FROM tblAppConfig WHERE AppId = " + AppID);
            if (dtApps.Rows.Count > 0)
            {
                AppValue = dtApps.Rows[0][2].ToString();
            }
            return AppValue;
        }
        public string takeDBBackUp()
        {
            string strMsg = "";
            string path_bk = ConfigurationManager.AppSettings["SupportFilePath"] + @"BAK\";
            if (!Directory.Exists(path_bk))
            {
                Directory.CreateDirectory(path_bk);
            }
            DataTable dt = BL_ExecuteParamSP("uspTakeDBBackUp", path_bk);
            if (dt.Rows.Count > 0)
            {
                strMsg = dt.Rows[0][0].ToString();
            }
            strMsg = @"BackUp Successfully in this path:\n" + path_bk.Replace("\\", "\\\\") + Convert.ToString(strMsg);
            return strMsg;
        }
        public void bl_Transaction(int action)
        {
            ObjDL.dl_Transaction(action);
        }
        public DataTable bl_ManageTrans(string strStoredProc, params object[] obj)
        {
            return ObjDL.dl_ManageTrans(strStoredProc, obj);
        }
        public bool BL_CheckPermission(int UID, string FormName, int RoleID)
        {
            bool HasPermission = true;
            DataTable dt = BL_ExecuteParamSP("uspCheckPermission", UID, FormName, RoleID);
            HasPermission = dt.Rows.Count > 0 ? true : false;
            return HasPermission;
        }
        public bool SendEmail(string Subject, string Body, string ToMailID)
        {
            bool MailSend = false;
            try
            {
                string HostName = "", EMail = "", Pwd = "";
                //DataTable dtNames = BL_ExecuteParamSP("uspApplicationConfigValue");
                //if (dtNames.Rows.Count > 0)
                //{
                //    HostName = dtNames.Rows[0]["HostName"].ToString();
                //    EMail = dtNames.Rows[0]["EMailID"].ToString();
                //    Pwd = dtNames.Rows[0]["Password"].ToString();
                //}
                HostName = "smtp.gmail.com";
                EMail = "gksolutions.work007@gmail.com";
                Pwd = "ujrx zkfl kpfo dehr";
                if (!string.IsNullOrEmpty(HostName) && !string.IsNullOrEmpty(EMail) && !string.IsNullOrEmpty(Pwd))
                {
                    //
                    MailMessage message = new MailMessage();
                    SmtpClient smtp = new SmtpClient();
                    //message.From = new MailAddress("gks.helpdesk@gmail.com");//gks.helpdesk@gmail.com
                    message.From = new MailAddress(EMail);//gks.helpdesk@gmail.com//"vipassana.pveasllp@gmail.com"
                    message.To.Add(new MailAddress(ToMailID));
                    message.Subject = Subject;
                    message.IsBodyHtml = true; //to make message body as html  
                    message.Body = Body;
                    smtp.Port = 587;
                    smtp.Host = HostName;// "smtp.gmail.com"; //for gmail host  
                    smtp.EnableSsl = true;
                    smtp.UseDefaultCredentials = false;
                    //smtp.Credentials = new NetworkCredential("gks.helpdesk@gmail.com", "mkolocmylhzuuvdk");
                    //smtp.Credentials = new NetworkCredential("vipassana.pveasllp@gmail.com", "eyilfwmebqgydnjg");//pveasllp@2021
                    smtp.Credentials = new NetworkCredential(EMail, Pwd);
                    smtp.DeliveryMethod = SmtpDeliveryMethod.Network;

                    smtp.Send(message);
                    MailSend = true;
                }
                else
                {
                    MailSend = false;
                    //BL_WriteErrorMsginLog("BL", "Mail Send", "E-Mail config details are empty in App Config. You should give the details there.");
                }
            }
            catch (Exception ex)
            {
                MailSend = false;
                //BL_WriteErrorMsginLog("BL", "Mail Send - Exception", ex.Message);
                throw ex;
            }
            finally
            {

            }
            return MailSend;
        }
        public static CultureInfo SetSysCulture = new CultureInfo("es-ES");
        public DateTime? BL_DateFormatChange(string strdate)
        {
            DateTime? dtReturnDate = null;
            try
            {
                string TempDate = strdate;
                DateTime dtTemp;
                //string[] formats = { "dd/MM/yyyy", "dd-MM-yyyy", "dd.MM.yyyy" };
                //if (DateTime.TryParse(strdate, SetSysCulture.DateTimeFormat, DateTimeStyles.None, out dtTemp))
                //{
                //    dtReturnDate = dtTemp;
                //}
                dtReturnDate = DateTime.ParseExact(strdate, "yyyy-MM-dd",
                                       System.Globalization.CultureInfo.InvariantCulture);
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return dtReturnDate;
        }
        public IEnumerable<SelectListItem> GetSelectListItemsFromDictionary(Dictionary<string, string> elements)
        {
            // Create an empty list to hold result of the operation
            var selectList = new List<SelectListItem>();

            // For each string in the 'elements' variable, create a new SelectListItem object
            // that has both its Value and Text properties set to a particular value.
            // This will result in MVC rendering each item as:
            //     <option value="NameKey">Name</option>
            foreach (var element in elements)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.Key + ":" + element.Value,
                    Text = element.Value
                });
            }
            return selectList;
        }

        public IEnumerable<SelectListItem> GetFilteredItemsFromDictionary(Dictionary<string, string> elements)
        {
            // Create an empty list to hold result of the operation
            var selectList = new List<SelectListItem>();

            // For each string in the 'elements' variable, create a new SelectListItem object
            // that has both its Value and Text properties set to a particular value.
            // This will result in MVC rendering each item as:
            //     <option value="NameKey">Name</option>
            foreach (var element in elements)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element.Key,
                    Text = element.Value
                });
            }
            return selectList;
        }

        public IEnumerable<SelectListItem> GetSelectListItemsFromList(IEnumerable<string> elements)
        {
            var selectList = new List<SelectListItem>();
            foreach (var element in elements)
            {
                selectList.Add(new SelectListItem
                {
                    Value = element,
                    Text = element
                });
            }
            return selectList;
        }
        public decimal BL_RoundOffTwoDecimal(object objDecimalValue)
        {
            decimal dstrValue;
            string strdecimalValue = Convert.ToString(objDecimalValue);
            DataTable dtDecimal = BL_ExecuteSqlQuery("select AppValue from tblAppConfig where AppName in ('DecimalValues')");
            int strDigits = Convert.ToInt32(dtDecimal.Rows[0][0].ToString());// "0:0.00";
            if (decimal.TryParse(strdecimalValue, out dstrValue))
            {
                //string str = string.Format("{" + strDigits + "}", dstrValue);
                dstrValue = Math.Round(Convert.ToDecimal(strdecimalValue), strDigits);
            }
            else
            {
                string str = string.Format("{" + "0:0.00" + "}", 0);
                dstrValue = Convert.ToDecimal(str);
            }
            return dstrValue;
        }
        public string BL_AmountInWords(decimal inputNumber)
        {
            string strAmt = "";
            string strAmt_Paisa = "";
            strAmt = inputNumber.ToString();
            int aaa = inputNumber.ToString().IndexOf(".", 0);
            strAmt_Paisa = inputNumber.ToString().Substring(aaa + 1);
            strAmt = inputNumber.ToString().Substring(0, inputNumber.ToString().IndexOf(".", 0));
            if (Convert.ToDecimal(strAmt_Paisa.Trim()) == 0)
            {
                return "Rupees " + NumbersToWords(long.Parse(strAmt)) + " Only";
            }
            else
            {
                return "Rupees " + NumbersToWords(long.Parse(strAmt)) + " and Paisa " + NumbersToWords(long.Parse(strAmt_Paisa)) + " Only";
            }
        }
        private string NumbersToWords(long inputNumber)
        {
            if (inputNumber.ToString().Length < 11)
            {
                long inputNo = inputNumber;
                if (inputNo == 0)
                    return "Zero";
                long[] numbers = new long[4];
                long first = 0;
                long u, h, t;
                System.Text.StringBuilder sb = new System.Text.StringBuilder();
                if (inputNo < 0)
                {
                    sb.Append("Minus ");
                    inputNo = -inputNo;
                }
                string[] words0 = { "", "One ", "Two ", "Three ", "Four ", "Five ", "Six ", "Seven ", "Eight ", "Nine " };
                string[] words1 = { "Ten ", "Eleven ", "Twelve ", "Thirteen ", "Fourteen ", "Fifteen ", "Sixteen ", "Seventeen ", "Eighteen ", "Nineteen " };
                string[] words2 = { "Twenty ", "Thirty ", "Forty ", "Fifty ", "Sixty ", "Seventy ", "Eighty ", "Ninety " };
                string[] words3 = { "Thousand ", "Lakh ", "Crore " };

                numbers[0] = inputNo % 1000; // units
                numbers[1] = inputNo / 1000;
                numbers[2] = inputNo / 100000;
                numbers[1] = numbers[1] - 100 * numbers[2]; // thousands
                numbers[3] = inputNo / 10000000; // crores
                numbers[2] = numbers[2] - 100 * numbers[3]; // lakhs

                for (int i = 3; i > 0; i--)
                {
                    if (numbers[i] != 0)
                    {
                        first = i;
                        break;
                    }
                }
                for (long i = first; i >= 0; i--)
                {
                    if (numbers[i] == 0) continue;
                    u = numbers[i] % 10; // ones
                    t = numbers[i] / 10;
                    h = numbers[i] / 100; // hundreds
                    t = t - 10 * h; // tens
                    if (h > 0)
                        sb.Append(words0[h] + "Hundred ");
                    if (u > 0 || t > 0)
                    {
                        //if (h > 0 || i == 0) 
                        //    sb.Append("and ");
                        if (t == 0)
                            sb.Append(words0[u]);
                        else if (t == 1)
                            sb.Append(words1[u]);
                        else
                            sb.Append(words2[t - 2] + words0[u]);
                    }
                    if (i != 0)
                        sb.Append(words3[i - 1]);
                }
                return sb.ToString().TrimEnd();
            }
            return "Nothing";
        }
        public bool NumberValidate(string nLength)
        {
            bool bResult = false;
            Regex rg = new Regex("[0-9.]");
            if (rg.IsMatch(nLength))
            {
                bResult = true;
            }
            return bResult;
        }
        public Int32 BL_nValidation(object obj)
        {
            Int32 dstrValue;
            if (!Int32.TryParse(Convert.ToString(obj), out dstrValue))
            {
                dstrValue = 0;
            }
            return dstrValue;
        }
        public decimal BL_dValidation(object obj)
        {
            decimal dstrValue;
            if (!decimal.TryParse(Convert.ToString(obj), out dstrValue))
            {
                dstrValue = 0;
            }
            string number = Convert.ToString(dstrValue);
            if (number.Contains('.'))
            {
                if (number.Substring(number.IndexOf(".")).Length > 6)
                {
                    dstrValue = Math.Round(dstrValue, 6);
                    //dstrValue = Convert.ToDecimal(dstrValue.ToString().Substring(0, (dstrValue.ToString().IndexOf('.') + 7)));
                }
            }
            return dstrValue;
        }
        public bool BL_Alpha(string txtvalue)
        {
            if (txtvalue.ToString().All(char.IsLetter))
                return (true);
            else
                //MessageBox.Show("Enter Alphanumeric(A – Z)", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);
        }
        public bool BL_AlphaNumeric(string txtvalue)
        {
            if (txtvalue.ToString().All(char.IsLetterOrDigit))
                return (true);
            else
                return (false);
        }
        public bool BL_NumericValidation(string txtvalue)
        {
            if (txtvalue.ToString().All(char.IsDigit))
                return (true);
            else
                return (false);
        }
        public bool BL_AlphaNumericSpl(string txtvalue)
        {
            // @ % - _ | , / \ .
            string strRegex = @"^[a-zA-Z0-9_@. ,%|*~&()\/-]+$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
                return (true);
            else
                //MessageBox.Show("Enter AlphaNumeric With Spacial characters(A – Z or 0 – 9 or _ @ . , % /|)", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);

        }
        public bool BL_DateformatDMY(string txtvalue)
        {
            // @ % - _ | , / \ .
            string strRegex = @"[0-9]{2}/[0-9]{2}/[0-9]{4}";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
                return (true);
            else                
                return (false);

        }
        public bool BL_AlphaNumericSlashMinus(string txtvalue)
        {
            // @ % - _ | , / \ .
            string strRegex = @"^[a-zA-Z0-9/-]+$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
                return (true);
            else
                //MessageBox.Show("Enter AlphaNumeric With Spacial characters(A – Z or 0 – 9 or _ @ . , % /|)", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);

        }
        public bool BL_Numeric(object sender, KeyPressEventArgs e)
        {
            return e.Handled = ((e.KeyChar < '0' || e.KeyChar > '9') && e.KeyChar != '\b' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_Numeric(string txtvalue)
        {
            if (txtvalue.ToString().All(char.IsDigit))
                return (true);
            else
                // MessageBox.Show("Enter Numbers(0 - 9)", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);
        }
        public bool BL_PANValidation(string strrange)
        {
            try
            {
                if (strrange.Length >= 10 && strrange.Length <= 10)
                {
                    Regex rg = new Regex(@"[A-Z]{5}\d{4}[A-Z]{1}");
                    if (rg.IsMatch(strrange))
                    {
                        return true;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }
        public bool BL_HSNSACValidation(string strrange)
        {
            try
            {
                Regex rg = new Regex(@"[0-9]{0,8}");
                if (rg.IsMatch(strrange))
                {
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return false;
        }
        //^[0-9]+(\.[0-9]{1,2})?$
        public bool BL_NumericWithDecimal(string txtvalue)
        {
            //string strRegex = (@"(?<=^| )\d+(\.\d{1,2})?(?=$| )|(?<=^| )\.\d+(?=$| )"); //@"^\d+(\.\d{1,2})?$";
            string strRegex = (@"^\d+(\.\d{1,})?$");
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
            {
                return (true);
            }
            else if (txtvalue.All(char.IsNumber))
            {
                return (true);
            }
            else
                // MessageBox.Show("Enter Numeric or decimal with 2 Digit", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);
        }
        public bool BL_NumericWithDecimalMinus(string txtvalue)
        {
            //string strRegex = (@"(?<=^| )\d+(\.\d{1,2})?(?=$| )|(?<=^| )\.\d+(?=$| )"); //@"^\d+(\.\d{1,2})?$";
            string strRegex = (@"^-\d+(\.\d{1,})?$");
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
            {
                return (true);
            }
            else if (txtvalue.All(char.IsNumber))
            {
                return (true);
            }
            else
                // MessageBox.Show("Enter Numeric or decimal with 2 Digit", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);
        }
        public bool BL_AlphaNumeric(object sender, KeyPressEventArgs e)
        {
            return e.Handled = (!char.IsLetterOrDigit(e.KeyChar) && e.KeyChar != '\b' && e.KeyChar != ' ' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_Alpha(object sender, KeyPressEventArgs e)
        {
            return e.Handled = (!char.IsLetter(e.KeyChar) && e.KeyChar != '\b' && e.KeyChar != ' ' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_AlphaWithoutSpace(object sender, KeyPressEventArgs e)
        {
            return e.Handled = (!char.IsLetter(e.KeyChar) && e.KeyChar != '\b' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_AlphaNumerWoSpaceWSlash(object sender, KeyPressEventArgs e)
        {
            return e.Handled = ((!char.IsLetter(e.KeyChar) && !char.IsNumber(e.KeyChar)) && e.KeyChar != '/' && e.KeyChar != '\b' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_AlphaNumerWoSpaceWHyphonSlashComma(object sender, KeyPressEventArgs e)
        {
            return e.Handled = ((!char.IsLetter(e.KeyChar) && !char.IsNumber(e.KeyChar)) && e.KeyChar != '/' && e.KeyChar != '-' && e.KeyChar != ',' && e.KeyChar != '\b' && e.KeyChar != '\r' && e.KeyChar != '\u001b');
        }
        public bool BL_Dateonly(string txtvalue)
        {
            string strRegex = @"^(0[1-9]|[12][0-9]|3[01])[-/.](0[1-9]|1[012])[- /.](19|20)\d\d$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
                return (true);
            else
                // MessageBox.Show("Enter Format for date (dd(. or - or /)mm(. or - or /)yyyy)", " Validation Error ", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return (false);
        }
        public bool BL_Email(string txtvalue)
        {
            string strRegex = @"^([a-zA-Z0-9_\-\.]+)@((\[[0-9]{1,3}" + @"\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([a-zA-Z0-9\-]+\" + @".)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
            {
                return (true);
            }
            else
            {
                return (false);
            }
        }
        public bool BL_MobileNumberValidate(string nLength)
        {
            bool bResult = false;

            if (nLength.Length >= 10 && nLength.Length <= 12)
            {
                Regex rg = new Regex("[0-9]{10,12}");
                if (rg.IsMatch(nLength))
                {
                    bResult = true;
                }

            }
            return bResult;
        }
        public bool BL_AadhaarValidate(string nLength)
        {
            bool bResult = false;

            if (nLength.Length == 12)
            {
                Regex rg = new Regex("[0-9]{12}");
                if (rg.IsMatch(nLength))
                {
                    bResult = true;
                }

            }
            return bResult;
        }
        public bool BL_isValidGSTIN(string txtvalue)
        {
            string strRegex = @"^[0-9]{2}[A-Z]{5}[0-9]{4}[A-Z]{1}[A-Z0-9]{3}$";
            Regex re = new Regex(strRegex);
            if (re.IsMatch(txtvalue))
                return (true);
            else
                return (false);

        }
        public bool BL_FSSAIValidate(string nLength)
        {
            bool bResult = false;

            if (nLength.Length == 14)
            {
                Regex rg = new Regex("[0-9]{14}");
                if (rg.IsMatch(nLength))
                {
                    bResult = true;
                }

            }
            return bResult;
        }
        public bool BL_PinNumberValidate(string nLength)
        {
            bool bResult = false;
            Regex rg = new Regex("[0-9]{6}");
            if (rg.IsMatch(nLength))
            {
                bResult = true;
            }
            return bResult;
        }
        public bool BL_IsValidDate(string strdate)
        {
            bool bIsDate = false;
            try
            {
                if (this.BL_Dateonly(strdate) == true)
                {
                    DateTime dtTemp;
                    //SetSysCulture.DateTimeFormat
                    if (DateTime.TryParse(strdate, SetSysCulture.DateTimeFormat, DateTimeStyles.None, out dtTemp))
                    {
                        bIsDate = true;
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            return bIsDate;
        }
        public decimal BL_GetFormulaValue(DataTable dtValue, string strFormula, int nRowIndex)
        {
            try
            {
                string[] strArray = new string[dtValue.Columns.Count - 1];
                for (int i = 0; i < dtValue.Columns.Count - 1; i++)
                {
                    strArray[i] = "[" + dtValue.Columns[i].ColumnName + "]";
                }
                for (int i = 0; i < strArray.Length; i++)
                {
                    if (strFormula.Contains(strArray[i]))
                    {
                        string str = strArray[i];
                        str = str.Replace("[", "");
                        str = str.Replace("]", "");
                        DataTable dt = dtValue.DefaultView.ToTable(false, dtValue.Columns[str].ColumnName);
                        if (dt.Rows.Count > 0)
                        {
                            strFormula = strFormula.Replace(strArray[i], dt.Rows[nRowIndex][0].ToString());
                        }
                        dt.Dispose();
                    }
                }
                object objValue = new DataTable().Compute(strFormula, null);
                return Convert.ToDecimal(objValue);
            }
            catch (Exception)
            {
                return 0;
            }
        }
        public DataTable BL_GetTransName(params object[] obj)
        {
            return this.BL_ExecuteParamSP("uspGetTransName", obj);
        }
        public DataTable BL_GetPrintPreviewPage(int nConfigValue)
        {
            return BL_ExecuteParamSP("uspGetPrintConfig", nConfigValue);
        }
        public void BL_WriteErrorMsginLog(string strfrmName, string strmsg, string errors)
        {
            int Error = System.Runtime.InteropServices.Marshal.GetExceptionCode();
            BL_LogFileWrite(DateTime.Now + " |" + strfrmName + " | " + strmsg + " | " + errors);
        }
        //LOG SYSTEM ERROR MESSAGE
        public static void BL_LogFileWrite(string message)
        {
            FileStream fileStream = null;
            StreamWriter streamWriter = null;
            try
            {
                string logFilePath = System.Configuration.ConfigurationManager.AppSettings["SupportFilePath"];
                DirectoryInfo parentDir = Directory.GetParent(logFilePath.EndsWith("\\") ? logFilePath : string.Concat(logFilePath, "\\"));
                var myParentDir = parentDir.Parent.FullName;
                string strFol = myParentDir + "\\Log File Errors\\";

                strFol = strFol + "Log System Error" + "-" + DateTime.Today.ToString("ddMMyyyy") + "." + "txt";
                if (strFol.Equals("")) return;
                #region Create the Log file directory if it does not exists
                DirectoryInfo logDirInfo = null;
                FileInfo logFileInfo = new FileInfo(strFol);
                logDirInfo = new DirectoryInfo(logFileInfo.DirectoryName);
                if (!logDirInfo.Exists) logDirInfo.Create();
                #endregion Create the Log file directory if it does not exists
                if (!logFileInfo.Exists)
                {
                    fileStream = logFileInfo.Create();
                }
                else
                {
                    fileStream = new FileStream(strFol, FileMode.Append);
                }
                streamWriter = new StreamWriter(fileStream);
                streamWriter.WriteLine(message);
            }
            finally
            {
                if (streamWriter != null) streamWriter.Close();
                if (fileStream != null) fileStream.Close();
            }
        }
        public DataTable BL_StringSplitCommaHyphen(string str)
        {
            string[] strComma = str.Split(',').Select(sValue => sValue.Trim()).ToArray();
            DataTable dt = new DataTable();
            dt.Columns.Add("SerialNo", typeof(string));
            int nCount = 0;
            for (int i = 0; i < strComma.Length; i++)
            {
                if (strComma[i].Contains('-'))
                {
                    int nFrom = 0, nTo = 0;
                    string Prefix = "";
                    string[] strHypan = strComma[i].Split('-').Select(sValue => sValue.Trim()).ToArray();
                    bool IsNumOnly = this.IsNumvericValue(strHypan[0].Trim());
                    if (IsNumOnly)
                    {
                        nFrom = this.BL_nValidation(strHypan[0].Trim());
                        nTo = this.BL_nValidation(strHypan[1].Trim());
                    }
                    else
                    {
                        string[] strnumFrom = SeparateStringandNumber(strHypan[0].Trim());
                        Prefix = strnumFrom[0];
                        nFrom = this.BL_nValidation(strnumFrom[1].Trim());
                        string[] strnumTo = SeparateStringandNumber(strHypan[1].Trim());
                        nTo = this.BL_nValidation(strnumTo[1].Trim());
                    }

                    if (nFrom != 0 && nTo != 0)
                    {
                        if (nFrom < nTo)
                        {
                            for (int j = nFrom - 1; j <= nTo - 1; j++)
                            {
                                dt.Rows.Add();
                                dt.Rows[nCount][0] = IsNumOnly ? Convert.ToString(j + 1) : Prefix + (j + 1);
                                nCount++;
                            }
                        }
                        else
                        {
                            nCount = 0;
                            dt.Rows.Clear();
                            dt.Rows.Add();
                            dt.Rows[nCount][0] = "Range Should be [" + nTo + "-" + nFrom + "] Instead of [" + nFrom + "-" + nTo + "]";
                            break;
                        }
                    }
                    else
                    {
                        nCount = 0;
                        dt.Rows.Clear();
                        dt.Rows.Add();
                        dt.Rows[nCount][0] = "Range Should be Greater than Zero";
                        break;
                    }
                }
                else
                {
                    if (!string.IsNullOrEmpty(strComma[i].Trim()))
                    {
                        bool IsNumOnly = this.IsNumvericValue(strComma[0].Trim());
                        if (IsNumOnly)
                        {
                            if (this.BL_nValidation(strComma[i]) != 0)
                            {
                                dt.Rows.Add();
                                dt.Rows[nCount][0] = strComma[i].Trim();
                                nCount++;
                            }
                            else
                            {
                                nCount = 0;
                                dt.Rows.Clear();
                                dt.Rows.Add();
                                dt.Rows[nCount][0] = "Range Should be Greater than Zero";
                                break;
                            }
                        }
                        else
                        {
                            dt.Rows.Add();
                            dt.Rows[nCount][0] = strComma[i].Trim();
                            nCount++;
                        }

                    }
                }
            }
            return dt;
        }
        public bool IsNumvericValue(string Value)
        {
            bool IsNumeric = false;
            DataTable dt = this.BL_ExecuteSqlQuery("SELECT ISNUMERIC('" + Value + "')");
            if (dt.Rows.Count > 0)
            {
                IsNumeric = dt.Rows[0][0].ToString() == "1";
            }
            return IsNumeric;
        }
        public string[] SeparateStringandNumber(string Value)
        {
            string[] sapbyslash = Value.Split('/');
            if (sapbyslash.Length > 1)
            {
                Regex re = new Regex(@"([a-zA-Z]+)(\d+)");
                Match result = re.Match(Value);
                string Prefix = string.Empty;
                for (int i = 0; i < sapbyslash.Length - 1; i++)
                {
                    Prefix += sapbyslash[i] + "/";
                }
                string[] strandnum = { Prefix, sapbyslash[sapbyslash.Length - 1] };
                return strandnum;
            }
            else
            {
                Regex re = new Regex(@"([a-zA-Z]+)(\d+)");
                Match result = re.Match(Value);
                string[] strandnum = { result.Groups[1].Value, result.Groups[2].Value };
                return strandnum;
            }

        }
    }
}
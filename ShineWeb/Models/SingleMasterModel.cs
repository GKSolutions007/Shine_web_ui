using System;
using System.Collections.Generic;
using System.Linq;
using System.Transactions;
using System.Web;

namespace ShineWeb.Models
{
    public class SingleMasterModel
    {
        public string ID { get; set; }
        public string Name { get; set; }
        public string Value { get; set; }
        public string Active { get; set; }
        public string UserID { get; set; }
        public string Mode { get; set; }
        public string FormName { get; set; }
        public string FormID { get; set; }
        public string Add { get; set; }
        public string Modify { get; set; }
        public string Variant { get; set; }
        public string View { get; set; }
        public string Cancel { get; set; }
        public string Return { get; set; }
        public string EnableReturnPrice { get; set; }
        public string EnablePurchasePrice { get; set; }
        public string EnableBranch { get; set; }
        public string EnableSave { get; set; }
        public string EnableUpdateTransPrice { get; set; }
        public string EnablePriceEditInTransaction { get; set; }
        public string TransType { get; set; }
        public string TransID { get; set; }
        public string ViewDocID { get; set; }
        public string PartyID { get; set; }
        public string TransVariantID { get; set; }
        public string DependFrom { get; set; }
        public string ChildURL1 { get; set; }
        public string ChildURL2 { get; set; }
        public string ChildURL3 { get; set; }
        public string ChildURL4 { get; set; }
        public string ChildURL5 { get; set; }
        public string DraftModify { get; set; }
        public string DraftCancel { get; set; }
    }
    public class getsetdates
    {
        public string MinDate { get; set; }
        public string MaxDate { get; set; }
        public string Value { get; set; }
    }
    public class ImportResults
    {
        public string ID { get; set; }
        public string Total { get; set; }
        public string Saved { get; set; }
        public string UnSaved { get; set; }
        public string Msg { get; set; }
        public string FileName { get; set; }
        public string FilePath { get; set; }
    }
    public class LoginModel
    {
        public string CompanyID { get; set; }
        public string CompanyCode { get; set; }
        public string CompanyName { get; set; }
        public string CompanyFSD { get; set; }
        public string UserName { get; set; }
        public string UserPassword { get; set; }
    }
    public class Homescreen
    {
        public string CollectionDetailEnable { get; set; }
        public string ChequeDetailEnable { get; set; }
        public string TransVariantEnable { get; set; }
        public string Balances { get; set; }
        public string QuickAccess { get; set; }
        public string PendingDraft { get; set; }
        public string TransactionSummary { get; set; }

    }
}
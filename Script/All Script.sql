USE sampshineweb
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblTranPa__BTMod__61316BF4]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranPaymentHeader] DROP CONSTRAINT [DF__tblTranPa__BTMod__61316BF4]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblTranPaymentHeader_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranPaymentHeader] DROP CONSTRAINT [DF_tblTranPaymentHeader_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblTranCo__BTMod__5D60DB10]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranCollectionHeader] DROP CONSTRAINT [DF__tblTranCo__BTMod__5D60DB10]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblTranCollectionHeader_BRSStatus]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranCollectionHeader] DROP CONSTRAINT [DF_tblTranCollectionHeader_BRSStatus]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblTransCollectionHeader_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranCollectionHeader] DROP CONSTRAINT [DF_tblTransCollectionHeader_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblTranCollectionHeader_Balance]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblTranCollectionHeader] DROP CONSTRAINT [DF_tblTranCollectionHeader_Balance]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblProduc__Branc__4CF5691D]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblProductInventory] DROP CONSTRAINT [DF__tblProduc__Branc__4CF5691D]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblPaymentPMDetail_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblPaymentPMDetail] DROP CONSTRAINT [DF_tblPaymentPMDetail_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF__tblInvent__Conve__53A266AC]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblInventoryHeader] DROP CONSTRAINT [DF__tblInvent__Conve__53A266AC]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblInventoryHeader_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblInventoryHeader] DROP CONSTRAINT [DF_tblInventoryHeader_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblFAJournal_Adjusment]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblFAJournal] DROP CONSTRAINT [DF_tblFAJournal_Adjusment]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblCollPMDetails_Status]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCollPMDetails] DROP CONSTRAINT [DF_tblCollPMDetails_Status]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DF_tblCollPMDetails_Date]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[tblCollPMDetails] DROP CONSTRAINT [DF_tblCollPMDetails_Date]
END
GO
/****** Object:  Index [IX_TransGSTInfoID]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tblTransGSTInfo]') AND name = N'IX_TransGSTInfoID')
DROP INDEX [IX_TransGSTInfoID] ON [dbo].[tblTransGSTInfo]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUsers]') AND type in (N'U'))
DROP TABLE [dbo].[tblUsers]
GO
/****** Object:  Table [dbo].[tblTransPurchaseHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransPurchaseHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransPurchaseHeader]
GO
/****** Object:  Table [dbo].[tblTransPurchaseDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransPurchaseDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransPurchaseDetail]
GO
/****** Object:  Index [IX_TransGSTInfo]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tblTransGSTInfo]') AND name = N'IX_TransGSTInfo')
DROP INDEX [IX_TransGSTInfo] ON [dbo].[tblTransGSTInfo] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[tblTransGSTInfo]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransGSTInfo]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransGSTInfo]
GO
/****** Object:  Table [dbo].[tblTransAutomaticIndentHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransAutomaticIndentHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransAutomaticIndentHeader]
GO
/****** Object:  Table [dbo].[tblTransAutomaticIndentDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTransAutomaticIndentDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblTransAutomaticIndentDetail]
GO
/****** Object:  Table [dbo].[tblTranPRVoucher]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranPRVoucher]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranPRVoucher]
GO
/****** Object:  Table [dbo].[tblTranPaymentHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranPaymentHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranPaymentHeader]
GO
/****** Object:  Table [dbo].[tblTranPaymentDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranPaymentDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranPaymentDetail]
GO
/****** Object:  Table [dbo].[tblTranContra]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranContra]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranContra]
GO
/****** Object:  Table [dbo].[tblTranCollectionHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranCollectionHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranCollectionHeader]
GO
/****** Object:  Table [dbo].[tblTranCollectionDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTranCollectionDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblTranCollectionDetail]
GO
/****** Object:  Index [IX_tblTablesNames_ID]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[tblTablesNames]') AND name = N'IX_tblTablesNames_ID')
DROP INDEX [IX_tblTablesNames_ID] ON [dbo].[tblTablesNames] WITH ( ONLINE = OFF )
GO
/****** Object:  Table [dbo].[tblTablesNames]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblTablesNames]') AND type in (N'U'))
DROP TABLE [dbo].[tblTablesNames]
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblStatus]') AND type in (N'U'))
DROP TABLE [dbo].[tblStatus]
GO
/****** Object:  Table [dbo].[tblSampValidation]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSampValidation]') AND type in (N'U'))
DROP TABLE [dbo].[tblSampValidation]
GO
/****** Object:  Table [dbo].[tblSalesDraftHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSalesDraftHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblSalesDraftHeader]
GO
/****** Object:  Table [dbo].[tblSalesDraftDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblSalesDraftDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblSalesDraftDetail]
GO
/****** Object:  Table [dbo].[tblRolePermissions]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRolePermissions]') AND type in (N'U'))
DROP TABLE [dbo].[tblRolePermissions]
GO
/****** Object:  Table [dbo].[tblReportViewer]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblReportViewer]') AND type in (N'U'))
DROP TABLE [dbo].[tblReportViewer]
GO
/****** Object:  Table [dbo].[tblRatings]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblRatings]') AND type in (N'U'))
DROP TABLE [dbo].[tblRatings]
GO
/****** Object:  Table [dbo].[tblQuotationHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblQuotationHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblQuotationHeader]
GO
/****** Object:  Table [dbo].[tblQuotationDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblQuotationDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblQuotationDetail]
GO
/****** Object:  Table [dbo].[tblPurchaseOrderHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPurchaseOrderHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblPurchaseOrderHeader]
GO
/****** Object:  Table [dbo].[tblPurchaseOrderDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPurchaseOrderDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblPurchaseOrderDetail]
GO
/****** Object:  Table [dbo].[tblPurchaseDraftHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPurchaseDraftHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblPurchaseDraftHeader]
GO
/****** Object:  Table [dbo].[tblPurchaseDraftDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPurchaseDraftDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblPurchaseDraftDetail]
GO
/****** Object:  Table [dbo].[tblProductInventory]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProductInventory]') AND type in (N'U'))
DROP TABLE [dbo].[tblProductInventory]
GO
/****** Object:  Table [dbo].[tblPriceType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPriceType]') AND type in (N'U'))
DROP TABLE [dbo].[tblPriceType]
GO
/****** Object:  Table [dbo].[tblPaymentPMDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPaymentPMDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblPaymentPMDetail]
GO
/****** Object:  Table [dbo].[tblPaymentMode]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblPaymentMode]') AND type in (N'U'))
DROP TABLE [dbo].[tblPaymentMode]
GO
/****** Object:  Table [dbo].[tblParameterInfo]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblParameterInfo]') AND type in (N'U'))
DROP TABLE [dbo].[tblParameterInfo]
GO
/****** Object:  Table [dbo].[tblNoteDetails]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNoteDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tblNoteDetails]
GO
/****** Object:  Table [dbo].[tblMenus]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMenus]') AND type in (N'U'))
DROP TABLE [dbo].[tblMenus]
GO
/****** Object:  Table [dbo].[tblMasterVendor]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterVendor]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterVendor]
GO
/****** Object:  Table [dbo].[tblMasterVehicle]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterVehicle]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterVehicle]
GO
/****** Object:  Table [dbo].[tblMasterUserDefineNoHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterUserDefineNoHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterUserDefineNoHeader]
GO
/****** Object:  Table [dbo].[tblMasterUserDefineNoDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterUserDefineNoDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterUserDefineNoDetail]
GO
/****** Object:  Table [dbo].[tblMasterUOM]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterUOM]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterUOM]
GO
/****** Object:  Table [dbo].[tblMasterTaxType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterTaxType]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterTaxType]
GO
/****** Object:  Table [dbo].[tblMasterTaxDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterTaxDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterTaxDetail]
GO
/****** Object:  Table [dbo].[tblMasterTaxComponent]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterTaxComponent]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterTaxComponent]
GO
/****** Object:  Table [dbo].[tblMasterTax]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterTax]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterTax]
GO
/****** Object:  Table [dbo].[tblMasterService]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterService]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterService]
GO
/****** Object:  Table [dbo].[tblMasterSalesmanGroup]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterSalesmanGroup]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterSalesmanGroup]
GO
/****** Object:  Table [dbo].[tblMasterSalesman]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterSalesman]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterSalesman]
GO
/****** Object:  Table [dbo].[tblMasterRole]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterRole]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterRole]
GO
/****** Object:  Table [dbo].[tblMasterReturnType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterReturnType]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterReturnType]
GO
/****** Object:  Table [dbo].[tblMasterReason]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterReason]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterReason]
GO
/****** Object:  Table [dbo].[tblMasterProductHistory]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterProductHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterProductHistory]
GO
/****** Object:  Table [dbo].[tblMasterProductGroup]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterProductGroup]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterProductGroup]
GO
/****** Object:  Table [dbo].[tblMasterProduct]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterProduct]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterProduct]
GO
/****** Object:  Table [dbo].[tblMasterManufacturer]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterManufacturer]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterManufacturer]
GO
/****** Object:  Table [dbo].[tblMasterMailAddress]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterMailAddress]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterMailAddress]
GO
/****** Object:  Table [dbo].[tblMasterLocation]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterLocation]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterLocation]
GO
/****** Object:  Table [dbo].[tblMasterHistory]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterHistory]
GO
/****** Object:  Table [dbo].[tblMasterGift]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterGift]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterGift]
GO
/****** Object:  Table [dbo].[tblMasterCustomerVendorHistory]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterCustomerVendorHistory]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterCustomerVendorHistory]
GO
/****** Object:  Table [dbo].[tblMasterCustomerType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterCustomerType]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterCustomerType]
GO
/****** Object:  Table [dbo].[tblMasterCustomer]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterCustomer]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterCustomer]
GO
/****** Object:  Table [dbo].[tblMasterCreditTerm]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterCreditTerm]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterCreditTerm]
GO
/****** Object:  Table [dbo].[tblMasterChequeBookDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterChequeBookDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterChequeBookDetail]
GO
/****** Object:  Table [dbo].[tblMasterChequeBook]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterChequeBook]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterChequeBook]
GO
/****** Object:  Table [dbo].[tblMasterCategory]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterCategory]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterCategory]
GO
/****** Object:  Table [dbo].[tblMasterBrand]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterBrand]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterBrand]
GO
/****** Object:  Table [dbo].[tblMasterBranchOffice]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterBranchOffice]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterBranchOffice]
GO
/****** Object:  Table [dbo].[tblMasterBeat]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterBeat]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterBeat]
GO
/****** Object:  Table [dbo].[tblMasterBankAccount]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterBankAccount]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterBankAccount]
GO
/****** Object:  Table [dbo].[tblMasterBank]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblMasterBank]') AND type in (N'U'))
DROP TABLE [dbo].[tblMasterBank]
GO
/****** Object:  Table [dbo].[tblInventoryHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInventoryHeader]') AND type in (N'U'))
DROP TABLE [dbo].[tblInventoryHeader]
GO
/****** Object:  Table [dbo].[tblInventoryDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInventoryDetail]') AND type in (N'U'))
DROP TABLE [dbo].[tblInventoryDetail]
GO
/****** Object:  Table [dbo].[tblGSTStateNameandCode]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblGSTStateNameandCode]') AND type in (N'U'))
DROP TABLE [dbo].[tblGSTStateNameandCode]
GO
/****** Object:  Table [dbo].[tblFAType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFAType]') AND type in (N'U'))
DROP TABLE [dbo].[tblFAType]
GO
/****** Object:  Table [dbo].[tblFAJournelCancel]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFAJournelCancel]') AND type in (N'U'))
DROP TABLE [dbo].[tblFAJournelCancel]
GO
/****** Object:  Table [dbo].[tblFAJournal]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFAJournal]') AND type in (N'U'))
DROP TABLE [dbo].[tblFAJournal]
GO
/****** Object:  Table [dbo].[tblFAGroup]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFAGroup]') AND type in (N'U'))
DROP TABLE [dbo].[tblFAGroup]
GO
/****** Object:  Table [dbo].[tblFAAccount]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblFAAccount]') AND type in (N'U'))
DROP TABLE [dbo].[tblFAAccount]
GO
/****** Object:  Table [dbo].[tblDocumentSeries]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblDocumentSeries]') AND type in (N'U'))
DROP TABLE [dbo].[tblDocumentSeries]
GO
/****** Object:  Table [dbo].[tblContraType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblContraType]') AND type in (N'U'))
DROP TABLE [dbo].[tblContraType]
GO
/****** Object:  Table [dbo].[tblContraMode]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblContraMode]') AND type in (N'U'))
DROP TABLE [dbo].[tblContraMode]
GO
/****** Object:  Table [dbo].[tblCompanyRegistration]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCompanyRegistration]') AND type in (N'U'))
DROP TABLE [dbo].[tblCompanyRegistration]
GO
/****** Object:  Table [dbo].[tblColorSettings]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblColorSettings]') AND type in (N'U'))
DROP TABLE [dbo].[tblColorSettings]
GO
/****** Object:  Table [dbo].[tblCollPMDetails]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCollPMDetails]') AND type in (N'U'))
DROP TABLE [dbo].[tblCollPMDetails]
GO
/****** Object:  Table [dbo].[tblBeatSalesmanMapping]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblBeatSalesmanMapping]') AND type in (N'U'))
DROP TABLE [dbo].[tblBeatSalesmanMapping]
GO
/****** Object:  Table [dbo].[tblAppConfig]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAppConfig]') AND type in (N'U'))
DROP TABLE [dbo].[tblAppConfig]
GO
/****** Object:  Table [dbo].[tblAccountType]    Script Date: 12/02/2025 08:26:08 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblAccountType]') AND type in (N'U'))
DROP TABLE [dbo].[tblAccountType]
GO
/****** Object:  Table [dbo].[tblAccountType]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAccountType](
	[TypeID] [tinyint] NULL,
	[TypeName] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblAppConfig]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblAppConfig](
	[AppId] [smallint] NOT NULL,
	[AppName] [nvarchar](255) NOT NULL,
	[AppValue] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblBeatSalesmanMapping]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblBeatSalesmanMapping](
	[CustomerID] [int] NULL,
	[BeatID] [smallint] NULL,
	[SalesmanID] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCollPMDetails]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCollPMDetails](
	[ColID] [int] NOT NULL,
	[CollAmt] [decimal](25, 4) NOT NULL,
	[AccId] [int] NOT NULL,
	[PaymentTermID] [int] NOT NULL,
	[Cheque/DD Number] [nvarchar](50) NULL,
	[BankAccID] [int] NULL,
	[NeftID] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[PayAt] [nvarchar](255) NULL,
	[IfscCode] [nvarchar](11) NULL,
	[BankName] [nvarchar](255) NULL,
	[BranchName] [nvarchar](255) NULL,
	[AmtRecd] [decimal](25, 4) NOT NULL,
	[Status] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblColorSettings]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblColorSettings](
	[ID] [smallint] NULL,
	[ThemeID] [tinyint] NULL,
	[Name] [nvarchar](max) NULL,
	[Value] [nvarchar](100) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblCompanyRegistration]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCompanyRegistration](
	[CompanyId] [int] IDENTITY(1,1) NOT NULL,
	[CompanyCode] [nvarchar](255) NULL,
	[CompanyName] [nvarchar](255) NULL,
	[F_SD] [date] NULL,
	[F_ED] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContraMode]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContraMode](
	[ID] [tinyint] NULL,
	[ModeName] [nvarchar](255) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblContraType]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblContraType](
	[ID] [tinyint] NULL,
	[TypeName] [nvarchar](255) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDocumentSeries]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDocumentSeries](
	[TransID] [smallint] NOT NULL,
	[TransName] [nvarchar](255) NOT NULL,
	[DocPrefix] [nvarchar](50) NULL,
	[DocValue] [nvarchar](50) NOT NULL,
	[UDNMandatory] [tinyint] NULL,
	[Active] [bit] NULL,
	[MenuID] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAAccount]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAAccount](
	[FAID] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](max) NOT NULL,
	[AccountGroup] [smallint] NOT NULL,
	[OpeningBalance] [decimal](25, 4) NULL,
	[FATypeID] [tinyint] NOT NULL,
	[UserAccount] [tinyint] NOT NULL,
	[SACCode] [nvarchar](25) NULL,
	[PANNumber] [nvarchar](25) NULL,
	[Active] [bit] NOT NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAGroup]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAGroup](
	[FAGroup] [int] IDENTITY(1,1) NOT NULL,
	[AccountGroupName] [nvarchar](max) NOT NULL,
	[ParentGroup] [smallint] NULL,
	[TypeID] [tinyint] NULL,
	[UserGroup] [tinyint] NULL,
	[LevelID] [tinyint] NULL,
	[Active] [bit] NOT NULL,
	[CBy] [int] NULL,
	[CDate] [datetime] NULL,
	[MBy] [int] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAJournal]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAJournal](
	[NoteID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [nvarchar](255) NOT NULL,
	[DocPrefix] [smallint] NULL,
	[DocValue] [int] NOT NULL,
	[DocDate] [date] NOT NULL,
	[DocRef] [nvarchar](255) NULL,
	[AccountID] [int] NOT NULL,
	[Credit] [decimal](25, 4) NOT NULL,
	[Debit] [decimal](25, 4) NOT NULL,
	[Balance] [decimal](25, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
	[Status] [tinyint] NULL,
	[Adjusment] [int] NOT NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[ChequeInfo] [nvarchar](255) NULL,
	[TransId] [int] NULL,
	[BRSDate] [date] NULL,
	[JVID] [int] NULL,
	[TransType] [nvarchar](255) NULL,
	[AdjValue] [decimal](25, 4) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAJournelCancel]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAJournelCancel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[JVID] [int] NULL,
	[Adjustment] [decimal](25, 4) NULL,
	[AccountID] [int] NULL,
	[Status] [tinyint] NULL,
	[NoteID] [int] NULL,
	[TransTpe] [nvarchar](255) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblFAType]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblFAType](
	[FATypeID] [tinyint] NULL,
	[FAType] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblGSTStateNameandCode]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGSTStateNameandCode](
	[StateID] [tinyint] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](255) NULL,
	[StateCode] [nvarchar](10) NULL,
	[TINNo] [smallint] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventoryDetail]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInventoryDetail](
	[InventoryID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[NewBatchID] [int] NULL,
	[UpdatedBatchID] [int] NULL,
	[OrgPurPrice] [decimal](25, 4) NULL,
	[OrgQty] [decimal](25, 4) NULL,
	[OrgFreeQty] [decimal](25, 4) NULL,
	[OrgDmgQty] [decimal](25, 4) NULL,
	[OrgSalePrice] [decimal](25, 4) NULL,
	[OrgSaleQty] [decimal](25, 4) NULL,
	[ActualPurPrice] [decimal](25, 4) NULL,
	[ActualQty] [decimal](25, 4) NULL,
	[ActualFreeQty] [decimal](25, 4) NULL,
	[ActualDmgQty] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NOT NULL,
	[AdjType] [tinyint] NULL,
	[ReasonId] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblInventoryHeader]    Script Date: 12/02/2025 08:26:08 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblInventoryHeader](
	[InventoryID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryDate] [date] NOT NULL,
	[DocID] [nvarchar](50) NULL,
	[TransID] [tinyint] NOT NULL,
	[BranchID] [smallint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[RefNo] [nvarchar](255) NULL,
	[InventoryType] [tinyint] NOT NULL,
	[TotalAmt] [decimal](25, 4) NULL,
	[Status] [tinyint] NOT NULL,
	[ConvertionTypeId] [tinyint] NULL,
	[UDFId] [smallint] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [smallint] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterBank]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterBank](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterBankAccount]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterBankAccount](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[AccountNo] [nvarchar](max) NULL,
	[AccountName] [nvarchar](max) NULL,
	[BankID] [smallint] NULL,
	[BranchName] [nvarchar](max) NULL,
	[IFSCCode] [nvarchar](max) NULL,
	[MICR] [nvarchar](max) NULL,
	[FAID] [int] NULL,
	[Active] [bit] NULL,
	[SetDefault] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterBeat]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterBeat](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterBranchOffice]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterBranchOffice](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Billadd1] [nvarchar](max) NULL,
	[Billadd2] [nvarchar](max) NULL,
	[Billadd3] [nvarchar](max) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[Ph1] [nvarchar](25) NULL,
	[Mob1] [nvarchar](25) NULL,
	[Email] [nvarchar](255) NULL,
	[StateID] [tinyint] NULL,
	[GSTIN] [nvarchar](40) NULL,
	[FAID] [int] NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterBrand]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterBrand](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterCategory]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterCategory](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterChequeBook]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterChequeBook](
	[ChequeBookID] [smallint] IDENTITY(1,1) NOT NULL,
	[ChequeBookreferNo] [nvarchar](50) NOT NULL,
	[StartingChequeNo] [nvarchar](50) NOT NULL,
	[NoofLeaves] [smallint] NOT NULL,
	[BankAccountID] [smallint] NOT NULL,
	[Active] [bit] NOT NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterChequeBookDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterChequeBookDetail](
	[ChequeBookID] [smallint] NOT NULL,
	[ChequeNo] [nvarchar](6) NOT NULL,
	[Status] [tinyint] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterCreditTerm]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterCreditTerm](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [decimal](25, 4) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterCustomer]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterCustomer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Billadd1] [nvarchar](max) NULL,
	[Billadd2] [nvarchar](max) NULL,
	[Billadd3] [nvarchar](max) NULL,
	[Shipadd1] [nvarchar](max) NULL,
	[shipadd2] [nvarchar](max) NULL,
	[Shipadd3] [nvarchar](max) NULL,
	[Pincode] [nvarchar](15) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[Ph1] [nvarchar](25) NULL,
	[Ph2] [nvarchar](25) NULL,
	[Mob1] [nvarchar](25) NULL,
	[Mob2] [nvarchar](25) NULL,
	[Email] [nvarchar](255) NULL,
	[PANNumber] [nvarchar](25) NULL,
	[AadharNo] [nvarchar](25) NULL,
	[DLNo20] [nvarchar](25) NULL,
	[DLNo21] [nvarchar](25) NULL,
	[FSSAINo] [nvarchar](30) NULL,
	[StateID] [tinyint] NULL,
	[GSTIN] [nvarchar](40) NULL,
	[CreditTermID] [tinyint] NULL,
	[PaymentModeID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[OSValue] [decimal](25, 4) NULL,
	[FAID] [int] NULL,
	[OverDueValue] [decimal](25, 4) NULL,
	[OverDueInvCount] [smallint] NULL,
	[CreditLimitValue] [decimal](25, 4) NULL,
	[CreditLimitCount] [smallint] NULL,
	[CreditlimitOS] [decimal](25, 4) NULL,
	[PriceTypeID] [tinyint] NULL,
	[OwnerName] [nvarchar](255) NULL,
	[DiscountPern] [decimal](25, 4) NULL,
	[TrackPoint] [bit] NULL,
	[ClosingTrackPoint] [decimal](25, 4) NULL,
	[TCSTax] [bit] NULL,
	[Latitude] [nvarchar](25) NULL,
	[Longtitude] [nvarchar](25) NULL,
	[Distance] [smallint] NULL,
	[Remark] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[CustomerType] [smallint] NULL,
	[Rating] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterCustomerType]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterCustomerType](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterCustomerVendorHistory]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterCustomerVendorHistory](
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[FormID] [smallint] NULL,
	[ID] [int] NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Billadd1] [nvarchar](max) NULL,
	[Billadd2] [nvarchar](max) NULL,
	[Billadd3] [nvarchar](max) NULL,
	[Shipadd1] [nvarchar](max) NULL,
	[shipadd2] [nvarchar](max) NULL,
	[Shipadd3] [nvarchar](max) NULL,
	[Pincode] [nvarchar](15) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[Ph1] [nvarchar](25) NULL,
	[Ph2] [nvarchar](25) NULL,
	[Mob1] [nvarchar](25) NULL,
	[Mob2] [nvarchar](25) NULL,
	[Email] [nvarchar](255) NULL,
	[PANNumber] [nvarchar](25) NULL,
	[AadharNo] [nvarchar](25) NULL,
	[DLNo20] [nvarchar](25) NULL,
	[DLNo21] [nvarchar](25) NULL,
	[FSSAINo] [nvarchar](30) NULL,
	[StateID] [tinyint] NULL,
	[GSTIN] [nvarchar](40) NULL,
	[CreditTermID] [tinyint] NULL,
	[PaymentModeID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[OSValue] [decimal](25, 4) NULL,
	[FAID] [int] NULL,
	[PriceTypeWeekCycle] [tinyint] NULL,
	[OverDueValue] [decimal](25, 4) NULL,
	[OverDueInvCount] [smallint] NULL,
	[CreditLimitValue] [decimal](25, 4) NULL,
	[CreditLimitCount] [smallint] NULL,
	[CreditlimitOS] [decimal](25, 4) NULL,
	[OwnerName] [nvarchar](255) NULL,
	[DiscountPern] [decimal](25, 4) NULL,
	[TrackPoint] [bit] NULL,
	[ClosingTrackPoint] [decimal](25, 4) NULL,
	[TCSTax] [bit] NULL,
	[Latitude] [nvarchar](25) NULL,
	[Longtitude] [nvarchar](25) NULL,
	[Distance] [smallint] NULL,
	[Remark] [nvarchar](max) NULL,
	[CustomerType] [smallint] NULL,
	[Rating] [tinyint] NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[HisCBy] [smallint] NULL,
	[HisCDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterGift]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterGift](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [decimal](25, 4) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterHistory]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterHistory](
	[Ident] [int] IDENTITY(1,1) NOT NULL,
	[FormID] [smallint] NULL,
	[ID] [smallint] NULL,
	[Name] [nvarchar](max) NULL,
	[Column1] [nvarchar](max) NULL,
	[Column2] [nvarchar](max) NULL,
	[Column3] [nvarchar](max) NULL,
	[Column4] [nvarchar](max) NULL,
	[Column5] [nvarchar](max) NULL,
	[Column6] [nvarchar](max) NULL,
	[Column7] [nvarchar](max) NULL,
	[Column8] [nvarchar](max) NULL,
	[Column9] [nvarchar](max) NULL,
	[Column10] [nvarchar](max) NULL,
	[Column11] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[HisCBy] [smallint] NULL,
	[HisCDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterLocation]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterLocation](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterMailAddress]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterMailAddress](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterManufacturer]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterManufacturer](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterProduct]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterProduct](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[EAN] [nvarchar](max) NULL,
	[MfrID] [smallint] NULL,
	[BrandID] [smallint] NULL,
	[CategoryID] [smallint] NULL,
	[HSNCode] [nvarchar](30) NULL,
	[ProductDiscPerc] [decimal](25, 4) NULL,
	[BaseUomID] [smallint] NULL,
	[BaseCR] [decimal](25, 4) NULL,
	[PurchaseUomID] [smallint] NULL,
	[PurchaseCR] [decimal](25, 4) NULL,
	[SalesUomID] [smallint] NULL,
	[SalesCR] [decimal](25, 4) NULL,
	[ReportingUomID] [smallint] NULL,
	[ReportingCR] [decimal](25, 4) NULL,
	[ReportingQty] [decimal](25, 4) NULL,
	[PurchaseTaxID] [tinyint] NULL,
	[SalesTaxID] [tinyint] NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[SalesPrice] [decimal](25, 4) NULL,
	[ECP] [decimal](25, 4) NULL,
	[SPLPrice] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[ReturnPrice] [decimal](25, 4) NULL,
	[TrackInventory] [bit] NULL,
	[TrackBatch] [bit] NULL,
	[TrackSerial] [bit] NULL,
	[TrackPDK] [bit] NULL,
	[DateFormat] [tinyint] NULL,
	[BarcodeUomID] [smallint] NULL,
	[BarcodePriceID] [smallint] NULL,
	[VendorID] [int] NULL,
	[MOH] [int] NULL,
	[MOQ] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[LocationID] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterProductGroup]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterProductGroup](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterProductHistory]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterProductHistory](
	[IdentID] [int] IDENTITY(1,1) NOT NULL,
	[FormID] [int] NULL,
	[ID] [int] NULL,
	[Code] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[EAN] [nvarchar](max) NULL,
	[MfrID] [smallint] NULL,
	[BrandID] [smallint] NULL,
	[CategoryID] [smallint] NULL,
	[HSNCode] [nvarchar](30) NULL,
	[ProductDiscPerc] [decimal](25, 4) NULL,
	[BaseUomID] [smallint] NULL,
	[BaseCR] [decimal](25, 4) NULL,
	[PurchaseUomID] [smallint] NULL,
	[PurchaseCR] [decimal](25, 4) NULL,
	[SalesUomID] [smallint] NULL,
	[SalesCR] [decimal](25, 4) NULL,
	[ReportingUomID] [smallint] NULL,
	[ReportingCR] [decimal](25, 4) NULL,
	[ReportingQty] [decimal](25, 4) NULL,
	[PurchaseTaxID] [tinyint] NULL,
	[SalesTaxID] [tinyint] NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[SalesPrice] [decimal](25, 4) NULL,
	[ECP] [decimal](25, 4) NULL,
	[SPLPrice] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[ReturnPrice] [decimal](25, 4) NULL,
	[TrackInventory] [bit] NULL,
	[TrackBatch] [bit] NULL,
	[TrackSerial] [bit] NULL,
	[TrackPDK] [bit] NULL,
	[DateFormat] [tinyint] NULL,
	[BarcodeUomID] [smallint] NULL,
	[BarcodePriceID] [smallint] NULL,
	[VendorID] [int] NULL,
	[MOH] [int] NULL,
	[MOQ] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[LocationID] [smallint] NULL,
	[HisCBy] [smallint] NULL,
	[HisCDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterReason]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterReason](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterReturnType]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterReturnType](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterRole]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterRole](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterSalesman]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterSalesman](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NOT NULL,
	[DOB] [date] NULL,
	[DOJ] [date] NULL,
	[MobileNo] [nvarchar](25) NULL,
	[AadharNo] [nvarchar](25) NULL,
	[PANNumber] [nvarchar](25) NULL,
	[Address] [nvarchar](max) NULL,
	[SalesmanGroupID] [smallint] NULL,
	[FAID] [int] NOT NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterSalesmanGroup]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterSalesmanGroup](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterService]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterService](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[TaxID] [tinyint] NULL,
	[SACCode] [nvarchar](20) NULL,
	[Inwardprice] [decimal](25, 4) NULL,
	[Outwardprice] [decimal](25, 4) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterTax]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterTax](
	[TaxID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TaxName] [nvarchar](255) NOT NULL,
	[GST] [decimal](25, 4) NULL,
	[IGST] [decimal](25, 4) NULL,
	[GUOM] [decimal](25, 4) NOT NULL,
	[IUOM] [decimal](25, 4) NOT NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CBate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MBate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterTaxComponent]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterTaxComponent](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Value] [decimal](25, 4) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterTaxDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterTaxDetail](
	[TaxDetialID] [int] IDENTITY(1,1) NOT NULL,
	[TaxID] [tinyint] NOT NULL,
	[TaxTypeID] [tinyint] NOT NULL,
	[TaxCompID] [smallint] NOT NULL,
	[TaxRate] [decimal](25, 4) NOT NULL,
	[AppOn] [smallint] NOT NULL,
	[PartOff] [smallint] NOT NULL,
	[CumulativeTax] [decimal](25, 4) NOT NULL,
	[GSTTaxType] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterTaxType]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterTaxType](
	[TaxTypeID] [tinyint] IDENTITY(1,1) NOT NULL,
	[TaxTypeName] [nvarchar](50) NOT NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterUOM]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterUOM](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterUserDefineNoDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterUserDefineNoDetail](
	[UDNID] [smallint] NULL,
	[UserID] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterUserDefineNoHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterUserDefineNoHeader](
	[UDNID] [smallint] IDENTITY(1,1) NOT NULL,
	[TransID] [smallint] NULL,
	[DocName] [nvarchar](255) NOT NULL,
	[DocPrefix] [nvarchar](255) NULL,
	[DocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterVehicle]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterVehicle](
	[ID] [tinyint] IDENTITY(1,1) NOT NULL,
	[VehicleNo] [nvarchar](30) NOT NULL,
	[VehicleName] [nvarchar](255) NOT NULL,
	[DOPurchase] [date] NULL,
	[InsuranceDate] [date] NULL,
	[InsuranceExpire] [date] NULL,
	[FCDate] [date] NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMasterVendor]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMasterVendor](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](255) NULL,
	[Name] [nvarchar](255) NULL,
	[Billadd1] [nvarchar](max) NULL,
	[Billadd2] [nvarchar](max) NULL,
	[Billadd3] [nvarchar](max) NULL,
	[Shipadd1] [nvarchar](max) NULL,
	[shipadd2] [nvarchar](max) NULL,
	[Shipadd3] [nvarchar](max) NULL,
	[Pincode] [nvarchar](15) NULL,
	[ContactPerson] [nvarchar](255) NULL,
	[Ph1] [nvarchar](25) NULL,
	[Ph2] [nvarchar](25) NULL,
	[Mob1] [nvarchar](25) NULL,
	[Mob2] [nvarchar](25) NULL,
	[Email] [nvarchar](255) NULL,
	[PANNumber] [nvarchar](25) NULL,
	[AadharNo] [nvarchar](25) NULL,
	[DLNo20] [nvarchar](25) NULL,
	[DLNo21] [nvarchar](25) NULL,
	[FSSAINo] [nvarchar](30) NULL,
	[StateID] [tinyint] NULL,
	[GSTIN] [nvarchar](40) NULL,
	[CreditTermID] [tinyint] NULL,
	[PaymentModeID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[OSValue] [decimal](25, 4) NULL,
	[FAID] [int] NULL,
	[WeekCycle] [tinyint] NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[Rating] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblMenus]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMenus](
	[MenuId] [smallint] NULL,
	[MenuName] [nvarchar](255) NOT NULL,
	[MenuParentId] [smallint] NULL,
	[MenuChildLevel] [tinyint] NULL,
	[MenuTree] [tinyint] NULL,
	[LocationName] [nvarchar](255) NULL,
	[Permission] [tinyint] NULL,
	[Active] [bit] NULL,
	[DisplayIndex] [smallint] NULL,
	[IsMenu] [tinyint] NULL,
	[FormID] [smallint] NULL,
	[IsReport] [tinyint] NULL,
	[EncMenuID] [nvarchar](max) NULL,
	[EncMenuName] [nvarchar](max) NULL,
	[EncFormID] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblNoteDetails]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNoteDetails](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [nvarchar](255) NOT NULL,
	[TransID] [tinyint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[DocDate] [date] NOT NULL,
	[RefNo] [nvarchar](255) NULL,
	[PartyID] [int] NOT NULL,
	[FAID] [int] NOT NULL,
	[NoteValue] [decimal](25, 4) NOT NULL,
	[Balance] [decimal](25, 4) NOT NULL,
	[Remark] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
	[Status] [tinyint] NOT NULL,
	[JERefId] [int] NULL,
	[UDFId] [smallint] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [int] NULL,
	[ClDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblParameterInfo]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblParameterInfo](
	[ParameterID] [int] IDENTITY(1,1) NOT NULL,
	[ReportID] [smallint] NULL,
	[ParameterName] [nvarchar](max) NOT NULL,
	[ParameterType] [nvarchar](max) NOT NULL,
	[IsMandatory] [tinyint] NULL,
	[ParamOrder] [int] NOT NULL,
	[AutolistName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentMode]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentMode](
	[ID] [tinyint] NULL,
	[PaymentMode] [nvarchar](100) NOT NULL,
	[Active] [bit] NULL,
	[Orderby] [tinyint] NULL,
	[PayCode] [nvarchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPaymentPMDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPaymentPMDetail](
	[PYID] [int] NOT NULL,
	[PYAmt] [decimal](25, 4) NOT NULL,
	[PaymentTermID] [int] NOT NULL,
	[BankAccID] [int] NULL,
	[ChequeRefNoWithChequeNo] [nvarchar](255) NULL,
	[Cheque/DD Number] [nvarchar](50) NULL,
	[NeftID] [nvarchar](50) NULL,
	[Date] [date] NULL,
	[PayAt] [nvarchar](255) NULL,
	[IfscCode] [nvarchar](11) NULL,
	[BankName] [nvarchar](255) NULL,
	[BranchName] [nvarchar](255) NULL,
	[AmtRecd] [decimal](25, 4) NOT NULL,
	[Status] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPriceType]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPriceType](
	[ID] [tinyint] NULL,
	[PriceType] [nvarchar](50) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblProductInventory]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblProductInventory](
	[InventoryId] [int] IDENTITY(1,1) NOT NULL,
	[TransDate] [date] NULL,
	[DocValue] [int] NULL,
	[ProdID] [int] NOT NULL,
	[TransID] [smallint] NULL,
	[BatchNumber] [nvarchar](255) NULL,
	[PKDDate] [date] NULL,
	[ExpiryDate] [date] NULL,
	[RecdQty] [decimal](25, 4) NULL,
	[RecdFreeQty] [decimal](25, 4) NULL,
	[RecdDmgQty] [decimal](25, 4) NULL,
	[ActualQty] [decimal](25, 4) NULL,
	[ActualFreeQty] [decimal](25, 4) NULL,
	[ActualDmgQty] [decimal](25, 4) NULL,
	[PRQty] [decimal](25, 4) NULL,
	[PRFreeQty] [decimal](25, 4) NULL,
	[PRDmgQty] [decimal](25, 4) NULL,
	[SRQty] [decimal](25, 4) NULL,
	[SRFreeQty] [decimal](25, 4) NULL,
	[SRDmgQty] [decimal](25, 4) NULL,
	[InOutQty] [decimal](25, 4) NULL,
	[InOutFree] [decimal](25, 4) NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[SalesPrice] [decimal](25, 4) NULL,
	[ECP] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[SPLPrice] [decimal](25, 4) NULL,
	[MRPONPrice] [decimal](25, 4) NULL,
	[ReturnPrice] [decimal](25, 6) NULL,
	[TaxId] [tinyint] NULL,
	[TaxTypeId] [tinyint] NULL,
	[TaxValue] [decimal](25, 4) NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[BranchID] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPurchaseDraftDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchaseDraftDetail](
	[HID] [int] NULL,
	[ProdID] [int] NULL,
	[UomID] [smallint] NULL,
	[BatchNo] [nvarchar](255) NULL,
	[PKD] [date] NULL,
	[Expiry] [date] NULL,
	[UomQty] [decimal](25, 4) NULL,
	[UomFreeQty] [decimal](25, 4) NULL,
	[UomDamageQty] [decimal](25, 4) NULL,
	[UomPurchasePrice] [decimal](25, 4) NULL,
	[UomSalePrice] [decimal](25, 4) NULL,
	[UomECP] [decimal](25, 4) NULL,
	[UomMRP] [decimal](25, 4) NULL,
	[UomSPLPrice] [decimal](25, 4) NULL,
	[UomReturnPrice] [decimal](25, 4) NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[SalePrice] [decimal](25, 4) NULL,
	[ECP] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[SPLPrice] [decimal](25, 4) NULL,
	[ReturnPrice] [decimal](25, 4) NULL,
	[TaxID] [tinyint] NULL,
	[TaxPern] [decimal](25, 4) NULL,
	[GoodsAmt] [decimal](25, 4) NULL,
	[ProdDiscPern] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Serial] [int] NULL,
	[ReasonId] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPurchaseDraftHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchaseDraftHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[TransID] [smallint] NULL,
	[BranchID] [smallint] NULL,
	[DocID] [nvarchar](255) NULL,
	[DocValue] [int] NULL,
	[VendorID] [int] NULL,
	[RefNo] [nvarchar](255) NULL,
	[ProdGroupID] [smallint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[PaymentModeID] [tinyint] NULL,
	[PaymentTermID] [tinyint] NULL,
	[PaymentDate] [date] NULL,
	[VehicleNo] [nvarchar](255) NULL,
	[Frieght] [decimal](25, 4) NULL,
	[OtherChargePern] [decimal](25, 4) NULL,
	[OtherChargeAmt] [decimal](25, 4) NULL,
	[ProdDiscPern] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[TotalProdDiscAmt] [decimal](25, 4) NULL,
	[TotalTradeDiscAmt] [decimal](25, 4) NULL,
	[TotalAddnlDiscAmt] [decimal](25, 4) NULL,
	[WriteOffAmt] [decimal](25, 4) NULL,
	[RoundOffAmt] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Balance] [decimal](25, 4) NULL,
	[PymtID] [int] NULL,
	[Status] [tinyint] NULL,
	[OrgId] [int] NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[ReturnType] [tinyint] NULL,
	[TransactionType] [tinyint] NULL,
	[TCSTaxPern] [decimal](25, 4) NULL,
	[TCSTaxAmt] [decimal](25, 4) NULL,
	[TDSAmount] [decimal](25, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPurchaseOrderDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchaseOrderDetail](
	[HID] [int] NOT NULL,
	[ProdID] [int] NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[Qty] [decimal](25, 4) NULL,
	[UomID] [smallint] NULL,
	[TaxID] [tinyint] NULL,
	[TaxPern] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Serial] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblPurchaseOrderHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPurchaseOrderHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocDate] [date] NULL,
	[DocID] [nvarchar](255) NOT NULL,
	[TransID] [int] NOT NULL,
	[DocValue] [int] NOT NULL,
	[BranchID] [smallint] NOT NULL,
	[VendorID] [int] NOT NULL,
	[RefNo] [nvarchar](255) NULL,
	[TaxTypeID] [tinyint] NULL,
	[DeliveryDate] [date] NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[RoundOffAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Status] [tinyint] NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](255) NULL,
	[GRNId] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuotationDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuotationDetail](
	[QuationID] [int] NOT NULL,
	[ProdID] [int] NOT NULL,
	[UomID] [smallint] NULL,
	[Qty] [decimal](25, 4) NULL,
	[SalesPrice] [decimal](25, 4) NULL,
	[DetailMRP] [decimal](25, 4) NULL,
	[TaxID] [tinyint] NULL,
	[TaxPercentage] [decimal](25, 4) NULL,
	[GoodsAmt] [decimal](25, 4) NULL,
	[ProdDiscPern] [decimal](25, 4) NULL,
	[ProdDiscAmt] [decimal](25, 4) NULL,
	[TradeDiscAmt] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscAmt] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Serial] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblQuotationHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblQuotationHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocDate] [date] NOT NULL,
	[DocId] [nvarchar](255) NOT NULL,
	[DocPrefix] [tinyint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[BranchID] [smallint] NOT NULL,
	[CustomerID] [int] NOT NULL,
	[RefNo] [nvarchar](255) NULL,
	[PriceID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[TradeDiscAmt] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscAmt] [decimal](25, 4) NULL,
	[OtherChargePern] [decimal](25, 4) NULL,
	[OtherChargeAmt] [decimal](25, 4) NULL,
	[FrightAmt] [decimal](25, 4) NULL,
	[TotalProdDiscAmt] [decimal](25, 4) NULL,
	[TotalDiscAmt] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[RoundOffAmt] [decimal](25, 4) NULL,
	[Status] [tinyint] NULL,
	[UDFId] [smallint] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [smallint] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRatings]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRatings](
	[ID] [tinyint] NULL,
	[RatingName] [nvarchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblReportViewer]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblReportViewer](
	[ReportID] [smallint] NULL,
	[ReportName] [nvarchar](max) NOT NULL,
	[ParentID] [smallint] NULL,
	[Active] [bit] NOT NULL,
	[MenuID] [smallint] NULL,
	[ProcedureName] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRolePermissions]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRolePermissions](
	[Role] [smallint] NOT NULL,
	[PermissionFormId] [smallint] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalesDraftDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalesDraftDetail](
	[HID] [int] NULL,
	[ProdID] [int] NULL,
	[UomID] [smallint] NULL,
	[UomQty] [decimal](25, 4) NULL,
	[SalePrice] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[TaxID] [tinyint] NULL,
	[TaxPern] [decimal](25, 4) NULL,
	[ProdDiscPern] [decimal](25, 4) NULL,
	[ProdDiscAmt] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[TradeDiscAmt] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscAmt] [decimal](25, 4) NULL,
	[GoodsAmt] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Serial] [int] NULL,
	[ReasonId] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSalesDraftHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSalesDraftHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NULL,
	[TransID] [smallint] NULL,
	[BranchID] [smallint] NULL,
	[DocID] [nvarchar](255) NULL,
	[DocValue] [int] NULL,
	[CustomerID] [int] NULL,
	[RefNo] [nvarchar](255) NULL,
	[ProdGroupID] [smallint] NULL,
	[PriceTypeID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[PaymentModeID] [tinyint] NULL,
	[PaymentTermID] [tinyint] NULL,
	[PaymentDate] [date] NULL,
	[Frieght] [decimal](25, 4) NULL,
	[OtherChargePern] [decimal](25, 4) NULL,
	[OtherChargeAmt] [decimal](25, 4) NULL,
	[ProdDiscPern] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[TotalProdDiscAmt] [decimal](25, 4) NULL,
	[TotalTradeDiscAmt] [decimal](25, 4) NULL,
	[TotalAddnlDiscAmt] [decimal](25, 4) NULL,
	[WriteOffAmt] [decimal](25, 4) NULL,
	[RoundOffAmt] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[Balance] [decimal](25, 4) NULL,
	[Status] [tinyint] NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[ReturnType] [tinyint] NULL,
	[TransactionType] [tinyint] NULL,
	[TCSTaxPern] [decimal](25, 4) NULL,
	[TCSTaxAmt] [decimal](25, 4) NULL,
	[TDSAmount] [decimal](25, 4) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSampValidation]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSampValidation](
	[Name] [nvarchar](max) NULL,
	[MobileNumber] [nvarchar](max) NULL,
	[EMailAddress] [nvarchar](max) NULL,
	[PANNumber] [nvarchar](max) NULL,
	[AadhaarNumber] [nvarchar](max) NULL,
	[Address] [nvarchar](max) NULL,
	[Pincode] [nvarchar](max) NULL,
	[FSSAINo] [nvarchar](max) NULL,
	[ServiceTaxNo] [nvarchar](max) NULL,
	[GSTIN] [nvarchar](max) NULL,
	[HSNCode] [nvarchar](max) NULL,
	[SACcode] [nvarchar](max) NULL,
	[BankAccountNo] [nvarchar](max) NULL,
	[IFSCNo] [nvarchar](max) NULL,
	[MICR] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblStatus]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblStatus](
	[ID] [tinyint] NULL,
	[Description] [nvarchar](100) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTablesNames]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTablesNames](
	[ID] [smallint] NULL,
	[FormName] [nvarchar](max) NULL,
	[TableName] [nvarchar](max) NULL,
	[FormType] [smallint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_tblTablesNames_ID]    Script Date: 12/02/2025 08:26:09 PM ******/
CREATE UNIQUE CLUSTERED INDEX [IX_tblTablesNames_ID] ON [dbo].[tblTablesNames]
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranCollectionDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranCollectionDetail](
	[ColDetailID] [int] IDENTITY(1,1) NOT NULL,
	[ColID] [int] NOT NULL,
	[DocPrefix] [tinyint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[DocID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[ColValue] [decimal](25, 4) NOT NULL,
	[AdjAmt] [decimal](25, 4) NOT NULL,
	[DiscPercentage] [nvarchar](50) NOT NULL,
	[DiscAmt] [decimal](25, 4) NOT NULL,
	[FullyAdj] [tinyint] NOT NULL,
	[FullyAdjAmt] [decimal](25, 4) NOT NULL,
	[TotalAmtAdj] [decimal](25, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranCollectionHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranCollectionHeader](
	[ColID] [int] IDENTITY(1,1) NOT NULL,
	[ColDate] [date] NOT NULL,
	[DocPrefix] [tinyint] NOT NULL,
	[DocID] [nvarchar](50) NOT NULL,
	[DocValue] [int] NOT NULL,
	[COLLType] [int] NULL,
	[ColDocRefNo] [nvarchar](255) NULL,
	[AccID] [int] NULL,
	[ColAmt] [decimal](25, 4) NOT NULL,
	[Balance] [decimal](25, 4) NOT NULL,
	[ColMode] [tinyint] NOT NULL,
	[Status] [tinyint] NOT NULL,
	[ExpanceAcc] [smallint] NULL,
	[BRSDate] [date] NULL,
	[BRSStatus] [tinyint] NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[Type] [tinyint] NOT NULL,
	[BeatID] [smallint] NULL,
	[SalesManID] [smallint] NULL,
	[VisaPern] [decimal](25, 4) NULL,
	[VisaAmt] [decimal](25, 4) NULL,
	[BTMode] [tinyint] NOT NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranContra]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranContra](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [nvarchar](255) NULL,
	[TransID] [tinyint] NULL,
	[DocValue] [int] NULL,
	[DocDate] [date] NULL,
	[TypeID] [tinyint] NULL,
	[ModeID] [tinyint] NULL,
	[RefNo] [nvarchar](255) NULL,
	[Amount] [decimal](25, 4) NULL,
	[Balance] [decimal](25, 4) NULL,
	[FromFAID] [int] NULL,
	[WDSlipNo] [nvarchar](50) NULL,
	[ChequeNo] [int] NULL,
	[ChequeNumberWithRef] [nvarchar](255) NULL,
	[SalesManID] [smallint] NULL,
	[ToFAID] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
	[UDFID] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[Status] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranPaymentDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranPaymentDetail](
	[PYDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PYID] [int] NOT NULL,
	[DocPrefix] [tinyint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[DocID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[BillPYValue] [decimal](25, 4) NOT NULL,
	[AdjAmt] [decimal](25, 4) NOT NULL,
	[DiscPercentage] [nvarchar](50) NOT NULL,
	[DiscAmt] [decimal](25, 4) NOT NULL,
	[FullyAdj] [int] NOT NULL,
	[FullyAdjAmt] [decimal](25, 4) NOT NULL,
	[TotalAmtAdj] [decimal](25, 4) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranPaymentHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranPaymentHeader](
	[PYID] [int] IDENTITY(1,1) NOT NULL,
	[PYDate] [date] NOT NULL,
	[PYPrefix] [tinyint] NOT NULL,
	[DocID] [nvarchar](50) NOT NULL,
	[DocValue] [int] NOT NULL,
	[PYType] [tinyint] NULL,
	[PYDocRefNo] [nvarchar](255) NULL,
	[AccID] [int] NULL,
	[PYAmt] [decimal](25, 6) NOT NULL,
	[Balance] [decimal](25, 6) NOT NULL,
	[PYMode] [tinyint] NOT NULL,
	[ExpanseAcc] [smallint] NULL,
	[Status] [tinyint] NOT NULL,
	[UDFId] [smallint] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[Type] [tinyint] NOT NULL,
	[VisaPern] [decimal](25, 6) NULL,
	[VisaAmt] [decimal](25, 6) NULL,
	[BTMode] [tinyint] NOT NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTranPRVoucher]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTranPRVoucher](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DocID] [nvarchar](255) NULL,
	[TransID] [tinyint] NULL,
	[DocValue] [int] NULL,
	[DocDate] [date] NULL,
	[PartyID] [int] NULL,
	[FAID] [int] NULL,
	[RefNo] [nvarchar](255) NULL,
	[Amount] [decimal](25, 4) NULL,
	[DiscPern] [decimal](25, 4) NULL,
	[DiscAmt] [decimal](25, 4) NULL,
	[TaxID] [tinyint] NULL,
	[TaxPern] [decimal](25, 4) NULL,
	[GrossAmount] [decimal](25, 4) NOT NULL,
	[TaxtAmount] [decimal](25, 4) NOT NULL,
	[NetAmount] [decimal](25, 4) NOT NULL,
	[Balance] [decimal](25, 4) NULL,
	[Remarks] [nvarchar](255) NULL,
	[Narration] [nvarchar](255) NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[Type] [tinyint] NULL,
	[SACorHSNCode] [nvarchar](15) NULL,
	[TDSAmount] [decimal](25, 4) NULL,
	[PortalDate] [date] NULL,
	[TDSDate] [date] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[Status] [tinyint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransAutomaticIndentDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransAutomaticIndentDetail](
	[HID] [int] NULL,
	[ProdID] [int] NULL,
	[UomID] [smallint] NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[ABSQty] [decimal](25, 4) NULL,
	[MOH] [int] NULL,
	[MOQ] [int] NULL,
	[IndentValue] [int] NULL,
	[Serial] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransAutomaticIndentHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransAutomaticIndentHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[DocID] [nvarchar](255) NOT NULL,
	[TransID] [tinyint] NOT NULL,
	[DocValue] [int] NOT NULL,
	[BranchID] [smallint] NOT NULL,
	[VendorID] [int] NOT NULL,
	[RefNo] [nvarchar](max) NULL,
	[UDFId] [int] NULL,
	[UDFDocID] [nvarchar](10) NULL,
	[UDFDocPrefix] [nvarchar](10) NULL,
	[UDFDocValue] [int] NULL,
	[PoID] [int] NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [int] NULL,
	[ClDate] [datetime] NULL,
	[Status] [tinyint] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransGSTInfo]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransGSTInfo](
	[TransID] [int] NULL,
	[TransIdentID] [int] NULL,
	[ProdID] [int] NULL,
	[TaxID] [int] NULL,
	[TaxTypeID] [int] NULL,
	[TaxCompID] [int] NULL,
	[TaxCompPern] [decimal](25, 6) NULL,
	[TaxValue] [decimal](25, 6) NULL,
	[Serial] [int] NULL,
	[GrossAmt] [decimal](25, 6) NULL,
	[GSTTaxTypeID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Index [IX_TransGSTInfo]    Script Date: 12/02/2025 08:26:09 PM ******/
CREATE CLUSTERED INDEX [IX_TransGSTInfo] ON [dbo].[tblTransGSTInfo]
(
	[TransID] ASC,
	[TransIdentID] ASC,
	[ProdID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransPurchaseDetail]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransPurchaseDetail](
	[HID] [int] NOT NULL,
	[InventoryId] [int] NULL,
	[ProdID] [int] NULL,
	[UomID] [smallint] NULL,
	[BatchNo] [nvarchar](255) NULL,
	[PKD] [date] NULL,
	[Expiry] [date] NULL,
	[UomQty] [decimal](25, 6) NULL,
	[UomFreeQty] [decimal](25, 6) NULL,
	[UomDamageQty] [decimal](25, 6) NULL,
	[UomPurchasePrice] [decimal](25, 6) NOT NULL,
	[UomSalePrice] [decimal](25, 6) NULL,
	[UomECP] [decimal](25, 6) NULL,
	[UomMRP] [decimal](25, 6) NULL,
	[UomSPLPrice] [decimal](25, 6) NULL,
	[UomReturnPrice] [decimal](25, 6) NULL,
	[PurchasePrice] [decimal](25, 6) NULL,
	[SalePrice] [decimal](25, 6) NULL,
	[ECP] [decimal](25, 6) NULL,
	[MRP] [decimal](25, 6) NULL,
	[SPLPrice] [decimal](25, 6) NULL,
	[ReturnPrice] [decimal](25, 6) NULL,
	[TaxID] [tinyint] NULL,
	[TaxTypeID] [tinyint] NULL,
	[Tax%] [decimal](25, 6) NULL,
	[GoodsAmt] [decimal](25, 6) NULL,
	[ProdDisc%] [decimal](25, 6) NULL,
	[TradeDisc%] [decimal](25, 6) NULL,
	[AddnlDisc%] [decimal](25, 6) NULL,
	[GrossAmt] [decimal](25, 6) NULL,
	[TaxAmt] [decimal](25, 6) NULL,
	[NetAmt] [decimal](25, 6) NULL,
	[Serial] [int] NULL,
	[AdjQty] [decimal](25, 6) NULL,
	[AdjFreeQty] [decimal](25, 6) NULL,
	[AdjDmgQty] [decimal](25, 6) NULL,
	[ReasonId] [smallint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTransPurchaseHeader]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTransPurchaseHeader](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [date] NOT NULL,
	[TransID] [smallint] NOT NULL,
	[BranchID] [smallint] NULL,
	[DocID] [nvarchar](255) NOT NULL,
	[DocValue] [int] NOT NULL,
	[VendorID] [int] NOT NULL,
	[RefNo] [nvarchar](255) NULL,
	[ProdGroupID] [smallint] NULL,
	[TaxTypeID] [tinyint] NOT NULL,
	[PaymentModeID] [tinyint] NULL,
	[PaymentTermID] [tinyint] NULL,
	[PaymentDate] [date] NULL,
	[VehicleNo] [nvarchar](255) NULL,
	[Frieght] [decimal](25, 4) NULL,
	[OtherCharge%] [decimal](25, 4) NULL,
	[OtherChargeAmt] [decimal](25, 4) NULL,
	[ProdDisc%] [decimal](25, 4) NULL,
	[TradeDisc%] [decimal](25, 4) NULL,
	[AddnlDisc%] [decimal](25, 4) NULL,
	[TotalProdDiscAmt] [decimal](25, 4) NULL,
	[TotalTradeDiscAmt] [decimal](25, 4) NULL,
	[TotalAddnlDiscAmt] [decimal](25, 4) NULL,
	[WriteOffAmt] [decimal](25, 4) NULL,
	[RoundOffAmt] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NOT NULL,
	[Balance] [decimal](25, 4) NULL,
	[PymtID] [int] NULL,
	[Status] [tinyint] NOT NULL,
	[OrgId] [int] NULL,
	[UDFId] [int] NULL,
	[UDFDocId] [nvarchar](255) NULL,
	[UDFDocPrefix] [nvarchar](255) NULL,
	[UDFDocValue] [int] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL,
	[ClBy] [smallint] NULL,
	[ClDate] [datetime] NULL,
	[ReturnType] [tinyint] NULL,
	[TransactionType] [tinyint] NULL,
	[DateBill] [date] NULL,
	[PortalDate] [date] NULL,
	[TCSTaxPern] [decimal](25, 4) NULL,
	[TCSTaxAmt] [decimal](25, 4) NULL,
	[TDSAmount] [decimal](25, 4) NULL,
	[IRN] [nvarchar](max) NULL,
	[AckNo] [nvarchar](max) NULL,
	[AckDate] [datetime] NULL,
	[AckStatus] [nvarchar](max) NULL,
	[SignedQRCode] [nvarchar](max) NULL,
	[EWBNo] [nvarchar](max) NULL,
	[Distance] [smallint] NULL,
	[TransMode] [nvarchar](100) NULL,
	[VehicleType] [nvarchar](100) NULL,
	[TransportID] [nvarchar](100) NULL,
	[TransportName] [nvarchar](255) NULL,
	[Remarks] [nvarchar](max) NULL,
	[Narration] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 12/02/2025 08:26:09 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[ID] [smallint] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](max) NULL,
	[Password] [nvarchar](max) NULL,
	[Mobilenumber] [nvarchar](max) NULL,
	[EMailID] [nvarchar](max) NULL,
	[RoleID] [smallint] NULL,
	[PwdResetCount] [tinyint] NULL,
	[PwdResetTime] [datetime] NULL,
	[LPin] [int] NULL,
	[Active] [bit] NULL,
	[CBy] [smallint] NULL,
	[CDate] [datetime] NULL,
	[MBy] [smallint] NULL,
	[MDate] [datetime] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Index [IX_TransGSTInfoID]    Script Date: 12/02/2025 08:26:09 PM ******/
CREATE NONCLUSTERED INDEX [IX_TransGSTInfoID] ON [dbo].[tblTransGSTInfo]
(
	[TaxID] ASC,
	[TaxTypeID] ASC,
	[TaxCompID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblCollPMDetails] ADD  CONSTRAINT [DF_tblCollPMDetails_Date]  DEFAULT (NULL) FOR [Date]
GO
ALTER TABLE [dbo].[tblCollPMDetails] ADD  CONSTRAINT [DF_tblCollPMDetails_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblFAJournal] ADD  CONSTRAINT [DF_tblFAJournal_Adjusment]  DEFAULT ((0)) FOR [Adjusment]
GO
ALTER TABLE [dbo].[tblInventoryHeader] ADD  CONSTRAINT [DF_tblInventoryHeader_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblInventoryHeader] ADD  DEFAULT ((0)) FOR [ConvertionTypeId]
GO
ALTER TABLE [dbo].[tblPaymentPMDetail] ADD  CONSTRAINT [DF_tblPaymentPMDetail_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblProductInventory] ADD  DEFAULT ((0)) FOR [BranchID]
GO
ALTER TABLE [dbo].[tblTranCollectionHeader] ADD  CONSTRAINT [DF_tblTranCollectionHeader_Balance]  DEFAULT ((0)) FOR [Balance]
GO
ALTER TABLE [dbo].[tblTranCollectionHeader] ADD  CONSTRAINT [DF_tblTransCollectionHeader_Status]  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tblTranCollectionHeader] ADD  CONSTRAINT [DF_tblTranCollectionHeader_BRSStatus]  DEFAULT ((0)) FOR [BRSStatus]
GO
ALTER TABLE [dbo].[tblTranCollectionHeader] ADD  DEFAULT ((0)) FOR [BTMode]
GO
ALTER TABLE [dbo].[tblTranPaymentHeader] ADD  CONSTRAINT [DF_tblTranPaymentHeader_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblTranPaymentHeader] ADD  DEFAULT ((0)) FOR [BTMode]
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (1, N'Asset', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (2, N'Direct Expense', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (3, N'Direct Income', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (4, N'Equity', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (5, N'Indirect Expense', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (6, N'Indirect Income', 1)
GO
INSERT [dbo].[tblAccountType] ([TypeID], [TypeName], [Active]) VALUES (7, N'Liability', 1)
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (1, N'CaseType', N'1')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (2, N'Confirmpopup', N'1')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (3, N'Roundoff', N'2')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (4, N'RoundoffValue', N'1.5')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (5, N'SMTPHost', N'smtp.gmail.com')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (6, N'EMail', N'')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (7, N'Password', N'')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (8, N'DecimalValues', N'2')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (9, N'ThemeID', N'1')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (10, N'Showallstatus', N'1')
GO
INSERT [dbo].[tblAppConfig] ([AppId], [AppName], [AppValue]) VALUES (11, N'DefaultBranch', N'0')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (1, 0, N'MenuHeader', N'#fefcdd')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (2, 0, N'AddButton', N'#0061ff')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (3, 0, N'SaveButton', N'#669c35')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (4, 0, N'ClearButton', N'#1b32fe')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (5, 0, N'CloseButton', N'#e32400')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (6, 0, N'PDFButton', N'#7b2900')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (7, 0, N'PreviewButton', N'#d357fe')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (8, 0, N'PopupHeader', N'#76cfe1')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (9, 0, N'PopupFooter', N'#ffdad1')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (10, 0, N'ConfirmPopupYes', N'#030b35')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (11, 0, N'ConfirmPopupNo', N'#450202')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (12, 0, N'SubMenuColor', N'#000000')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (13, 0, N'MenuColor', N'#000000')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (14, 0, N'CompanyNameColor', N'#e32400')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (15, 0, N'GridHeaderBackGround', N'#aaaaaa')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (16, 0, N'GridHeaderTextColor', N'#000000')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (17, 0, N'PopupHeaderText', N'#ff4d00')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (1, 1, N'MenuHeader', N'#fefcdd')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (2, 1, N'AddButton', N'#0061ff')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (3, 1, N'SaveButton', N'#669c35')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (4, 1, N'ClearButton', N'#1b32fe')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (5, 1, N'CloseButton', N'#e32400')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (6, 1, N'PDFButton', N'#7b2900')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (7, 1, N'PreviewButton', N'#d357fe')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (8, 1, N'PopupHeader', N'#76cfe1')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (9, 1, N'PopupFooter', N'#ffdad1')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (10, 1, N'ConfirmPopupYes', N'#030b35')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (11, 1, N'ConfirmPopupNo', N'#450202')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (12, 1, N'SubMenuColor', N'#5951d2')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (13, 1, N'MenuColor', N'#000000')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (14, 1, N'CompanyNameColor', N'#e32400')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (15, 1, N'GridHeaderBackGround', N'#aaaaaa')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (16, 1, N'GridHeaderTextColor', N'#000000')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (17, 1, N'PopupHeaderText', N'#ff4d00')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (18, 0, N'DraftButton', N'#0061ff')
GO
INSERT [dbo].[tblColorSettings] ([ID], [ThemeID], [Name], [Value]) VALUES (18, 1, N'DraftButton', N'#5ecbd9')
GO
SET IDENTITY_INSERT [dbo].[tblCompanyRegistration] ON 
GO
INSERT [dbo].[tblCompanyRegistration] ([CompanyId], [CompanyCode], [CompanyName], [F_SD], [F_ED]) VALUES (1, N'GKBS01', N'GK BUSINESS AND SOLUTIONS', CAST(N'2024-04-01' AS Date), CAST(N'2025-03-31' AS Date))
GO
SET IDENTITY_INSERT [dbo].[tblCompanyRegistration] OFF
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (1, N'WithDrawalSlip', 1)
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (2, N'Cheque', 1)
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (3, N'RTGS', 1)
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (4, N'NEFT', 1)
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (5, N'IMPS', 1)
GO
INSERT [dbo].[tblContraMode] ([ID], [ModeName], [Active]) VALUES (6, N'UPI', 1)
GO
INSERT [dbo].[tblContraType] ([ID], [TypeName], [Active]) VALUES (1, N'Cash Deposit', 1)
GO
INSERT [dbo].[tblContraType] ([ID], [TypeName], [Active]) VALUES (2, N'Cash WithDrawal', 1)
GO
INSERT [dbo].[tblContraType] ([ID], [TypeName], [Active]) VALUES (3, N'Bank Transfer', 1)
GO
INSERT [dbo].[tblContraType] ([ID], [TypeName], [Active]) VALUES (4, N'Branch Transfer', 1)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (1, N'Purchase Bill', N'PB/2425/', N'42', 0, 1, 131)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (2, N'Automatic Indent', N'AI/2425/', N'11', 0, 1, 159)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (3, N'Purchase Order', N'PO/2425/', N'135', 0, 1, 165)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (4, N'Credit Note', N'CN/2425/', N'7', 0, 1, 153)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (5, N'Debit Note', N'DN/2425/', N'2', 0, 1, 171)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (6, N'Payable Voucher', N'PV/2425/', N'6', 0, 1, 177)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (7, N'Receivable Voucher', N'RV/2425/', N'2', 0, 1, 183)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (9, N'Journal Entry', N'JV/2425/', N'13', 0, 1, 195)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (10, N'Other Collection', N'OC/2425/', N'20', 0, 1, 201)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (11, N'Other Payment', N'OP/2425/', N'9', 0, 1, 207)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (12, N'Purchase Return', N'PR/2425/', N'24', 0, 1, 214)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (13, N'Inventory Adjustment', N'IA/2425/', N'18', 0, 1, 150)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (14, N'Quotation', N'QTN/2425/', N'7', 0, 1, 144)
GO
INSERT [dbo].[tblDocumentSeries] ([TransID], [TransName], [DocPrefix], [DocValue], [UDNMandatory], [Active], [MenuID]) VALUES (8, N'Contra', N'C/2425/', N'20', 0, 1, 189)
GO
SET IDENTITY_INSERT [dbo].[tblFAAccount] ON 
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'ACCOUNT BOOKS & REGISTERS', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 1, N'', N'', 1, 1, NULL, 13, CAST(N'2024-11-06T13:13:37.883' AS DateTime))
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'Advertisement Expenses', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (3, N'Amc', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 1, N'', N'', 1, 1, NULL, 13, CAST(N'2024-11-06T13:12:32.663' AS DateTime))
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (4, N'BANK CHARGES', 53, CAST(0.0000 AS Decimal(25, 4)), 1, 1, N'23422', N'', 1, 1, NULL, 2, CAST(N'2025-02-06T17:34:17.873' AS DateTime))
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (5, N'Battery for UPS', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (6, N'Bill & Chq Discounting Charges', 51, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (7, N'Bills Payable', 5, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (8, N'Bills Receivable', 4, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (9, N'Bonus', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (10, N'Breakage & Expiry', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (11, N'Building Maintenance Charges', 53, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (12, N'TDS Receivable', 4, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (13, N'Cash', 26, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (14, N'Cash Service Charge', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (15, N'Cell Phone Charges', 48, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (16, N'Cheque in Hand', 27, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (17, N'Cheque Service Charge', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (18, N'Claims Payable', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (19, N'Claims Receivable', 10, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (20, N'Cleaning Materials', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (21, N'Closing Stock', 72, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (22, N'Complementary Expenses', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (23, N'Computer & Printer Peripherals', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (24, N'Coupon', 28, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (25, N'Coupon Service Charge', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (26, N'Visa/Master Card', 30, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (27, N'Credit Card Commission', 70, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (28, N'Credit Card Service Charge', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (29, N'Depreciation Expenses', 49, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (30, N'Discount Account', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (31, N'Discount On Purchase', 15, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (32, N'Discount On Sales', 17, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (33, N'Discount On Service', 10, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (34, N'Donations', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (35, N'Electrical Fittings', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (36, N'Electricity Expenses', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (37, N'ESI Contributions', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (38, N'Foriegn Travelling Expenses', 57, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (39, N'Freight Inwards', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (40, N'Freight Outwards', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (41, N'Fuel Expenses', 48, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (42, N'Gift Voucher Customer', 31, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (43, N'Gross Loss', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (44, N'Gross Profit', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (45, N'Hospitality Charges', 53, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (46, N'Incentives', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (47, N'Income Tax', 56, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (48, N'Insurance', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (49, N'Interest Payable', 51, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (50, N'Interest Receivable', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (51, N'Internal Audit', 47, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (52, N'Loss on Sale of Asset', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (53, N'Miscellaneous', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (54, N'Net Loss', 23, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (55, N'Net Profit', 23, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (56, N'News Paper & Periodicals', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (57, N'Octroi Expenses', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (58, N'Offers & Schemes', 71, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (59, N'Office Expenses', 53, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (60, N'Opening Stock', 73, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (61, N'Other Charges', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (62, N'Others', 32, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (63, N'Others Service Charge', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (64, N'Packing Materials', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (65, N'Petty Cash', 26, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (66, N'Pooja Expenses', 53, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (67, N'Post Dated Cheque', 40, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (68, N'Postage & Courier Charges', 48, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (69, N'Professional Tax', 56, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (70, N'Profit & Loss Account', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (89, N'Service Expenses', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (90, N'Sales Tax & Licence Fees', 56, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (91, N'Sales Tax Paid', 56, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (92, N'Secondary Scheme Expense', 71, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (93, N'Security Charges', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (94, N'Service Income', 10, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (95, N'Service Tax', 38, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (96, N'Staff Insurance', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (97, N'Staff Welfare Expenses', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (98, N'Stationary Expenses', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (99, N'Statutory Audit', 47, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (100, N'Stock Transfer In', 62, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (101, N'Stock Transfer Out', 62, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (102, N'Tax Audit', 47, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (103, N'Tax on Closing Stock', 72, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (104, N'Tax on Opening Stock', 73, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (105, N'Tax on Stock Transfers', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (106, N'Tax Suffered', 17, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (107, N'TDS Payable', 38, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (108, N'Telephone & Telegraph Charges', 48, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (109, N'Tender Cost Expenses', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (110, N'Trading Account', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (111, N'Travelling Expenses', 57, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (112, N'TAX Payable (Output Tax)', 5, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (113, N'TAX Receivable (Input Tax Credit)', 36, CAST(0.0000 AS Decimal(25, 4)), 2, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (114, N'TAX RECEIVABLE ON DC', 36, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (115, N'Vehicle Rental & Hire Charges ', 48, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (116, N'Water Expenses', 54, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (117, N'Writeoff Account', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (71, N'Profit After Tax', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (72, N'Profit And Loss Appropriation', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (73, N'Profit Before Tax', 14, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (74, N'Profit on Sale of Asset', 11, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (75, N'Provident Fund Contributions', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (76, N'Purchase', 15, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (77, N'Purchase on DC', 15, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (78, N'Purchase Return', 15, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (79, N'Purchase Tax', 7, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (80, N'Rent', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (81, N'Repairs & Maintenance', 46, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (82, N'RoundOff', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (83, N'Salary', 50, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (84, N'Sales', 17, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (85, N'Sales Commission', 55, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (86, N'Sales on DC', 17, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (87, N'Sales Return Damage', 8, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAAccount] ([FAID], [AccountName], [AccountGroup], [OpeningBalance], [FATypeID], [UserAccount], [SACCode], [PANNumber], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (88, N'Sales Return Saleable', 17, CAST(0.0000 AS Decimal(25, 4)), 1, 0, NULL, NULL, 1, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblFAAccount] OFF
GO
SET IDENTITY_INSERT [dbo].[tblFAGroup] ON 
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'Borrowings - Long Term', 0, 7, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'Borrowings - Short Term', 0, 7, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (3, N'Capital Accounts', 0, 4, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (4, N'Current Assets', 0, 1, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (5, N'Current Liabilities & Provisions', 0, 7, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (6, N'Deposits', 0, 1, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (7, N'Expenditure (Direct)', 0, 2, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (8, N'Expenditure (Indirect)', 0, 5, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (9, N'Fixed Assets', 0, 1, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (10, N'Income (Direct)', 0, 3, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (11, N'Income (Indirect)', 0, 6, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (12, N'Investments', 0, 1, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (13, N'Loans & Advances', 0, 1, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (14, N'Profit & Loss Account', 0, 3, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (15, N'Purchase Account', 0, 2, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (16, N'Revenue Account', 0, NULL, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (17, N'Sales Account', 0, 3, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (18, N'Suspense Account (Temporary Account)', 0, NULL, 0, 1, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (19, N'Secured Loans', 1, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (20, N'Unsecured Loans', 1, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (21, N'Equity Share Capital', 3, 4, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (22, N'Preference Share Capital', 3, 4, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (23, N'Reserve & Surplus', 3, 4, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (24, N'Bank Accounts', 4, 1, 2, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (25, N'Branch Account', 4, 1, 2, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (26, N'Cash in Hand', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (27, N'Cheques in Hand', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (28, N'Coupons in Hand', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (29, N'Credit Card Bank Account', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (30, N'Credit Cards in Hand', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (31, N'Other Debtors', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (32, N'Others in Hand', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (33, N'Staff', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (34, N'Stock in Trade', 4, 1, 3, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (35, N'Sundry Debtors', 4, 1, 2, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (36, N'TAX Receivable', 4, 1, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (37, N'Current Liability', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (38, N'Duties & Taxes', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (39, N'Other Creditors', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (40, N'Post Dated Cheque Issue', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (41, N'Provisions', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (42, N'Provisions for Expenses', 5, 7, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (43, N'Sundry Creditors ', 5, 7, 2, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (44, N'Bank OD Account', 37, 7, 2, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (45, N'UnClaimed Dividends', 37, 7, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (46, N'ADMINISTRATIVE EXPENSES', 8, 5, 1, 2, 1, 1, NULL, 2, CAST(N'2025-02-06T17:47:47.553' AS DateTime))
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (47, N'Auditors Fees', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (48, N'Communication & Conveyance Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (49, N'Depreciation Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (50, N'Establishment Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (51, N'Financial Charges', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (52, N'Miscellaneous Expense (Asset)', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (53, N'Office & General Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (54, N'Office Consumables Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (55, N'Selling Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (56, N'Taxes & Fees', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (57, N'Travelling Expenses', 8, 5, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (58, N'Other Provisions', 41, 7, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (59, N'Proposed Dividends', 41, 7, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (60, N'Provision for Taxes', 41, 7, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (61, N'Provisions for Provident Fund', 41, 7, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (62, N'Transfers', 15, 2, 0, 2, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (63, N'Capital Redemption Reserve', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (64, N'Capital Reserves', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (65, N'Other Reserves', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (66, N'Proposed Additions to Reserves', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (67, N'Share Premium Account', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (68, N'Sinking Funds', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (69, N'Surplus', 23, 4, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (70, N'Commissions', 55, 5, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (71, N'Offers & Schemes', 55, 5, 0, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (72, N'Closing Stock', 34, 1, 3, 3, 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblFAGroup] ([FAGroup], [AccountGroupName], [ParentGroup], [TypeID], [UserGroup], [LevelID], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (73, N'Opening Stock', 34, 1, 3, 3, 1, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblFAGroup] OFF
GO
INSERT [dbo].[tblFAType] ([FATypeID], [FAType], [Active]) VALUES (1, N'Credit', 1)
GO
INSERT [dbo].[tblFAType] ([FATypeID], [FAType], [Active]) VALUES (2, N'Debit', 1)
GO
SET IDENTITY_INSERT [dbo].[tblGSTStateNameandCode] ON 
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (1, N'Andaman and Nicobar Islands', N'AN', 35, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (3, N'Andhra Pradesh (New)', N'AD', 37, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (4, N'Arunachal Pradesh', N'AR', 12, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (5, N'Assam', N'AS', 18, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (6, N'Bihar', N'BH', 10, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (7, N'Chandigarh', N'CH', 4, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (8, N'Chattisgarh', N'CT', 22, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (9, N'Dadra and Nagar Haveli', N'DN', 26, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (10, N'Daman and Diu', N'DD', 25, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (11, N'Delhi', N'DL', 7, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (12, N'Goa', N'GA', 30, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (13, N'Gujarat', N'GJ', 24, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (14, N'Haryana', N'HR', 6, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (15, N'Himachal Pradesh', N'HP', 2, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (16, N'Jammu and Kashmir', N'JK', 1, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (17, N'Jharkhand', N'JH', 20, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (18, N'Karnataka', N'KA', 29, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (19, N'Kerala', N'KL', 32, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (20, N'Lakshadweep Islands', N'LD', 31, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (21, N'Madhya Pradesh', N'MP', 23, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (22, N'Maharashtra', N'MH', 27, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (23, N'Manipur', N'MN', 14, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (24, N'Meghalaya', N'ME', 17, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (25, N'Mizoram', N'MI', 15, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (26, N'Nagaland', N'NL', 13, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (27, N'Odisha', N'OR', 21, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (28, N'Pondicherry', N'PY', 34, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (29, N'Punjab', N'PB', 3, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (30, N'Rajasthan', N'RJ', 8, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (31, N'Sikkim', N'SK', 11, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (32, N'Tamil Nadu', N'TN', 33, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (33, N'Telangana', N'TS', 36, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (34, N'Tripura', N'TR', 16, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (35, N'Uttar Pradesh', N'UP', 9, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (36, N'Uttarakhand', N'UT', 5, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (37, N'West Bengal', N'WB', 19, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (38, N'Ladakh', N'LA', 38, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (39, N'OTHER COUNTRY', N'OC', 96, 1)
GO
INSERT [dbo].[tblGSTStateNameandCode] ([StateID], [StateName], [StateCode], [TINNo], [Active]) VALUES (40, N'OTHER TERRITORY', N'OT', 97, 1)
GO
SET IDENTITY_INSERT [dbo].[tblGSTStateNameandCode] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterBank] ON 
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'AXIS BANK', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 2, CAST(N'2024-12-27T18:09:56.697' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'BANDHAN BANK.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 3, CAST(N'2024-11-10T14:59:05.427' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (3, N'BANK OF BARODA', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 2, CAST(N'2024-12-27T19:21:45.123' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (4, N'BANK OF INDIA', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 3, CAST(N'2024-11-07T15:21:45.617' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (5, N'Bank of Maharashtra', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (6, N'Canara Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 13, CAST(N'2024-11-06T09:19:54.550' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (7, N'Central Bank of India', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (8, N'CITY UNION BANK', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 13, CAST(N'2024-11-06T09:20:55.847' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (9, N'CSB BANK PVT LTD, CH', 0, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 2, CAST(N'2024-12-26T22:35:26.753' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (10, N'DCB Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (11, N'Dhanlaxmi Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (12, N'Federal Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (13, N'HDFC Bank Ltd', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (14, N'ICICI Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (15, N'IDBI Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (16, N'IDFC First Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (17, N'Indian Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (18, N'Indian Overseas Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (19, N'Induslnd Bank Ltd', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (20, N'Jammu & Kashmir Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (21, N'Karnataka Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (22, N'KARUR VYSYA BANK', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (23, N'Kotak Mahindra Bank Ltd', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (24, N'Lakshmi Vilas Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (25, N'Nainital Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (26, N'Punjab & Sind Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (27, N'Punjab National Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (28, N'RBL Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (29, N'South Indian Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (30, N'State Bank of India', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (31, N'Tamilnad Mercantile Bank Ltd', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 4, CAST(N'2024-11-04T10:36:38.327' AS DateTime))
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (32, N'UCO Bank', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (33, N'Union Bank of India', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterBank] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (34, N'Yes Bank Ltd.', 1, 2, CAST(N'2024-09-30T10:53:08.660' AS DateTime), 13, CAST(N'2024-11-05T10:34:43.127' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[tblMasterBank] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterRole] ON 
GO
INSERT [dbo].[tblMasterRole] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'Super Admin', 1, 1, NULL, 13, CAST(N'2024-11-05T12:00:18.940' AS DateTime))
GO
INSERT [dbo].[tblMasterRole] ([ID], [Name], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'ADMIN', 1, 1, NULL, 13, CAST(N'2024-11-08T12:06:46.687' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblMasterRole] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterTax] ON 
GO
INSERT [dbo].[tblMasterTax] ([TaxID], [TaxName], [GST], [IGST], [GUOM], [IUOM], [Active], [CBy], [CBate], [MBy], [MBate]) VALUES (1, N'GST 0%', CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblMasterTax] ([TaxID], [TaxName], [GST], [IGST], [GUOM], [IUOM], [Active], [CBy], [CBate], [MBy], [MBate]) VALUES (2, N'GST 5%', CAST(5.0000 AS Decimal(25, 4)), CAST(5.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblMasterTax] ([TaxID], [TaxName], [GST], [IGST], [GUOM], [IUOM], [Active], [CBy], [CBate], [MBy], [MBate]) VALUES (3, N'GST 12%', CAST(12.0000 AS Decimal(25, 4)), CAST(12.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblMasterTax] ([TaxID], [TaxName], [GST], [IGST], [GUOM], [IUOM], [Active], [CBy], [CBate], [MBy], [MBate]) VALUES (4, N'GST 18%', CAST(18.0000 AS Decimal(25, 4)), CAST(18.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), 1, 1, NULL, NULL, NULL)
GO
INSERT [dbo].[tblMasterTax] ([TaxID], [TaxName], [GST], [IGST], [GUOM], [IUOM], [Active], [CBy], [CBate], [MBy], [MBate]) VALUES (5, N'GST 28%', CAST(28.0000 AS Decimal(25, 4)), CAST(28.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), CAST(0.0000 AS Decimal(25, 4)), 1, 1, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblMasterTax] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxComponent] ON 
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'CGST 0%', CAST(0.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:43:52.200' AS DateTime), 13, CAST(N'2024-11-08T11:47:33.237' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'SGST 0%', CAST(0.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:44:04.907' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (3, N'IGST 0%', CAST(0.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:44:19.473' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (4, N'CGST 2.5%', CAST(2.5000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:45:52.933' AS DateTime), 2, CAST(N'2025-02-03T16:23:17.667' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (5, N'SGST 2.5%', CAST(2.5000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:46:04.067' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (6, N'IGST 5%', CAST(5.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:46:16.297' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (7, N'CGST 6%', CAST(6.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:46:42.730' AS DateTime), 2, CAST(N'2024-11-06T20:19:41.673' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (8, N'SGST 6%', CAST(6.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:46:52.847' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (9, N'IGST 12%', CAST(12.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:47:09.533' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (10, N'CGST 9%', CAST(9.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:47:41.037' AS DateTime), 2, CAST(N'2024-11-06T20:21:32.370' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (11, N'SGST 9%', CAST(9.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:47:51.080' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (12, N'IGST 18%', CAST(18.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:48:08.290' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (13, N'CGST 14%', CAST(14.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:48:28.703' AS DateTime), 13, CAST(N'2024-11-08T12:03:09.763' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (14, N'SGST 14%', CAST(14.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:48:40.467' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (15, N'IGST 28%', CAST(28.0000 AS Decimal(25, 4)), 1, 2, CAST(N'2021-11-24T16:48:57.593' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (16, N'CGST2%', CAST(2.0000 AS Decimal(25, 4)), 1, 13, CAST(N'2024-11-06T12:10:35.867' AS DateTime), 2, CAST(N'2024-11-06T16:05:14.200' AS DateTime))
GO
INSERT [dbo].[tblMasterTaxComponent] ([ID], [Name], [Value], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (17, N'IGST 6%', CAST(6.0000 AS Decimal(25, 4)), 1, 13, CAST(N'2024-11-26T10:43:16.667' AS DateTime), NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxComponent] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxDetail] ON 
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (1, 1, 1, 1, CAST(0.0000 AS Decimal(25, 4)), 0, 100, CAST(0.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (2, 1, 1, 2, CAST(0.0000 AS Decimal(25, 4)), 0, 100, CAST(0.0000 AS Decimal(25, 4)), 2)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (3, 1, 2, 3, CAST(0.0000 AS Decimal(25, 4)), 0, 100, CAST(0.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (4, 2, 1, 4, CAST(2.5000 AS Decimal(25, 4)), 0, 100, CAST(2.5000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (5, 2, 1, 5, CAST(2.5000 AS Decimal(25, 4)), 0, 100, CAST(2.5000 AS Decimal(25, 4)), 2)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (6, 2, 2, 6, CAST(5.0000 AS Decimal(25, 4)), 0, 100, CAST(5.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (7, 3, 1, 7, CAST(6.0000 AS Decimal(25, 4)), 0, 100, CAST(6.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (8, 3, 1, 8, CAST(6.0000 AS Decimal(25, 4)), 0, 100, CAST(6.0000 AS Decimal(25, 4)), 2)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (9, 3, 2, 9, CAST(12.0000 AS Decimal(25, 4)), 0, 100, CAST(12.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (10, 4, 1, 10, CAST(9.0000 AS Decimal(25, 4)), 0, 100, CAST(9.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (11, 4, 1, 11, CAST(9.0000 AS Decimal(25, 4)), 0, 100, CAST(9.0000 AS Decimal(25, 4)), 2)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (12, 4, 2, 12, CAST(18.0000 AS Decimal(25, 4)), 0, 100, CAST(18.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (13, 5, 1, 13, CAST(14.0000 AS Decimal(25, 4)), 0, 100, CAST(14.0000 AS Decimal(25, 4)), 1)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (14, 5, 1, 14, CAST(14.0000 AS Decimal(25, 4)), 0, 100, CAST(14.0000 AS Decimal(25, 4)), 2)
GO
INSERT [dbo].[tblMasterTaxDetail] ([TaxDetialID], [TaxID], [TaxTypeID], [TaxCompID], [TaxRate], [AppOn], [PartOff], [CumulativeTax], [GSTTaxType]) VALUES (15, 5, 2, 15, CAST(28.0000 AS Decimal(25, 4)), 0, 100, CAST(28.0000 AS Decimal(25, 4)), 1)
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxDetail] OFF
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxType] ON 
GO
INSERT [dbo].[tblMasterTaxType] ([TaxTypeID], [TaxTypeName], [Active]) VALUES (1, N'GST', 1)
GO
INSERT [dbo].[tblMasterTaxType] ([TaxTypeID], [TaxTypeName], [Active]) VALUES (2, N'IGST', 1)
GO
SET IDENTITY_INSERT [dbo].[tblMasterTaxType] OFF
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (1, N'Master', 0, 1, 1, N'Master', 1, 1, 1, 1, 0, 0, N'mELirpUhRYksFj7k8/XBcQ==', N'EKtlM+Y5YP4Tn2ohrVB+Pg==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (2, N'Bank', 1, 2, 1, N'SingleMaster', 1, 1, 1, 1, 1, 0, N'BOII5FUynjpl5RZJJ8nW1g==', N'd1SRgPH3hrsAgtGtW9Kfmw==', N'mELirpUhRYksFj7k8/XBcQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (3, N'Add Bank', 2, 3, 1, N'SingleMaster', 1, 1, 1, 0, 1, 0, N'ydRRTTxkdt6Trx91pX1+cA==', N'j/+sztrbQL9AO6BDbgoFqmTGcipRKNrykgPmhQX3yK4=', N'mELirpUhRYksFj7k8/XBcQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (4, N'Modify Bank', 2, 3, 1, N'SingleMaster', 1, 1, 1, 0, 1, 0, N'Tg3R3dzL5d8qh2W0SyphdQ==', N'AztrBPiLwUQpfiTf7z7e7jDUMnh5C1B8aLcV6H0VKHI=', N'mELirpUhRYksFj7k8/XBcQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (5, N'View Bank', 2, 3, 1, N'SingleMaster', 1, 1, 1, 0, 1, 0, N'Y7Ubn6c7hvLjihiwyLyQ/w==', N'KnURwHSilAqo4NB8mut9vzbkEKnz9pfggZGWD23YF6E=', N'mELirpUhRYksFj7k8/XBcQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (6, N'Beat', 1, 2, 1, N'SingleMaster', 1, 1, 2, 1, 2, 0, N'4B1QmJBAsAaLln5kYbI+JA==', N'uS++ndIKCg9j2BkMavsHaQ==', N'BOII5FUynjpl5RZJJ8nW1g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (7, N'Add Beat', 6, 3, 1, N'SingleMaster', 1, 1, 2, 0, 2, 0, N'HbyPiQySlfB+VAWrSj70Bw==', N'Cw+OFHjwSD2Wwoir9iQYAZpT3UPlx9DR5JaRHcmkDmA=', N'BOII5FUynjpl5RZJJ8nW1g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (8, N'Modify Beat', 6, 3, 1, N'SingleMaster', 1, 1, 2, 0, 2, 0, N'jdLumi2w7Hxz4+VktNGHzA==', N'AztrBPiLwUQpfiTf7z7e7qDjRDfO7pSvhpFQZUFb+78=', N'BOII5FUynjpl5RZJJ8nW1g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (9, N'View Beat', 6, 3, 1, N'SingleMaster', 1, 1, 2, 0, 2, 0, N'tfybAswTsDSuOwy2YY2x4w==', N'Fo53fTp3BxZMDLFEIPwF68ja5THvPFO0/tIHU1usYGQ=', N'BOII5FUynjpl5RZJJ8nW1g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (10, N'Brand', 1, 2, 1, N'SingleMaster', 1, 1, 3, 1, 3, 0, N'iAx+nZUbnlcYClzyIsQ0ZA==', N'AOYvdgbTMJLeEXtoZklfZw==', N'ydRRTTxkdt6Trx91pX1+cA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (11, N'Add Brand', 10, 3, 1, N'SingleMaster', 1, 1, 3, 0, 3, 0, N'yfwXks99d3XI+Rbzzr3ZHw==', N'B7GuXiQs3q7nzIZULHWV8hu83zTqUdXbA+5aVbt3hF0=', N'ydRRTTxkdt6Trx91pX1+cA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (12, N'Modify Brand', 10, 3, 1, N'SingleMaster', 1, 1, 3, 0, 3, 0, N'mEzZBKPOkXLjMUDj1TaO/Q==', N'AztrBPiLwUQpfiTf7z7e7rQ0A/ykttKBThagZrM5utQ=', N'ydRRTTxkdt6Trx91pX1+cA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (13, N'View Brand', 10, 3, 1, N'SingleMaster', 1, 1, 3, 0, 3, 0, N'5iI8NvAvmYV/ZdipUw3e0Q==', N'TQpJUBHn2WByeW9FxyAufAoZiQOTTrySGUBsdCtX1y4=', N'ydRRTTxkdt6Trx91pX1+cA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (14, N'Credit Term', 1, 2, 1, N'TaxCompGift', 1, 1, 4, 1, 4, 0, N'4J9NzcLe5AH1ANjpwAwOwA==', N'egOIy11IfurSCf1xP3tHhcsrFfMn/3jcr+HSpUEIF0Q=', N'Tg3R3dzL5d8qh2W0SyphdQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (15, N'Add Credit Term', 14, 3, 1, N'TaxCompGift', 1, 1, 4, 0, 4, 0, N'CqtJgc1EYX/E3Us1gP294w==', N'meDX18qa4KJyczrFC2sdMikiZisWO7M7YEqYCyA3tAA=', N'Tg3R3dzL5d8qh2W0SyphdQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (16, N'Modify Credit Term', 14, 3, 1, N'TaxCompGift', 1, 1, 4, 0, 4, 0, N'EvsdnH+UlJpTVhFYh+i13g==', N'mM8ONmCnIn61dbTYVzixZCaClFC8648daBpUFPrMuTyHIvwlJ2dH9MXa21O61kaq', N'Tg3R3dzL5d8qh2W0SyphdQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (17, N'View Credit Term', 14, 3, 1, N'TaxCompGift', 1, 1, 4, 0, 4, 0, N'WHYf4alVgNJY/X917pnZ3w==', N'dKi9o+GUuTdSRBVsCtvSbv8f+0agorR7r0LLwDxgSlwF1lR86KdWGPiAFrIcdd2P', N'Tg3R3dzL5d8qh2W0SyphdQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (18, N'Category', 1, 2, 1, N'SingleMaster', 1, 1, 5, 1, 5, 0, N'IXL1NOfIxouMMmMKvHxKbA==', N'KVgkQiI7gZaijcAoW1FG5JHFVMDc4rvBOTqdGJBsJ9E=', N'Y7Ubn6c7hvLjihiwyLyQ/w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (19, N'Add Category', 18, 3, 1, N'SingleMaster', 1, 1, 5, 0, 5, 0, N'NyU15GCpL/ZR9n8fK57WAg==', N'1y4HgOiL8cEMM916rxA936y6o9pSgtvudvbEMoY7Rro=', N'Y7Ubn6c7hvLjihiwyLyQ/w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (20, N'Modify Category', 18, 3, 1, N'SingleMaster', 1, 1, 5, 0, 5, 0, N'EiUB5OIbEnvdq6f1lb1IEw==', N'mM8ONmCnIn61dbTYVzixZCU9SEeuGg/iX/2J7MzWHg4=', N'Y7Ubn6c7hvLjihiwyLyQ/w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (21, N'View Category', 18, 3, 1, N'SingleMaster', 1, 1, 5, 0, 5, 0, N'F8CizCBmb3gdgaHkI8E9EA==', N'rAr1NQnd1O2y9y9P4oWel1HwovLM8rycDR0tKWwJM6w=', N'Y7Ubn6c7hvLjihiwyLyQ/w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (22, N'Manufacturer', 1, 2, 1, N'SingleMaster', 1, 1, 6, 1, 6, 0, N'+n+PSzENiOAcC0drmsXdfw==', N'x+8vcRDTXYyjTg+96KPhMsvPTVQtvUKLHu4zy1gNKD8=', N'4B1QmJBAsAaLln5kYbI+JA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (23, N'Add Manufacturer', 22, 3, 1, N'SingleMaster', 1, 1, 6, 0, 6, 0, N'rq5q6i50XyKdLeCOronJVw==', N'lV0ldwBo3/iMVXFrgQsEFlZiylKr8AOYT0SwrCYxQ7oDE77420CtZk3hwZBNE78Z', N'4B1QmJBAsAaLln5kYbI+JA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (24, N'Modify Manufacturer', 22, 3, 1, N'SingleMaster', 1, 1, 6, 0, 6, 0, N'1aQsscYkD1SWf3AMAX2PTQ==', N'NfJqyHdPzR4WF0iFSfbmTclfnlSIT9MZzCZ37J/sPBZIJ3D+RBxJMJiQjn8UoBkc', N'4B1QmJBAsAaLln5kYbI+JA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (25, N'View Manufacturer', 22, 3, 1, N'SingleMaster', 1, 1, 6, 0, 6, 0, N'IQhEoLP/dN3wEndxbtM3zw==', N'nhuAqVOwjIFZqOPs+Zhw9qMXNHIe0sfEqLxpmvP/vfX1sRjqhUrWeHiAjyK+Yo/L', N'4B1QmJBAsAaLln5kYbI+JA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (26, N'Reason', 1, 2, 1, N'SingleMaster', 1, 1, 7, 1, 7, 0, N'9PmmH5xzgb+C08uj8hAzfA==', N'G9u1YxQO3q5KrxbfY7UoKw==', N'HbyPiQySlfB+VAWrSj70Bw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (27, N'Add Reason', 26, 3, 1, N'SingleMaster', 1, 1, 7, 0, 7, 0, N'4UQ15ZdC2EvQshvLkmfipw==', N'RPhtgfobQWmJX0kNCsNdigyfMQKYLOl+xJ/iWJZNQ2s=', N'HbyPiQySlfB+VAWrSj70Bw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (28, N'Modify Reason', 26, 3, 1, N'SingleMaster', 1, 1, 7, 0, 7, 0, N'RjZMX+X6NiPSRFI2WDoZJA==', N'xLAzTlfd7j6tgZkCqArX3OF5zY0Diq4yS+QMCFVA7xw=', N'HbyPiQySlfB+VAWrSj70Bw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (29, N'View Reason', 26, 3, 1, N'SingleMaster', 1, 1, 7, 0, 7, 0, N'aaxDV02S8MX1Av/jr1SFzw==', N'XmyWkNKkNnDQmvT+gJiFp3Wwaj6Nx4ufLCYgqmuRfhU=', N'HbyPiQySlfB+VAWrSj70Bw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (30, N'Return Type', 1, 2, 1, N'SingleMaster', 1, 1, 8, 1, 8, 0, N'wpKzonWORWusQ54Lg/xmqw==', N'GN98nHEfhTQXGt73jXp5pfOnlepY6+X6xvbkh+N5XBY=', N'jdLumi2w7Hxz4+VktNGHzA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (31, N'Add Return Type', 30, 3, 1, N'SingleMaster', 1, 1, 8, 0, 8, 0, N'LbxGDj6QaepjcU0IleDVLw==', N'z9m5PHsm5Y3O4d6LA6U779ibC7NJLHL6n6AmqqNLfZM=', N'jdLumi2w7Hxz4+VktNGHzA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (32, N'Modify Return Type', 30, 3, 1, N'SingleMaster', 1, 1, 8, 0, 8, 0, N'KBlGs+xMSssJg1yyTNC/Qw==', N'xLAzTlfd7j6tgZkCqArX3HPJxyNcwPWx02E/IlIED1Mbhn/WtPSxAY8Vp/9jKJpc', N'jdLumi2w7Hxz4+VktNGHzA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (33, N'View Return Type', 30, 3, 1, N'SingleMaster', 1, 1, 8, 0, 8, 0, N'bYvlmQPHdNq6pVAg8/iaow==', N'h7Pfssz7LS8A4XxGGCIHX7XAn3BhGdH8Pu49VnKe/4vL/TXLE6ouaPnEwzKfe+b2', N'jdLumi2w7Hxz4+VktNGHzA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (34, N'UOM', 1, 2, 1, N'SingleMaster', 1, 1, 9, 1, 9, 0, N'ot0kjaleRWPJ/hhh+39giw==', N'Y4yP1w6GnUJJ/x/swWSVeA==', N'tfybAswTsDSuOwy2YY2x4w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (35, N'Add UOM', 34, 3, 1, N'SingleMaster', 1, 1, 9, 0, 9, 0, N'es3+/YyB6flh/7XaHyJC2Q==', N'ygWJtxm/GvwIJ8r3TqyBfA==', N'tfybAswTsDSuOwy2YY2x4w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (36, N'Modify UOM', 34, 3, 1, N'SingleMaster', 1, 1, 9, 0, 9, 0, N'uu3fSKZzBiUaH+V/xyoBzQ==', N'DGzo8S3iLrbbFDvnLljQB4A+kCMLEsaG7UfsHPeIzdo=', N'tfybAswTsDSuOwy2YY2x4w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (37, N'View UOM', 34, 3, 1, N'SingleMaster', 1, 1, 9, 0, 9, 0, N'JdPp8b6L2lCX22U10LfFtQ==', N'w6l+a29KJxWEQWTFSTV0l7bGhDE7dfIGoEPzynSCDoE=', N'tfybAswTsDSuOwy2YY2x4w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (38, N'Mail Address', 1, 2, 1, N'SingleMaster', 1, 1, 10, 1, 10, 0, N'h2bypOe0AoHFu7mVYuTK5A==', N'AeTNQi24A6dWJuaUIDqyOE+KbltRIUEPSbJ1Q+hZS58=', N'iAx+nZUbnlcYClzyIsQ0ZA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (39, N'Add Mail Address', 38, 3, 1, N'SingleMaster', 1, 1, 10, 0, 10, 0, N'rv9glQ0xZx2n7tkHmC+ycg==', N'hzY0gjI/XR5KnrpFuv9WpLk53jRXP8R0saYpgClvRDgVbFkY41bbqiSEKZpbMfjq', N'iAx+nZUbnlcYClzyIsQ0ZA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (40, N'Modify Mail Address', 38, 3, 1, N'SingleMaster', 1, 1, 10, 0, 10, 0, N'nBg+oK7HWWeZVo4G1oAzng==', N'NfJqyHdPzR4WF0iFSfbmTUl31IT7RdD7AOzCHh6aWfflhS0SC8tAjfNwaCBfOH5U', N'iAx+nZUbnlcYClzyIsQ0ZA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (41, N'View Mail Address', 38, 3, 1, N'SingleMaster', 1, 1, 10, 0, 10, 0, N'bmY83UzQeQIsxDShURdGyw==', N'6lNN0q8atKS/zF1qp+Tysg4xYUKfi90mNLH5ihQqTDwF2VRbPaPb2rFs848N+0AR', N'iAx+nZUbnlcYClzyIsQ0ZA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (42, N'Location', 1, 2, 1, N'SingleMaster', 1, 1, 11, 1, 11, 0, N'/CmHtkGSJ91DqNC1Wxq0Hg==', N'etQ0/9+w867aiWfMnRDSg1+qovF57F/rjhMjSflN4lA=', N'yfwXks99d3XI+Rbzzr3ZHw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (43, N'Add Location', 42, 3, 1, N'SingleMaster', 1, 1, 11, 0, 11, 0, N'tx+0ioQ2cB1dPJNAio3plQ==', N'EBrQIzcMMwa11NE2OjOM5W2LJHPbX4h9HNMg8oAX8ww=', N'yfwXks99d3XI+Rbzzr3ZHw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (44, N'Modify Location', 42, 3, 1, N'SingleMaster', 1, 1, 11, 0, 11, 0, N'btTvQY/5RHrD9N79caWuAw==', N'AflJVzvKSWgG+kZSC89mj1nDwiBr6wKwtaO3Bu6wPKA=', N'yfwXks99d3XI+Rbzzr3ZHw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (45, N'View Location', 42, 3, 1, N'SingleMaster', 1, 1, 11, 0, 11, 0, N'L/e+Ip+F0CYffNKPQ/QJNQ==', N'JfQa/5is5KxcFS1TLLZoxsX/vs/eIskjNdBqUKqm+PU=', N'yfwXks99d3XI+Rbzzr3ZHw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (46, N'Role', 1, 2, 1, N'SingleMaster', 1, 1, 12, 1, 12, 0, N'SZmOd/CrxTo9CHD2XKF+pA==', N'TpY3HtDSsHf3ZceMOWToaA==', N'mEzZBKPOkXLjMUDj1TaO/Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (47, N'Add Role', 46, 3, 1, N'SingleMaster', 1, 1, 12, 0, 12, 0, N'slpUYzbPTfKqhKpXcmRlWg==', N'ocLsqlg7kinblzOS02Pnje1wPAKagWe3Oh5R7TXPs0o=', N'mEzZBKPOkXLjMUDj1TaO/Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (48, N'Modify Role', 46, 3, 1, N'SingleMaster', 1, 1, 12, 0, 12, 0, N'Czi+IvhTsckdy3wWbE8z3g==', N'xLAzTlfd7j6tgZkCqArX3A+1SfgcdmpIfGz5eviqrV4=', N'mEzZBKPOkXLjMUDj1TaO/Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (49, N'View Role', 46, 3, 1, N'SingleMaster', 1, 1, 12, 0, 12, 0, N'GjoDfPSc1OqY99AS5ZYkjw==', N'tT6zLf8qQiVPH+lE2DPNAQPztXRl3aP5HW4flPPBQvc=', N'mEzZBKPOkXLjMUDj1TaO/Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (50, N'Salesman Group', 1, 2, 1, N'SingleMaster', 1, 1, 13, 1, 13, 0, N'aSUMVrRDwOqchfyzaRLv1w==', N'r8yIwuCefL0RbL6dbkzV7nHyhjXz7R5KIdkCv+EMzEc=', N'5iI8NvAvmYV/ZdipUw3e0Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (51, N'Add Salesman Group', 50, 3, 1, N'SingleMaster', 1, 1, 13, 0, 13, 0, N'kKb+YnbV5uUHm66rHFlD+A==', N'NdptkgAv8vigPWj8XCSzy1LT14T/6oU9mpe6VuUHxq179sLGWK+lH6W7vKeNywDo', N'5iI8NvAvmYV/ZdipUw3e0Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (52, N'Modify Salesman Group', 50, 3, 1, N'SingleMaster', 1, 1, 13, 0, 13, 0, N'fKs9C2RJnifPByt+PVHFfA==', N'7znmMnCjbUwSsr1x039TglL0MRghZF4m1a8L3gELVqAIvoNmDYmBg9NOxC1+h0d2', N'5iI8NvAvmYV/ZdipUw3e0Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (53, N'View Salesman Group', 50, 3, 1, N'SingleMaster', 1, 1, 13, 0, 13, 0, N'9weK24GUykXJUd1GhSwwvw==', N'1AOv1ZxZBWgg+7OZNUkYc4SFtYazaRfLiBGNYaBS0/31xDgs67vaDySOfdV0l0Er', N'5iI8NvAvmYV/ZdipUw3e0Q==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (54, N'Product Group', 1, 2, 1, N'SingleMaster', 1, 1, 14, 1, 14, 0, N'/QHg/wVxPKXo751TWS4vNA==', N'4Kl9YhXi9emq/2waIZYqKET6vfOSF7FV1Jnyc1Sv1Hg=', N'4J9NzcLe5AH1ANjpwAwOwA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (55, N'Add Product Group', 54, 3, 1, N'SingleMaster', 1, 1, 14, 0, 14, 0, N'lwl6UwIDuAsYcXG9ZLFieA==', N'4TxkNzVSDCPahfQ91pwAI1MSfcz5uM91WRmLfix6qxYTirQlUfSKjIYMlhmWsdVB', N'4J9NzcLe5AH1ANjpwAwOwA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (56, N'Modify Product Group', 54, 3, 1, N'SingleMaster', 1, 1, 14, 0, 14, 0, N'PKNiIzhi+4eXe9yO0wXzoA==', N'ih7Autqcgfo1mDiMvY7KoveCxoHv18Sd7P0g7jxb+yMiynoG7oX/OZ2X/0vB1q8q', N'4J9NzcLe5AH1ANjpwAwOwA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (57, N'View Product Group', 54, 3, 1, N'SingleMaster', 1, 1, 14, 0, 14, 0, N'r671qLl3AEwEH53cXvyYjw==', N'/dXK0Y4tpJfQTz/Ofyr7qsl2lIFQtGUPuHJllwlrztErFrq2xAhN4yAXHnlusk+h', N'4J9NzcLe5AH1ANjpwAwOwA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (58, N'Customer Type', 1, 2, 1, N'SingleMaster', 1, 1, 15, 1, 15, 0, N'QEplZnIey/BLiy955it4lQ==', N'rr5Wddu2buz5UA+G9dT9UWq7OW639DgJ+eu2Thm/K+8=', N'CqtJgc1EYX/E3Us1gP294w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (59, N'Add Customer Type', 58, 3, 1, N'SingleMaster', 1, 1, 15, 0, 15, 0, N'zKiRYk9XL5YeFQK+uAot2w==', N'HqQaKI7wnoRsNJv8bbIMjGagkJS2KCbORkOsVx3tsgZXYawM4PgHKAjYERNnCTfi', N'CqtJgc1EYX/E3Us1gP294w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (60, N'Modify Customer Type', 58, 3, 1, N'SingleMaster', 1, 1, 15, 0, 15, 0, N't2vJaO/vNBeeQTGZyDcp/Q==', N'mM8ONmCnIn61dbTYVzixZA/CwOKmephdinLn4EENf1LjcYWZRYwIrwUu+88EBRpL', N'CqtJgc1EYX/E3Us1gP294w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (61, N'View Customer Type', 58, 3, 1, N'SingleMaster', 1, 1, 15, 0, 15, 0, N'nhuy3AsZDkIy73PMgWUHLw==', N'4zt51TdOtgIxfIVHk3pVHUmS1E4hQEa/3GlBhYN1KE1nPiOnSIcQAIliKLVgLSCT', N'CqtJgc1EYX/E3Us1gP294w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (62, N'Tax Component', 1, 2, 1, N'TaxCompGift', 1, 1, 16, 1, 16, 0, N'n9wnPK4y9LqvmWsiqrfoeg==', N'iG4yp7u5Qc3GiONdP/yvrVVUBKjjSCXDLBFb6jRx/8E=', N'EvsdnH+UlJpTVhFYh+i13g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (63, N'Add Tax Component', 62, 3, 1, N'TaxCompGift', 1, 1, 16, 0, 16, 0, N'2Naq7AgFfSwdHjL0CyQTzQ==', N'HDsI4hZNRz8zI6W/6Tx7fZr1Z2Ve+dgkdDpTPuEQbdDJ42GqchDLAW2ZJ//jAmX/', N'EvsdnH+UlJpTVhFYh+i13g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (64, N'Modify Tax Component', 62, 3, 1, N'TaxCompGift', 1, 1, 16, 0, 16, 0, N'kvTE+ELS/LvdZAvBWi4FZg==', N'3JjhjdlfI80FAaUtafZPPZsvSTc5+Zy2eXVEHCUa3JIhv4GqVT3oL2nn5lKLEBNh', N'EvsdnH+UlJpTVhFYh+i13g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (65, N'View Tax Component', 62, 3, 1, N'TaxCompGift', 1, 1, 16, 0, 16, 0, N'aainfsNuS3WuZ1KeQTuO/g==', N'nPSVHNbXg8pfyJJgluygfxqPAs0L4gSFOXA8U/SxJfjymVl0M22Ger6SfFR4nZtf', N'EvsdnH+UlJpTVhFYh+i13g==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (66, N'Gift', 1, 2, 1, N'TaxCompGift', 1, 1, 17, 1, 17, 0, N'0MswJ7K3Fk9sU9jfq22ecg==', N'P8hNWPvtRy7P5Y3+PT1u3A==', N'WHYf4alVgNJY/X917pnZ3w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (67, N'Add Gift', 66, 3, 1, N'TaxCompGift', 1, 1, 17, 0, 17, 0, N'x1Wat4R4YVmt60uJyR/peA==', N'OadD+Mis6Gsc6sH1hhpu2i2Prdbqy2VyxURIAlXdDI4=', N'WHYf4alVgNJY/X917pnZ3w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (68, N'Modify Gift', 66, 3, 1, N'TaxCompGift', 1, 1, 17, 0, 17, 0, N'CLIrTXTdl+a2DIaNNlvA4g==', N'qLo1YNqO2x93rLF1vVZP5lR3ZxVeb4ID3RkHr8sKJM4=', N'WHYf4alVgNJY/X917pnZ3w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (69, N'View Gift', 66, 3, 1, N'TaxCompGift', 1, 1, 17, 0, 17, 0, N'zkmnXSPZczYoUeu52uotXg==', N'ulZLBS3NSU7RoSf1NPS6d2f6L2VcL6mJKFioekbkw8E=', N'WHYf4alVgNJY/X917pnZ3w==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (70, N'Services', 1, 2, 1, N'ServiceMaster', 1, 1, 18, 1, 18, 0, N'FCyb5bBSyh7u/N2ox4o6mQ==', N'AW7e/s8UGmm5DKHYBVm0+HJSeDoTFx1e7pmomv1cN50=', N'IXL1NOfIxouMMmMKvHxKbA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (71, N'Add Services', 70, 3, 1, N'ServiceMaster', 1, 1, 18, 0, 18, 0, N'1Hfi36hfD/k22fm5fqmuag==', N'F2H3bo/tj1HcCpXzWKMaV9LHNvNqIR2QX+Gm+Y+ru8w=', N'IXL1NOfIxouMMmMKvHxKbA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (72, N'Modify Services', 70, 3, 1, N'ServiceMaster', 1, 1, 18, 0, 18, 0, N'AfI07azv6nWhAj0qw/RJ5A==', N'7znmMnCjbUwSsr1x039TgtKiz+5aGbp8p27z9X3ToiQ=', N'IXL1NOfIxouMMmMKvHxKbA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (73, N'View Services', 70, 3, 1, N'ServiceMaster', 1, 1, 18, 0, 18, 0, N'uMqZdiao/0HpGtyFdx7JCw==', N'+KGKCaP1kn3bWqwEzCm17p3fDIuCQGT3bFgQjzJlYVU=', N'IXL1NOfIxouMMmMKvHxKbA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (74, N'Vehicle', 1, 2, 1, N'VehicleMaster', 1, 1, 19, 1, 19, 0, N'tkic99UxRUL8tRavCULT+A==', N'7O66uN/kROyeg6Gr1WYoaQ==', N'NyU15GCpL/ZR9n8fK57WAg==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (75, N'Add Vehicle', 74, 3, 1, N'VehicleMaster', 1, 1, 19, 0, 19, 0, N'73i/gg6iviH/SEzdJKANTg==', N'HAa/fHtt2a9AoQXuV+AMEMJAqC7w/JwbEHvwcVwM7nQ=', N'NyU15GCpL/ZR9n8fK57WAg==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (76, N'Modify Vehicle', 74, 3, 1, N'VehicleMaster', 1, 1, 19, 0, 19, 0, N'qD9Elj2YGHfzfbrHAZ9QKw==', N'8/qObreNQxi3QK0nMRLVBepI0Zu4WIMMI71XI4It56Q=', N'NyU15GCpL/ZR9n8fK57WAg==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (77, N'View Vehicle', 74, 3, 1, N'VehicleMaster', 1, 1, 19, 0, 19, 0, N'kM9AXs68ThgdDyeANN9gsA==', N'1O092TIxZge2Khm7sb5fB/dRAyMA9LKge3tfGDCXGlQ=', N'NyU15GCpL/ZR9n8fK57WAg==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (78, N'Salesman', 1, 2, 1, N'SalesmanMaster', 1, 1, 20, 1, 20, 0, N'kFi9BTxkZgNrO1cpkwYIPQ==', N'r8yIwuCefL0RbL6dbkzV7hS653HRxUkWTEY0xpdlCgc=', N'EiUB5OIbEnvdq6f1lb1IEw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (79, N'Add Salesman', 78, 3, 1, N'SalesmanMaster', 1, 1, 20, 0, 20, 0, N'GqtIDv68AUPHXKQSIriM4A==', N'NdptkgAv8vigPWj8XCSzyznANr6mSVniPAoO7yeI3fs=', N'EiUB5OIbEnvdq6f1lb1IEw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (80, N'Modify Salesman', 78, 3, 1, N'SalesmanMaster', 1, 1, 20, 0, 20, 0, N'zRa3xGL9AFAFFttedQMEFw==', N'7znmMnCjbUwSsr1x039TgtvqhmEeZfDsAKUO7Y3PBtk=', N'EiUB5OIbEnvdq6f1lb1IEw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (81, N'View Salesman', 78, 3, 1, N'SalesmanMaster', 1, 1, 20, 0, 20, 0, N'Evxf4T15DD8FA+LoyKuSHg==', N'1AOv1ZxZBWgg+7OZNUkYcyNGLvL2J3t70pW1BU1BbPI=', N'EiUB5OIbEnvdq6f1lb1IEw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (82, N'Branch Office', 1, 2, 1, N'BranchOffice', 1, 1, 21, 1, 21, 0, N'i9XsiPRwCHO/YnXDEWcjbw==', N'qFQuZ89je+Jmd/TBy+yJ+NlzQatIgTxhqOGQgChQ+TU=', N'F8CizCBmb3gdgaHkI8E9EA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (83, N'Add Branch Office', 82, 3, 1, N'BranchOffice', 1, 1, 21, 0, 21, 0, N'9Dpk+gUmFnmrPxq7ZKqqJA==', N'B7GuXiQs3q7nzIZULHWV8oCioWp4fKKR/RiVvPDKEyg5+1htKWe4IpkMkm4b24KH', N'F8CizCBmb3gdgaHkI8E9EA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (84, N'Modify Branch Office', 82, 3, 1, N'BranchOffice', 1, 1, 21, 0, 21, 0, N'+5PqYGaI9/gsbYnBjwBWAQ==', N'AztrBPiLwUQpfiTf7z7e7kdBcU2JMlmA3W4XUozqPt8JWAOl5Lh5T/4wZhXj4cV0', N'F8CizCBmb3gdgaHkI8E9EA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (85, N'View Branch Office', 82, 3, 1, N'BranchOffice', 1, 1, 21, 0, 21, 0, N'nSC4/LH2tPDiOJsMiPTpSA==', N'TQpJUBHn2WByeW9FxyAufMYWCi2WPAJd2naq3TxGZPJjCVUdFxh5FfkXUuVuyH8I', N'F8CizCBmb3gdgaHkI8E9EA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (86, N'Bank Account', 1, 2, 1, N'BankAccount', 1, 1, 22, 1, 22, 0, N'sYYVE9P/KUqTJmvoOt/lvQ==', N'ix78D+hUAlBEpqB2posqhPYbeYM9VPYIQ5lFgLOzPGs=', N'+n+PSzENiOAcC0drmsXdfw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (87, N'Add Bank Account', 86, 3, 1, N'BankAccount', 1, 1, 22, 0, 22, 0, N'5bx+QocX4ZatRor0P4iaRQ==', N'j/+sztrbQL9AO6BDbgoFqmiS/skMvnEwbqANT2qH6JNLZy+wF5MTP7BvX8DWvgqV', N'+n+PSzENiOAcC0drmsXdfw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (88, N'Modify Bank Account', 86, 3, 1, N'BankAccount', 1, 1, 22, 0, 22, 0, N'0PL47Xq98UrbrhrHmrAHrw==', N'AztrBPiLwUQpfiTf7z7e7rYmpBISBLWrY5Y1aGxV4Z3Oh4a7skO1Im+rSfj9sLzX', N'+n+PSzENiOAcC0drmsXdfw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (89, N'View Bank Account', 86, 3, 1, N'BankAccount', 1, 1, 22, 0, 22, 0, N'fUKGptcY6xBI8g6wBBsVmQ==', N'KnURwHSilAqo4NB8mut9v1kSIU6D+AxSqER2uTt4NESKGi0HbzZeeLgSig4NGw5S', N'+n+PSzENiOAcC0drmsXdfw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (90, N'Cheque Book', 1, 2, 1, N'ChequeBook', 1, 1, 23, 1, 23, 0, N'u7TY1MjR//NFXaIP/x3FAA==', N'XXr7R+1+I9Ginoh3nbpaw0NZPKkGwSLyg6GEOZbkSVM=', N'rq5q6i50XyKdLeCOronJVw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (91, N'Add Cheque Book', 90, 3, 1, N'ChequeBook', 1, 1, 23, 0, 23, 0, N'Xx1GcanDPllbVxyfk28XzQ==', N'stz8MT8lSj4fFjDgleOqkLoaD2b5wDtwZRP6L9WYrWk=', N'rq5q6i50XyKdLeCOronJVw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (92, N'Modify Cheque Book', 90, 3, 1, N'ChequeBook', 1, 1, 23, 0, 23, 0, N's2zLDx0/rQH9umzzIZv74w==', N'mM8ONmCnIn61dbTYVzixZMrJ9fVmGDjBH8p20h94NBC+Qpd+LKMEimPgiTipMdZk', N'rq5q6i50XyKdLeCOronJVw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (93, N'View Cheque Book', 90, 3, 1, N'ChequeBook', 1, 1, 23, 0, 23, 0, N'xf0DqpQqtuIMALc7IaSenQ==', N'um/7YqKrDylKrcYhqcshuuTBwv4nWrFa4h/Z9dHNnNiAEbrVceUryjdM8qmTHUnU', N'rq5q6i50XyKdLeCOronJVw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (94, N'Financial Account', 1, 2, 1, N'FinancialAccount', 1, 1, 24, 1, 24, 0, N'Fcy54C5IfvasRDDzeybFKg==', N'NJw417j5+33dQvzLkF6kQTy0mGy7olZaNHZkQqKFwAnRiQiNddYRDsc4KcqVJzgd', N'1aQsscYkD1SWf3AMAX2PTQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (95, N'Add Financial Account', 94, 3, 1, N'FinancialAccount', 1, 1, 24, 0, 24, 0, N'GEdS6dykLlc2QHeBKYusOA==', N'ujZo8FM9VzszBaVk5kwuKwYlCrKe1utXgx7H9bdKRiMnz5sSwSx/6oX720t6nqrE', N'1aQsscYkD1SWf3AMAX2PTQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (96, N'Modify Financial Account', 94, 3, 1, N'FinancialAccount', 1, 1, 24, 0, 24, 0, N'WCoLq1CdYJ8pRWj1blEjMw==', N'O4WXMWGyHR8ZALla1aU7lc1tJPKWN1pEFuwN2zST5nordrn9VWbXJwhQloKdf349l3PTKVrk1ahjJGbvrZX+QA==', N'1aQsscYkD1SWf3AMAX2PTQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (97, N'View Financial Account', 94, 3, 1, N'FinancialAccount', 1, 1, 24, 0, 24, 0, N'lMr6rXDd7EXCBozyoq3yQw==', N'YN18hRVxu0x3yZFTYjzUWheGqc5ecW8KMseOd3Ao2Picvy7pfx/fz/ESYfirG1jK', N'1aQsscYkD1SWf3AMAX2PTQ==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (98, N'Financial Account Group', 1, 2, 1, N'FinancialAccountGroup', 1, 1, 25, 1, 25, 0, N'wwmkeKEl3ZxxDEv6idiu3Q==', N'NJw417j5+33dQvzLkF6kQTy0mGy7olZaNHZkQqKFwAmkfrZBHRU0K9UjYin4MgTY', N'IQhEoLP/dN3wEndxbtM3zw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (99, N'Add Financial Account Group', 98, 3, 1, N'FinancialAccountGroup', 1, 1, 25, 0, 25, 0, N'2NW9BIGRy4HSEQl7q73gRA==', N'ujZo8FM9VzszBaVk5kwuKwYlCrKe1utXgx7H9bdKRiPD6v26NqnOUMZb+LCRs34bneNqlDI9PboDYegJBx17PQ==', N'IQhEoLP/dN3wEndxbtM3zw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (100, N'Modify Financial Account Group', 98, 3, 1, N'FinancialAccountGroup', 1, 1, 25, 0, 25, 0, N't7ujzQt9DJ1ktD0rRzg+WQ==', N'O4WXMWGyHR8ZALla1aU7lc1tJPKWN1pEFuwN2zST5nordrn9VWbXJwhQloKdf349Js3Y3aSBtzVlQgECDzSw5A==', N'IQhEoLP/dN3wEndxbtM3zw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (101, N'View Financial Account Group', 98, 3, 1, N'FinancialAccountGroup', 1, 1, 25, 0, 25, 0, N'/uCjDiPV2W0wumoJfHwWtA==', N'YN18hRVxu0x3yZFTYjzUWheGqc5ecW8KMseOd3Ao2PgoAxQXhMbBzfiq9Kjl+Kcb3an+7uAxpTezm7WrhG0Uyw==', N'IQhEoLP/dN3wEndxbtM3zw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (102, N'Customer', 1, 2, 1, N'CustomerMaster', 1, 1, 2, 1, 26, 0, N'tgzp2orM2TekxkbQ2lJeiQ==', N'rr5Wddu2buz5UA+G9dT9Ucj/eOlQpQPpxXStNyfzZdQ=', N'9PmmH5xzgb+C08uj8hAzfA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (103, N'Add Customer', 102, 3, 1, N'CustomerMaster', 1, 1, 2, 0, 26, 0, N'K+gx7qJr9qK83vtkedLX0g==', N'HqQaKI7wnoRsNJv8bbIMjMHaCLDKO64laZ81P44Endc=', N'9PmmH5xzgb+C08uj8hAzfA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (104, N'Modify Customer', 102, 3, 1, N'CustomerMaster', 1, 1, 2, 0, 26, 0, N'7bHt01r3uhAhR486aM18ug==', N'mM8ONmCnIn61dbTYVzixZCsm/69rMgkZbVuRYq4+7gk=', N'9PmmH5xzgb+C08uj8hAzfA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (105, N'View Customer', 102, 3, 1, N'CustomerMaster', 1, 1, 2, 0, 26, 0, N'aIxCNhC17nrTeJ9pFRXbPw==', N'4zt51TdOtgIxfIVHk3pVHXFK/lZB1NdoB8ICYrCOE4M=', N'9PmmH5xzgb+C08uj8hAzfA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (106, N'Vendor', 1, 2, 1, N'VendorMaster', 1, 1, 3, 1, 27, 0, N'LuBQ5gm0zb7YCs7+Gyv0vA==', N'Xuc04S1bb/Of+KcJwjOr5w==', N'4UQ15ZdC2EvQshvLkmfipw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (107, N'Add Vendor', 106, 3, 1, N'VendorMaster', 1, 1, 3, 0, 27, 0, N'hb9mBYXJCsuPtXLGmF79eA==', N'LtvaDChUkE4XvA/bjk7FAwqSLXOZBmOzkQE0zrNjhME=', N'4UQ15ZdC2EvQshvLkmfipw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (108, N'Modify Vendor', 106, 3, 1, N'VendorMaster', 1, 1, 3, 0, 27, 0, N'xiq7M/rNf9US5SSDGZD7JQ==', N'8/qObreNQxi3QK0nMRLVBYgUarEMfDpkMoDDSLW6Wkg=', N'4UQ15ZdC2EvQshvLkmfipw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (109, N'View Vendor', 106, 3, 1, N'VendorMaster', 1, 1, 3, 0, 27, 0, N'JFeNTgszZNYD8h5HVI5cOA==', N'JL7+EdPROPMCLYyWSEWAfwEeh3qVFHlXAMPGyWAoquc=', N'4UQ15ZdC2EvQshvLkmfipw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (110, N'Product', 1, 2, 1, N'ProductMaster', 1, 1, 4, 1, 28, 0, N'Xz7tZQEmI3h8d62zf6+NHg==', N'dFLU9MS0CpfVS5wW5G17EQ==', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (111, N'Add Product', 110, 3, 1, N'ProductMaster', 1, 1, 4, 0, 28, 0, N'V0P1bOxKJEudFjsUjN35Cw==', N'4TxkNzVSDCPahfQ91pwAI+jA/k41CB7QmkKImfaJlwg=', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (112, N'Modify Product', 110, 3, 1, N'ProductMaster', 1, 1, 4, 0, 28, 0, N'O5QimQ+bq58s4yxzWglU3Q==', N'ih7Autqcgfo1mDiMvY7KooTXbFmKMGc3Vs0ZE3SpcrE=', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (113, N'Variant Product', 110, 3, 1, N'ProductMaster', 1, 1, 4, 0, 28, 0, N'xGvqxL7ioZ/zLPqR6CQcDQ==', N'BYA1mrPbifBmxHKqQoBM5p74wWdx5qgYMkxXOqTAt8A=', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (114, N'View Product', 110, 3, 1, N'ProductMaster', 1, 1, 4, 0, 28, 0, N'GxjpL8ZmV1GweIPYla/ESA==', N'/dXK0Y4tpJfQTz/Ofyr7qp7uhOmep7ATsyJjt4RwzHI=', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (115, N'Tools', 0, 1, 6, N'Tools', 1, 1, 1, 1, 0, 0, N'iykLBSWbtn0OMUbQG7MPQw==', N'f7dBHh7Qhi6NOtYwgC/Wig==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (116, N'Application Config', 115, 2, 6, N'AppConfig', 1, 1, 1, 1, 0, 0, N'ItChvQgepWh2pCYVrdNdNA==', N'xamlm+9QhNkESDVpiF438NyErNBoMaYCSZ25ZKDbP3geJdFasnzeG+yrw2kBeWCE', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (117, N'Map Role', 115, 2, 6, N'MapRole', 1, 1, 2, 1, 0, 0, N'Jk8FlprRv/8fswG4/DEMWw==', N'DE496ZpzUGs9Hh2bCGXZw2e0y0WBlX8zPkg6CrsCc3I=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (118, N'Color Settings', 115, 2, 6, N'ColorSettings', 1, 1, 3, 1, 0, 0, N'1V+xT+4WH9MmdN99ENyh9w==', N'dgBP1x7xCEkBe0olVRH1TyBLkBBJ2SV0XaKsqFsNXOU=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (119, N'Reports', 0, 1, 7, N'Reports', 1, 1, 1, 1, 0, 0, N'QDLMNAHuM5qD5BlcHctAtw==', N'GT8qP3MyjELXy6lQp2MtIA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (120, N'Master Reports', 119, 2, 7, N'Reports', 1, 1, 1, 0, 0, 1, N'YxSo8jFl6wq+fVtPpXEJHw==', N'9P90EIP5cNoq552FKep39o8OYyegxKX4E1VNQDkA38E=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (121, N'Bank', 120, 3, 7, N'Reports', 1, 1, 1, 0, 0, 1, N'tENF95plKHKzTwZhyqOZkQ==', N'd1SRgPH3hrsAgtGtW9Kfmw==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (122, N'Beat', 120, 3, 7, N'Reports', 1, 1, 2, 0, 0, 1, N'FdVu1D4z4Gr2efvfpXb5WA==', N'uS++ndIKCg9j2BkMavsHaQ==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (123, N'Salesman', 120, 3, 7, N'Reports', 1, 1, 3, 0, 0, 1, N'svkLRj9nYEgZo7gWDJD5IQ==', N'r8yIwuCefL0RbL6dbkzV7hS653HRxUkWTEY0xpdlCgc=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (124, N'User', 1, 2, 1, N'Users', 1, 1, 2, 1, 29, 0, N'Kb/fAdcP6I8Pkvc0z5bY4A==', N'DYuHcZhannFSqC9RyuTPLg==', N'aaxDV02S8MX1Av/jr1SFzw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (125, N'Add User', 124, 3, 1, N'Users', 1, 1, 2, 0, 29, 0, N'zFm7cmc2YjZVMX6+myewbw==', N'Ts3EaJC60cem5wWrJ6eDzNNs6VcqjWQjUxsTR9M01Gs=', N'aaxDV02S8MX1Av/jr1SFzw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (126, N'Modify User', 124, 3, 1, N'Users', 1, 1, 2, 0, 29, 0, N'TiINfY81Ckmtj7/u/Q9qmA==', N'DGzo8S3iLrbbFDvnLljQB9GL0YxYT2IO9CkT+dq8JBk=', N'aaxDV02S8MX1Av/jr1SFzw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (127, N'View User', 124, 3, 1, N'Users', 1, 1, 2, 0, 29, 0, N'jJ3kGmUdhbfI39x0G3jj3w==', N'AubypmvFovC6J7OD1JyK7+bUcllAHh6oTIRIq+dGhvg=', N'aaxDV02S8MX1Av/jr1SFzw==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (128, N'Product', 120, 3, 7, N'Reports', 1, 1, 4, 0, 0, 1, N'dQSTrCpNQamvngtfeIzhKQ==', N'dFLU9MS0CpfVS5wW5G17EQ==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (129, N'Enable Return Price', 110, 3, 1, N'ProductMaster', 1, 1, 5, 0, 28, 0, N'QtuXXrN9llaQ5va4KrBAGA==', N'iHk1HasevWCQTZcXaS6z2Ys3O5zdbhV1ihaFrE/0V5n80RMqht+AbHP1hOxnYTUa', N'RjZMX+X6NiPSRFI2WDoZJA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (130, N'Purchase', 0, 1, 2, N'Purchase', 1, 1, 1, 1, 0, 0, N'9NAs9yQIF6DEx6SvTAwtuw==', N'Vd++rU8QQpt1lN1iIJW1a8kBBMrZMxMQsyYOtigyEIY=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (131, N'Purchase Bill', 130, 2, 2, N'PurchaseBill', 1, 1, 3, 1, 0, 0, N'Ds4t2TKTpZS+7cELRBA1pQ==', N'Vd++rU8QQpt1lN1iIJW1a/K0VGZeYK0pqK2Sc7MnuHQ=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (132, N'Create Purchase Bill', 131, 3, 2, N'PurchaseBill', 1, 1, 3, 0, 0, 0, N'lZJg/vqIPBczLxlVEThlWA==', N'PHGqTIM3lH6WuP/snXmfqnB71g8hbyyXJe2ID4Ef0Kf865FKQk0yo051Z0jMWRFy', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (133, N'Modify Purchase Bill', 131, 3, 2, N'PurchaseBill', 1, 1, 3, 0, 0, 0, N'ee7WV3A77lKnQF+csy6LdA==', N'ih7Autqcgfo1mDiMvY7Kor6YxlAQY/9Iz5kUg4cvYCndc4s6KitwWnmvN6KoeH6D', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (134, N'Cancel Purchase Bill', 131, 3, 2, N'PurchaseBill', 1, 1, 3, 0, 0, 0, N'FmyBbh4ZuyP/fVZeGQSm0g==', N'VdNiCgyt3xnp5YkSWundH3ekgUfIQbLzr0hIyo2Mh5dM8H+gKdBZ9yyhHRJCHTQN', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (135, N'View Purchase Bill', 131, 3, 2, N'PurchaseBill', 1, 1, 3, 0, 0, 0, N'PSnGRZa122uKP5iacQtZag==', N'PTDt50Hd8K6T14iY7S1D8tHIEg+fOrbHMapJhi+s1PyTHuyRRnLI05tNVp/6UnUN', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (136, N'Variant Purchase Bill', 131, 3, 2, N'PurchaseBill', 1, 1, 3, 0, 0, 0, N'wsj/kE1TMBPU6nmxECRPnw==', N'BYA1mrPbifBmxHKqQoBM5v4qKe7oa9xoxEK7bvRHO39duGY1XmykwZJ5yMdnyQEl', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (137, N'Inventory Reports', 119, 2, 6, N'Reports', 1, 1, 1, 0, 0, 1, N'F/RZcdxQGLla0Lgcz+r0/A==', N'i3DMZtc/Tn0UH9DhV75tUguQmn/EXfzEuaZxXNiy73ROy3jIrq5OnRX9zw9c2ZN0', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (138, N'Item Ledger', 137, 3, 6, N'Reports', 1, 1, 1, 0, 0, 1, N'phClAUU+R4fPRcnHwb7LxA==', N'kzJ97tI8ImVBBmLVQaT6idvSrVIDth3AjlfDWXzcJns=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (139, N'Accounts Reports', 119, 2, 6, N'Reports', 1, 1, 1, 0, 0, 1, N'SidMRb1ylbluhY+Rsukwow==', N'KHAtjlqU5ZqJJsk2GM9uhQteyAlcgfFZk620vIjrgMt1zBx90m9ME8wcLw6vj3vX', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (140, N'Ledger', 139, 3, 6, N'Reports', 1, 1, 1, 0, 0, 1, N'm3J5yY5QxUbEvHhsfc8KuQ==', N'xUm3B+2bh7wg/3loP4LrMA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (141, N'Sales', 0, 1, 3, N'Sales', 1, 1, 1, 1, 0, 0, N'/cn4+2a8lallhkfAppGhyw==', N'HtqR27UjgippE5CibBD2xQ==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (142, N'Inventory', 0, 1, 4, N'Inventory', 1, 1, 1, 1, 0, 0, N'ZCa8qR+tPJrGTyjGfwJJAQ==', N'i3DMZtc/Tn0UH9DhV75tUvuVCpJzSWaaw32J0gJBZxA=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (143, N'Accounts', 0, 1, 5, N'Accounts', 1, 1, 1, 1, 0, 0, N'F7F3MwPmmyIYjI6nj4DTPw==', N'KHAtjlqU5ZqJJsk2GM9uhc5SEFrXyJtwnelfByYlBZA=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (144, N'Quotation', 141, 2, 3, N'Quotation', 1, 1, 1, 1, 0, 0, N'TEyG5ROYxiYTPr5G+1ShPg==', N'BTQgLv+ebY48FN9pEezgnyVrVumuVVzPVnoCFOjqIsU=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (145, N'Create Quotation', 144, 3, 3, N'Quotation', 1, 1, 1, 0, 0, 0, N'l49zYuVHdykeGcAv1dkcCg==', N'0wQViQx6N9UphvcB7/ST39qi2DMk0ZdSrVAeonaqKi3DiidHi4p/R4abGrDZDmiO', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (146, N'Modify Quotation', 144, 3, 3, N'Quotation', 1, 1, 1, 0, 0, 0, N'ItfdEb7VKEqotVC81Zvo1g==', N'n5KaWSNXxIb68EKG0EpjnFcQG50WbVVxezCxdHquSeAUVbqD17qbA1pwS2rJASll', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (147, N'Cancel Quotation', 144, 3, 3, N'Quotation', 1, 1, 1, 0, 0, 0, N'I/O8yiy831hzYkZviFdfPw==', N'8Zl/ZdT2ijtFwi4xNVY2zCdObXlLd/m5HuUlnsbtmL9henvsKtm5nKqg+sS+ttxI', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (148, N'View Quotation', 144, 3, 3, N'Quotation', 1, 1, 1, 0, 0, 0, N'jUudo8hB+PflDiStyC79Yg==', N'i+bDAWxx9lMcu2jsVRuOgSlHFFocGMRtVZTftrrSLno=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (149, N'Variant Quotation', 144, 3, 3, N'Quotation', 1, 1, 1, 0, 0, 0, N'MJ+gntjIQ7fU7YIFKh8AnQ==', N'BYA1mrPbifBmxHKqQoBM5qOlfIIMNEIWd1hy6HiJtcXiMIO7Yc3ctb8YxsQ8Hdyn', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (150, N'Inventory Adjustment', 142, 2, 4, N'InventoryAdjustment', 1, 1, 1, 1, 0, 0, N'8Ohx2tBQ69hgwiPeGf8l7w==', N'i3DMZtc/Tn0UH9DhV75tUuopguddgZuQmQzrgq7DF2pb+gzoOuIpBbtZod7IAoud', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (151, N'Create Inventory Adjustment', 150, 3, 4, N'InventoryAdjustment', 1, 1, 1, 0, 0, 0, N'88RtE40HdTXeWauBLkqopQ==', N'bBvvTW7mQX+s8NoUt1nrmJEogjBBpT9+6F0GpTSmPiEJDHNxEwShgYZgApB9cfFv4l3atmQJJAwmggNGPw9uZA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (152, N'View Inventory Adjustment', 150, 3, 4, N'InventoryAdjustment', 1, 1, 1, 0, 0, 0, N'bSuFtowNK2uqt3r9xe+7CQ==', N'Pa9Cscjg75Aaz6xNdd4yVRd+Hvhh9txeMkvwsaEGDNjEAPIWgGBob3SxHAv7T38FD+Ll1MLIz577lM/Vf1E/ew==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (153, N'Credit Note', 143, 2, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'xbQQWH0YIBa5N9SMdkfrjQ==', N'nBxUn/tpXKqXVndiW9mojOigG9qCNPC9PrJE0uE0x/I=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (154, N'Create Credit Note', 153, 3, 5, N'CreditDebitnote', 1, 1, 1, 0, 0, 0, N'q/BpW0xmWRsFcLrkqsjtIg==', N'SpDq5N0CPvOq47l8OZHn4u9yy/2gntqjGaDDSQkbBx+P1GewFOg1eWwOMUWtBRsu', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (155, N'Modify Credit Note', 153, 3, 5, N'CreditDebitnote', 1, 1, 1, 0, 0, 0, N'suWwdtnS/CcZKl+b/5eRkA==', N'mM8ONmCnIn61dbTYVzixZFA4rLfQO1RGNOWIKDgTL1OWeUDEgbCiZZzQCrYuC67o', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (156, N'Cancel Credit Note', 153, 3, 5, N'CreditDebitnote', 1, 1, 1, 0, 0, 0, N'H6smMVVkGYUGCmJHUPaGZw==', N'vFncPy7vpd28Ee/+heBYQtiiDEAOKzDRYDVuosuVbQe2ItlyHtVFDM8nDuN7HafA', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (157, N'View Credit Note', 153, 3, 5, N'CreditDebitnote', 1, 1, 1, 0, 0, 0, N'N05ix4xYEgUhnC2Wwd/keQ==', N'dKi9o+GUuTdSRBVsCtvSbgZZuYIgEYnTT/e0p5nG6O8fw6AydH0fb2Mm5UhRBSXJ', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (158, N'Variant Credit Note', 153, 3, 5, N'CreditDebitnote', 1, 1, 1, 0, 0, 0, N'6DiZj0XTIUzDwR7qjxMARw==', N'BYA1mrPbifBmxHKqQoBM5gWeamC06CTkXNSrAVavvRFBFg4hTQs1Npbv0fUxdf4a', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (159, N'Automatic Indent', 130, 2, 2, N'AutomaticIndent', 1, 1, 1, 1, 0, 0, N'EH3EnIhY1Ouju4pbNQ3Nig==', N'w2ZCPJkGFF0AoGvRO1+MNrYg/TlGSP7RFKOTKnKk7TZy+jK6iu0iUfEo8qMSw+Yi', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (160, N'Create Automatic Indent', 159, 3, 2, N'AutomaticIndent', 1, 1, 1, 0, 0, 0, N'8iBa/eioc+DNIdtCspBRMQ==', N'sTHnnCICnj1mCSRWwEhVJ/TbYj9okgoG4aVPDTGRSwQJEXHpT9yqx3KuFd3MbgQQ', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (161, N'Modify Automatic Indent', 159, 3, 2, N'AutomaticIndent', 1, 1, 1, 0, 0, 0, N'7V9v29eCkAyW/KAijGHVDA==', N'yF6dtra/YSk9XymZ8DRDjDurCMHDBbLJrfrSpxlE96Ff+Gz2cXwyTVET/qH+lTnh', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (162, N'Cancel Automatic Indent', 159, 3, 2, N'AutomaticIndent', 1, 1, 1, 0, 0, 0, N'J4KniiT85dpmxjRjT4cmFw==', N'zJPuj5G+E2A8btw5EMHLR9GYP9WPL4sp+kXH1wRowRf50FZlOkdgz9C//IhTOZyT', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (163, N'View Automatic Indent', 159, 3, 2, N'AutomaticIndent', 1, 1, 1, 0, 0, 0, N'vjS2kBiwfOEGMLiw6tIW+w==', N'Jb1tYN6MCQYv3LyKwbueXjoGtpsUJkjrt3z/QF8Kha3n8Jhk5RMIuzzofcupzB4T', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (164, N'Variant Automatic Indent', 159, 3, 2, N'AutomaticIndent', 1, 1, 1, 0, 0, 0, N'g8gQXxkYQbroVNrDQ2MnGA==', N'BYA1mrPbifBmxHKqQoBM5sDNqZykYKCcqT9hcchsOk2zemiD93BckFgZbbv7QdpzZU9RZz181dV/S1DnVBTQ9A==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (165, N'Purchase Order', 130, 2, 2, N'PurchaseOrder', 1, 1, 2, 1, 0, 0, N'rot5+9kWUU7mqnurdKH5Ng==', N'Vd++rU8QQpt1lN1iIJW1a5vMQ8aDbizObKKScceojgs=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (166, N'Create Purchase Order', 165, 3, 2, N'PurchaseOrder', 1, 1, 2, 0, 0, 0, N'h2plemJOHgAO69aylV9ZyA==', N'PHGqTIM3lH6WuP/snXmfqnB71g8hbyyXJe2ID4Ef0KdRYAPlHdqT+uUf1ZKnGJgl', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (167, N'Modify Purchase Order', 165, 3, 2, N'PurchaseOrder', 1, 1, 2, 0, 0, 0, N'/n/I5UU7Cl9HoWfY0sUq9g==', N'ih7Autqcgfo1mDiMvY7Kor6YxlAQY/9Iz5kUg4cvYClefBtCR9XiIDKCE0DJBLq4', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (168, N'Cancel Purchase Order', 165, 3, 2, N'PurchaseOrder', 1, 1, 2, 0, 0, 0, N'G8SnJa/LuIJuK2VgQVKpaA==', N'VdNiCgyt3xnp5YkSWundH3ekgUfIQbLzr0hIyo2Mh5fFkxCYsV0ko7+jIfIbtyfN', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (169, N'View Purchase Order', 165, 3, 2, N'PurchaseOrder', 1, 1, 2, 0, 0, 0, N'TRJ2FtzQ8LeAAiXqryk3RA==', N'PTDt50Hd8K6T14iY7S1D8lGzO9U6PuXiAr8MJSZ5TiWmvnhJm1HOnMiQwFJEGcSX', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (170, N'Variant Purchase Order', 165, 3, 2, N'PurchaseOrder', 1, 1, 2, 0, 0, 0, N'LUB+ESb37Kvqz80R4gpOxA==', N'BYA1mrPbifBmxHKqQoBM5v4qKe7oa9xoxEK7bvRHO38so02umYiPCGLo8ZdkSKWb', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (171, N'Debit Note', 143, 2, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'OBPjWv6ZzZ2bE0b1nw6S4w==', N'MKxJsHy9h07aqMpiVzgwadc8buUGPTNEEd4sx8+nI7Q=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (172, N'Create Debit Note', 171, 3, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'F4Ujw/9udD3+Jjew1TTMng==', N'HGThHaKpvkDqQanGhCwOhXOA73FufDgNuFWaSJDKumtJnnV6uVwwrYYALngOagJd', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (173, N'Modify Debit Note', 171, 3, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'4agN+BUIaM1P7fc338Vvjg==', N'wKZoP41erlEmiUigicJ0+eZdlErLXsJ5nxNfYiFp8FXEIM0VsHKnDGFIdn+jWF5O', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (174, N'Cancel Debit Note', 171, 3, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'qJZ85UM6v6RmN6IFBF+t1Q==', N'v7cjd+IkpXK5c6osLkrWSE2RBO1/zOPcpEn9icuBbm0XoX8W6ScxtFZ6dcm83kJ2', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (175, N'View Debit Note', 171, 3, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'OGY7s+opurNSIaJMchQYfg==', N'a4AyTUoUzVqREdtrIVwKI/obd+SCkGT1UX+w8rc1sCU=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (176, N'Variant Debit Note', 171, 3, 5, N'CreditDebitnote', 1, 1, 1, 1, 0, 0, N'LiDEvvjwwWBHHfx6iluyLQ==', N'BYA1mrPbifBmxHKqQoBM5tLekTUszZ+3PG34ynxsvCElZDdVgnjSYKxT6Drnh4Rm', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (177, N'Payable Voucher', 143, 2, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'hqlQ+2I8Cw0Y2BZFUQXUWA==', N'dpntkBuON0CBaPci/0pcMiDLtIuObkSLdZqyRGdFwI0=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (178, N'Create Payable Voucher', 177, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'Zdw7bw+50oGAn2GA6qArNg==', N'PHGqTIM3lH6WuP/snXmfqtgzL6kVE/4BzpGDQ4b6DKkQtshv3TMyzkwe1aPUJ96e', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (179, N'Modify Payable Voucher', 177, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'pppYclKsVnQLaTH9YBxF3A==', N'ih7Autqcgfo1mDiMvY7KouZqDGnNkab10IG5evEX3rHbO+SMupR0yExpeiM3sbG7', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (180, N'Cancel Payable Voucher', 177, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'MnHs5Cwq89ZbegIS2sn2eQ==', N'VdNiCgyt3xnp5YkSWundHwA4idhApJ1XCYGLrZV/PZj4HoKaCiOTqEpq1WCMOhi6', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (181, N'View Payable Voucher', 177, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'9rGa8po0sGDzZiYw/TaPWA==', N'uWcuG5RaoNsSrDY6peSoe8HMOYAmrWcwbOpCl4sUNpO9P2vItNOk8/79DC2p9LyJ', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (182, N'Variant Payable Voucher', 177, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'hPQXBgAkYilcjL5m36j2EQ==', N'BYA1mrPbifBmxHKqQoBM5jlggY/41bgd43Z8v9SMcjETISTTowTCwtV1bgieEVg+', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (183, N'Receivable Voucher', 143, 2, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'QvG+ZQ+nJn5WqiyXey0O6g==', N'9j780Yb8yqN6RZOxup/J22C89VGOWPP51vwcuj6UAelypRfEnWRXac9RzklPJU96', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (184, N'Create Receivable Voucher', 183, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'LOI9P+dFQNR3yqFPFoBzyA==', N'QxEalNtVp4ZBgxR6hkZgLIzDx9029LwxvxQS4hVVwxkuD345tMdMYQg/SWlWveQsdBCV8eT+AEaOaGjFN0tltQ==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (185, N'Modify Receivable Voucher', 183, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'fkqq4lb/GA5H/dO0db7mcw==', N'xLAzTlfd7j6tgZkCqArX3OAc9OmVPiBtbZjjtglUuV7GFHYuOIRW9AZ72gE4Ff9Koa3JyEYyZBZGTLRCOgINbA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (186, N'Cancel Receivable Voucher', 183, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'/oeFv9sylpJEEF4n990eOw==', N'3HhOzCyxuMYsFdStdIxIIoax/WGZtCQj2qjT+cIX0buYTuk7NLzBJARaLBjTyCWuy2dE9L2ZI6lLQekVZxYQJA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (187, N'View Receivable Voucher', 183, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'2jpg8NN71BDhm+znIVoi0Q==', N'kyjagOhqoJ82YAtzu1y4D+06ZmT5JvJRShAtt3HijGBe1gjaDV8T1EHa60Rx9pxL', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (188, N'Variant Receivable Voucher', 183, 3, 5, N'PayableReceivable', 1, 1, 1, 1, 0, 0, N'ZZ9V4M7G/eE/3kPadvw9sg==', N'BYA1mrPbifBmxHKqQoBM5mLYCUS3Kmx9LSbpWX2gRb/WOQt6ghEPmQjQC2I5Tcp5LLWj9/pa5DRQqp12wo3row==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (189, N'Contra', 143, 2, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'54pzt46tR1fa7PaqK98lwQ==', N's6yomdGRelZM7YQpcYKfqg==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (190, N'Create Contra', 189, 3, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'lSfhxJXvkwCa9g7CfcoY7Q==', N'SpDq5N0CPvOq47l8OZHn4rZQaFaXi1vR5YguMm5jdJ8=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (191, N'Modify Contra', 189, 3, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'l1PKAMLGkVQlW/qmEpF1VA==', N'mM8ONmCnIn61dbTYVzixZD+PJ2g92FvNwHY0nymAKvs=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (192, N'Cancel Contra', 189, 3, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'P3IcWAP+kzj0IhqFZjPSlg==', N'vFncPy7vpd28Ee/+heBYQnLUmfoAe2Xjz4L4O7Qo7U8=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (193, N'View Contra', 189, 3, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'STR6oaQnzB1voy5IQNYUhQ==', N'i7Kkq1mHgSCUN7I59qpPrBrg5Vy7iJHyTDsjA1WIs4Y=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (194, N'Variant Contra', 189, 3, 5, N'Contra', 1, 1, 1, 1, 0, 0, N'QUTTKcDTOpaFAymsPHbVpg==', N'BYA1mrPbifBmxHKqQoBM5mEolZFduxwKU9RdBM63mSw=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (195, N'Journal Entry', 143, 2, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N'jauw+lMmuzudVA1bXD/K8w==', N'ASUn1J4tDaquH75nFzQBjN4kEweQF1/1B3gN6DHdqFo=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (196, N'Create Journal Entry', 195, 3, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N'To3xuRTg1DtwFD4NbZZ92w==', N'rkj2VrrynJcL4mp8HyESA9XouRG3pPobStB2LtbPaBZNiU3nhrYhhfnwTZyxevBK', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (197, N'Modify Journal Entry', 195, 3, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N'5Jnxwogw1rDnNg2RqvxxpA==', N'2jXUglJXmcmJlJA7itSsa9fYAZMFs/4oaojvIaxMbtfU3IulMSvGuFmibyMYyaja', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (198, N'Cancel Journal Entry', 195, 3, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N'jrLiA6FTfh/L6IiuIf6kHQ==', N'w+N51N5nF6Fh9iGdnCbIZB075nctuc1MW/XI0wdpJiwWhwSara2UXLvHLvnYznr4', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (199, N'View Journal Entry', 195, 3, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N'cGr0/ZKVkoYeEZ1MaXn6rA==', N'yM7ayrpsn3At4fTJORwEs6gM5PwcoSZUeoRc299lozw+wNoy6Eb4Rx40g4JD6hO4', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (200, N'Variant Journal Entry', 195, 3, 5, N'JournalEntry', 1, 1, 1, 1, 0, 0, N't4oBgoRT0qWgZmWMJryuVw==', N'BYA1mrPbifBmxHKqQoBM5jBrAX8O2jWhdxiQcu+9hGwgCsodEZuhDqoyjHG7ICfa', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (201, N'Other Collection', 143, 2, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'PkFkgd15eIPWveg3TYAICA==', N'O/fVkbje7R+D8p9NBxz1HxT/Sk+B5tAUitpVTCaJQLk56AjICa8CqnVOuSpGPRL4', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (202, N'Create Other Collection', 201, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'qaTrwB7BtxBJvI81pJBMRg==', N'FbQjOQOJ8LbVCFGgnpVbbH79apd2yFEkU6w82W2LHXCQrToNrhxT6QubtkACMdzG', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (203, N'Modify Other Collection', 201, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'b3juQcBLxXMvii+MdAu7jw==', N'T88TQqdxClqB+4DC1Zn5XFKkKWcgnRcDpugFQQwL6Gzc7Xd7O2INSQKMYL0jYCsb', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (204, N'Cancel Other Collection', 201, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'NRn6i/2SSwi4PN4uGnjL9w==', N'/asxaagdufLSpBExFnqyN4xxG6yZ+iBmVRSnjtydOV9KUEcv4++Vjt4cArQ7F9Lq', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (205, N'View Other Collection', 201, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'z/X8dFwqvAhYQiHdx/sbcw==', N'+pdhtTmNwhWEYZFiDbtVvlsFZdSiS/zsn9OLQb1XmG/AO+ycflpubT7xLfI4bHtN', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (206, N'Variant Other Collection', 201, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'g7UHkb95KtmjDv87W49c6Q==', N'BYA1mrPbifBmxHKqQoBM5qgk2YkqBZKuidfmV76fEzdh6IV1nH2GGhafAQ5/6zQfSQp8ZzqygHN0vCfH8pZcow==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (207, N'Other Payment', 143, 2, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'ySMIfdsag38X+wxvtOhbIw==', N'LnEMhiZHyFGlUZoVFpuf9jIXtZfsF9os4RffgFHsL6s=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (208, N'Create Other Payment', 207, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'Bjlco7R0HOGnFB4xAGtO5g==', N'FbQjOQOJ8LbVCFGgnpVbbBUpkhEN0UQcbEQ9vI1KT0sLXSsS/80wW+ljZChuHyWB', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (209, N'Modify Other Payment', 207, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'YfcZK96yGGlBRoLG+b6+cA==', N'T88TQqdxClqB+4DC1Zn5XJ1uagQk8/drHYRHIsbJpRbm7yDwUJq4hi3ZFkX4SrGs', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (210, N'Cancel Other Payment', 207, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'5Li1/RiPvFOf2/8QF5OZnw==', N'/asxaagdufLSpBExFnqyN3VCdMh0d7gKM2u0Dd+nk/wc/NGTZ9fZJ52rp9HOCwmM', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (211, N'View Other Payment', 207, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'wQkidEsEuXfVAzsiCmC/DQ==', N'+pdhtTmNwhWEYZFiDbtVvlQCWdsIl3bCbI0Jf5EtYlc9/TDF+014Xs4MoAHCrc2j', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (212, N'Variant Other Payment', 207, 3, 5, N'OtherPayColl', 1, 1, 1, 1, 0, 0, N'Fm+p00zUnebGU7H/j6s7Aw==', N'BYA1mrPbifBmxHKqQoBM5sUmcn2h8krqgDITdvNKFnayfjS4mZPkUNrDnD4JlqCZ', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (213, N'Import/Export', 115, 2, 6, N'Importexport', 1, 1, 4, 1, 0, 0, N'fJ8wpxsOgomTkdLD3ucZWQ==', N'kFdsC9xiCOl7RlssP53fXzr6rh6FaoB/DP+jVPEA0Pg=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (214, N'Purchase Return', 130, 2, 2, N'PurchaseReturn', 1, 1, 4, 1, 0, 0, N'd5rkZJkMKcHq1GhBX/wTTw==', N'Vd++rU8QQpt1lN1iIJW1a4zfOkO06OcdMkE6UiXKDWE=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (215, N'Create Purchase Return', 214, 3, 2, N'PurchaseReturn', 1, 1, 4, 0, 0, 0, N'wBjSeaTFSK8ox8V3DukiMA==', N'PHGqTIM3lH6WuP/snXmfqnB71g8hbyyXJe2ID4Ef0KcmfoE8Yz3D53G8H6WZvtLc', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (216, N'Modify Purchase Return', 214, 3, 2, N'PurchaseReturn', 1, 1, 4, 0, 0, 0, N't80bJes+z9fH1eh5gSX/Bw==', N'ih7Autqcgfo1mDiMvY7Kor6YxlAQY/9Iz5kUg4cvYCnZk1uruMfChwOTe5cLHcCu', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (217, N'Cancel Purchase Return', 214, 3, 2, N'PurchaseReturn', 1, 1, 4, 0, 0, 0, N'5hS6DAIF3aLtIr1hjt5/jw==', N'VdNiCgyt3xnp5YkSWundH3ekgUfIQbLzr0hIyo2Mh5e5EQjYDDh6fbo9lMyRFcmS', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (218, N'View Purchase Return', 214, 3, 2, N'PurchaseReturn', 1, 1, 4, 0, 0, 0, N'PE5ep+XYvQHJatEOb13lBg==', N'PTDt50Hd8K6T14iY7S1D8q6FYaGJDtlq6VDsSL5Bka/Cs+Y7SpfK/766t4ypZBiw', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (219, N'Variant Purchase Return', 214, 3, 2, N'PurchaseReturn', 1, 1, 4, 0, 0, 0, N'DFOIsBwp/ahejvvp8g9opA==', N'BYA1mrPbifBmxHKqQoBM5v4qKe7oa9xoxEK7bvRHO3/UDjS8BrrgcTWXkr7CMsgr', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (221, N'Disable Branch in Transactions', 115, 2, 6, N'Disablebranch', 1, 1, 6, 0, 0, 0, N'kV1+WW0foLK6d8b+lz59DQ==', N'Dw9cKXIJZ/QtLVX6/rCuIAX2LOuctUA8/xmhDDT5k068OYlrlI3F+uLzqvKyOihSH+F9b/wbR+5mbbLNgJIdXA==', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (222, N'Menu Order', 115, 2, 6, N'Menuorder', 1, 1, 1, 1, 0, 0, N'm9ZZi1J3W+VZIp6OI401hw==', N'QdrY43f7MXC6cj4uHRTMd4ebBYlSa49o+k62tSDSaDA=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
INSERT [dbo].[tblMenus] ([MenuId], [MenuName], [MenuParentId], [MenuChildLevel], [MenuTree], [LocationName], [Permission], [Active], [DisplayIndex], [IsMenu], [FormID], [IsReport], [EncMenuID], [EncMenuName], [EncFormID]) VALUES (220, N'Modify History', 115, 2, 6, N'Modifyhistory', 1, 1, 5, 1, 0, 0, N'F/MnkBENeTXuCl2Qt7mUsg==', N'oi33Oyc1x/OHEiUluknD5EQnI/oh2MEtWXXoYdM8cOo=', N'jJOtHsRVwYECOhoiBc69dA==')
GO
SET IDENTITY_INSERT [dbo].[tblParameterInfo] ON 
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (1, 2, N'Bank Name', N'Autolist', 0, 1, N'BankName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (2, 2, N'User Name', N'Dropdown', 0, 2, N'UserName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (3, 3, N'Beat Name', N'Autolist', 0, 1, N'BeatName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (4, 3, N'User Name', N'Dropdown', 0, 2, N'UserName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (5, 4, N'Salesman Name', N'Autolist', 0, 1, N'SalesmanName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (6, 4, N'Salesman Group', N'Autolist', 0, 2, N'SalesmanGroupName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (7, 4, N'DOJ From', N'Date', 0, 3, N'CD')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (8, 4, N'DOJ To', N'Date', 0, 4, N'CD')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (9, 5, N'Manufacturer Name', N'Autolist', 0, 1, N'ManufName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (10, 5, N'Brand Name', N'Autolist', 0, 2, N'BrandName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (11, 5, N'Category Name', N'Autolist', 0, 3, N'CategoryName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (12, 5, N'Product Name', N'Autolist', 0, 4, N'ProductName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (13, 7, N'Product Name', N'Autolist', 0, 2, N'ProductName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (14, 7, N'From Date', N'Date', 0, 3, N'CD')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (15, 7, N'To Date', N'Date', 0, 4, N'CD')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (16, 9, N'Account Name', N'Autolist', 0, 4, N'AccountName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (17, 9, N'From Date', N'Date', 0, 3, N'CD')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (19, 7, N'Branch Name', N'Dropdown', 0, 1, N'BranchName')
GO
INSERT [dbo].[tblParameterInfo] ([ParameterID], [ReportID], [ParameterName], [ParameterType], [IsMandatory], [ParamOrder], [AutolistName]) VALUES (18, 9, N'To Date', N'Date', 0, 4, N'CD')
GO
SET IDENTITY_INSERT [dbo].[tblParameterInfo] OFF
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (4, N'BANK TRANSFER', 1, 4, N'BT')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (1, N'CASH', 1, 1, N'CH')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (2, N'CHEQUE', 1, 2, N'CHQ')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (6, N'COUPON', 1, 6, N'CPN')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (7, N'CREDIT', 1, 7, N'CR')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (3, N'DD', 1, 3, N'DD')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (8, N'MULTI MODE', 1, 8, N'MM')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (9, N'NOTE ADJUSTMENT', 1, 9, N'NJA')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (10, N'UPI', 1, 10, N'UPI')
GO
INSERT [dbo].[tblPaymentMode] ([ID], [PaymentMode], [Active], [Orderby], [PayCode]) VALUES (5, N'VISA/MASTER', 1, 5, N'CC')
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (1, N'Purchase Price', 1)
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (2, N'Sale Price', 1)
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (3, N'ECP', 1)
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (4, N'MRP', 1)
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (5, N'SPL Price', 1)
GO
INSERT [dbo].[tblPriceType] ([ID], [PriceType], [Active]) VALUES (6, N'Return Price', 1)
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (1, N'Master Management', 0, 1, 120, NULL)
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (2, N'Bank', 1, 1, 121, N'uspRepMasterBankData')
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (3, N'Beat', 1, 1, 122, N'uspRepMasterBeatData')
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (4, N'Salesman', 1, 1, 123, N'uspRepMasterSalesmanData')
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (5, N'Product', 1, 1, 128, N'uspRepMasterProductData')
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (6, N'Inventory Reports', 0, 1, 137, NULL)
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (7, N'Item Ledger', 6, 1, 138, N'uspRepItemLedger')
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (8, N'Accounts Reports', 0, 1, 139, NULL)
GO
INSERT [dbo].[tblReportViewer] ([ReportID], [ReportName], [ParentID], [Active], [MenuID], [ProcedureName]) VALUES (9, N'Ledger', 8, 1, 140, N'uspRepAccountLedger')
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (1, N'Open', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (2, N'Amended', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (3, N'Amendment', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (4, N'Cancelled', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (5, N'Close', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (6, N'Return', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (7, N'ReturnDamage', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (8, N'Processed', 1)
GO
INSERT [dbo].[tblStatus] ([ID], [Description], [Active]) VALUES (9, N'Bounce', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (1, N'Bank', N'tblMasterBank', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (2, N'Beat', N'tblMasterBeat', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (3, N'Brand', N'tblMasterBrand', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (4, N'Credit Term', N'tblMasterCreditTerm', 2)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (5, N'Category', N'tblMasterCategory', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (6, N'Manufacturer', N'tblMasterManufacturer', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (7, N'Reason', N'tblMasterReason', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (8, N'Return Type', N'tblMasterReturnType', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (9, N'UOM', N'tblMasterUOM', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (10, N'Mail Address', N'tblMasterMailAddress', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (11, N'Location', N'tblMasterLocation', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (12, N'Role', N'tblMasterRole', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (13, N'Salesman Group', N'tblMasterSalesmanGroup', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (14, N'Product Group', N'tblMasterProductGroup', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (15, N'CustomerType', N'tblMasterCustomerType', 1)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (16, N'Tax Comphonent', N'tblMasterTaxComponent', 2)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (17, N'Gift', N'tblMasterGift', 2)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (18, N'Services', N'tblMasterService', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (19, N'Vehicle', N'tblMasterVehicle', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (20, N'Salesman', N'tblMasterSalesman', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (21, N'Branch Office', N'tblMasterBranchOffice', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (22, N'Bank Account', N'tblMasterBankAccount', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (24, N'Financial Account', N'tblFAAccount', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (25, N'Financial Account Group', N'tblFAGroup', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (26, N'Customer', N'tblMasterCustomer', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (27, N'Vendor', N'tblMasterVendor', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (28, N'Product', N'tblMasterProduct', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (29, N'User', N'tblUsers', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (30, N'Automatic Indent', N'tblTransAutomaticIndentHeader', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (31, N'Purchase Order', N'tblPurchaseOrderHeader', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (32, N'Purchase Bill', N'tblTransPurchaseHeader', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (33, N'Purchase Return', N'tblTransPurchaseHeader', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (34, N'Credit Note', N'tblNoteDetails', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (35, N'Debit Note', N'tblNoteDetails', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (36, N'Contra', N'tblTranContra', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (37, N'Payable Voucher', N'tblTranPRVoucher', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (38, N'Receivable Voucher', N'tblTranPRVoucher', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (39, N'Journal Entry', N'tblFAJournal', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (40, N'Other Collection', N'tblTranCollectionHeader', NULL)
GO
INSERT [dbo].[tblTablesNames] ([ID], [FormName], [TableName], [FormType]) VALUES (41, N'Other Payment', N'tblTranPaymentHeader', NULL)
GO
SET IDENTITY_INSERT [dbo].[tblUsers] ON 
GO
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password], [Mobilenumber], [EMailID], [RoleID], [PwdResetCount], [PwdResetTime], [LPin], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (1, N'sa', N'lflMHCQMqLZbgVf6tsnw2w==', N'9876543210', N'gksolutions.work007@gmail.com', 1, NULL, NULL, NULL, 1, 0, CAST(N'2024-10-15T15:35:37.093' AS DateTime), NULL, NULL)
GO
INSERT [dbo].[tblUsers] ([ID], [UserName], [Password], [Mobilenumber], [EMailID], [RoleID], [PwdResetCount], [PwdResetTime], [LPin], [Active], [CBy], [CDate], [MBy], [MDate]) VALUES (2, N'admin', N'svkLRj9nYEgZo7gWDJD5IQ==', N'', N'', 2, NULL, NULL, NULL, 1, 0, CAST(N'2024-10-15T19:30:46.730' AS DateTime), 1, CAST(N'2024-11-08T13:19:31.300' AS DateTime))
SET IDENTITY_INSERT [dbo].[tblUsers] OFF
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPaneCount' , N'SCHEMA',N'dbo', N'VIEW',N'FACNAccountNames', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPaneCount' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FACNAccountNames'
GO
IF  EXISTS (SELECT * FROM sys.fn_listextendedproperty(N'MS_DiagramPane1' , N'SCHEMA',N'dbo', N'VIEW',N'FACNAccountNames', NULL,NULL))
EXEC sys.sp_dropextendedproperty @name=N'MS_DiagramPane1' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FACNAccountNames'
GO
/****** Object:  StoredProcedure [dbo].[uspUpdateMapRoleMenus]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspUpdateMapRoleMenus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspUpdateMapRoleMenus]
GO
/****** Object:  StoredProcedure [dbo].[uspSaveTranGSTInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspSaveTranGSTInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspSaveTranGSTInfo]
GO
/****** Object:  StoredProcedure [dbo].[uspSaveSampData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspSaveSampData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspSaveSampData]
GO
/****** Object:  StoredProcedure [dbo].[uspReportPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspReportPermission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspReportPermission]
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterSalesmanData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepMasterSalesmanData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepMasterSalesmanData]
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterProductData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepMasterProductData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepMasterProductData]
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterBeatData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepMasterBeatData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepMasterBeatData]
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterBankData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepMasterBankData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepMasterBankData]
GO
/****** Object:  StoredProcedure [dbo].[uspRepItemLedger]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepItemLedger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepItemLedger]
GO
/****** Object:  StoredProcedure [dbo].[uspRepAccountLedger]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspRepAccountLedger]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspRepAccountLedger]
GO
/****** Object:  StoredProcedure [dbo].[uspMenuPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspMenuPermission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspMenuPermission]
GO
/****** Object:  StoredProcedure [dbo].[uspManageVendorMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageVendorMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageVendorMaster]
GO
/****** Object:  StoredProcedure [dbo].[uspManageVehicle]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageVehicle]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageVehicle]
GO
/****** Object:  StoredProcedure [dbo].[uspManageUsers]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageUsers]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageUsers]
GO
/****** Object:  StoredProcedure [dbo].[uspManageTransPurchaseBill]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageTransPurchaseBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageTransPurchaseBill]
GO
/****** Object:  StoredProcedure [dbo].[uspManageTranContra]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageTranContra]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageTranContra]
GO
/****** Object:  StoredProcedure [dbo].[uspManageTaxCompGift]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageTaxCompGift]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageTaxCompGift]
GO
/****** Object:  StoredProcedure [dbo].[uspManageSingleMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageSingleMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageSingleMaster]
GO
/****** Object:  StoredProcedure [dbo].[uspManageService]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageService]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageService]
GO
/****** Object:  StoredProcedure [dbo].[uspManageSalesman]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageSalesman]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageSalesman]
GO
/****** Object:  StoredProcedure [dbo].[uspManageReports]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageReports]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageReports]
GO
/****** Object:  StoredProcedure [dbo].[uspManageQuatationDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageQuatationDraft]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageQuatationDraft]
GO
/****** Object:  StoredProcedure [dbo].[uspManageQuatation]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageQuatation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageQuatation]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseOrderDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePurchaseOrderDraft]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePurchaseOrderDraft]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePurchaseOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePurchaseOrder]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePurchaseDraft]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePurchaseDraft]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePurchaseCancel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePurchaseCancel]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRVoucher]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePRVoucher]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePRVoucher]
GO
/****** Object:  StoredProcedure [dbo].[uspManageProductMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageProductMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageProductMaster]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePRHeader]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePRHeader]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDraftHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePRDraftHeader]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePRDraftHeader]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDraftDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePRDraftDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePRDraftDetail]
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManagePRDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManagePRDetail]
GO
/****** Object:  StoredProcedure [dbo].[uspManageMenuOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageMenuOrder]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageMenuOrder]
GO
/****** Object:  StoredProcedure [dbo].[uspManageInventoryAdjustmentHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageInventoryAdjustmentHeader]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageInventoryAdjustmentHeader]
GO
/****** Object:  StoredProcedure [dbo].[uspManageInventoryAdjustmentDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageInventoryAdjustmentDetail]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageInventoryAdjustmentDetail]
GO
/****** Object:  StoredProcedure [dbo].[uspManageFullColl]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageFullColl]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageFullColl]
GO
/****** Object:  StoredProcedure [dbo].[uspManageFinancialAccountGroup]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageFinancialAccountGroup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageFinancialAccountGroup]
GO
/****** Object:  StoredProcedure [dbo].[uspManageFinancialAccount]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageFinancialAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageFinancialAccount]
GO
/****** Object:  StoredProcedure [dbo].[uspManageFAJournalCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageFAJournalCancel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageFAJournalCancel]
GO
/****** Object:  StoredProcedure [dbo].[uspManageFAJournal]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageFAJournal]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageFAJournal]
GO
/****** Object:  StoredProcedure [dbo].[uspManageCustomerMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageCustomerMaster]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageCustomerMaster]
GO
/****** Object:  StoredProcedure [dbo].[uspManageCreditDebitNoteCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageCreditDebitNoteCancel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageCreditDebitNoteCancel]
GO
/****** Object:  StoredProcedure [dbo].[uspManageCreditDebitNote]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageCreditDebitNote]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageCreditDebitNote]
GO
/****** Object:  StoredProcedure [dbo].[uspManageColorSettings]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageColorSettings]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageColorSettings]
GO
/****** Object:  StoredProcedure [dbo].[uspManageChequeBook]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageChequeBook]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageChequeBook]
GO
/****** Object:  StoredProcedure [dbo].[uspManageBranchOffice]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageBranchOffice]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageBranchOffice]
GO
/****** Object:  StoredProcedure [dbo].[uspManageBankAccount]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageBankAccount]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageBankAccount]
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndentDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageAutomaticIndentDraft]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageAutomaticIndentDraft]
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndentCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageAutomaticIndentCancel]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageAutomaticIndentCancel]
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndent]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageAutomaticIndent]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageAutomaticIndent]
GO
/****** Object:  StoredProcedure [dbo].[uspManageApplicationConfig]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspManageApplicationConfig]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspManageApplicationConfig]
GO
/****** Object:  StoredProcedure [dbo].[uspKillTran]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspKillTran]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspKillTran]
GO
/****** Object:  StoredProcedure [dbo].[uspInsertInventory]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspInsertInventory]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspInsertInventory]
GO
/****** Object:  StoredProcedure [dbo].[uspHomescreenData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspHomescreenData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspHomescreenData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetTaxCompInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetTaxCompInfo]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetTaxCompInfo]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetVoucherData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetVoucherData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetVoucherData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetQuotationData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetQuotationData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetQuotationData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseReturnData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetPurchaseReturnData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetPurchaseReturnData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseOrderData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetPurchaseOrderData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetPurchaseOrderData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetPurchaseData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetPurchaseData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetOtherCollPayData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetOtherCollPayData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetOtherCollPayData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetJournalEntryData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetJournalEntryData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetJournalEntryData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetInventoryAdjustmentData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetInventoryAdjustmentData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetInventoryAdjustmentData]
GO
/****** Object:  StoredProcedure [dbo].[uspgetsetImportExport]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspgetsetImportExport]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspgetsetImportExport]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetCreditDebitNoteData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetCreditDebitNoteData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetCreditDebitNoteData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetContraData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetContraData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetContraData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetAutoIndentData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetSetAutoIndentData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetSetAutoIndentData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetModifyHistoryData]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetModifyHistoryData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetModifyHistoryData]
GO
/****** Object:  StoredProcedure [dbo].[uspGetMapRoleMenus]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspGetMapRoleMenus]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspGetMapRoleMenus]
GO
/****** Object:  StoredProcedure [dbo].[uspCheckPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspCheckPermission]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspCheckPermission]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelQuatation]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspCancelQuatation]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspCancelQuatation]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelPurchaseBill]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspCancelPurchaseBill]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspCancelPurchaseBill]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelCollection]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[uspCancelCollection]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[uspCancelCollection]
GO
/****** Object:  View [dbo].[FACNAccountNames]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[FACNAccountNames]'))
DROP VIEW [dbo].[FACNAccountNames]
GO
/****** Object:  UserDefinedFunction [dbo].[ProperCase]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ProperCase]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[ProperCase]
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetRoundedValue]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[fnGetRoundedValue]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[fnGetRoundedValue]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranSaleDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpTranSaleDetail' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpTranSaleDetail]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranGSTInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpTranGSTInfo' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpTranGSTInfo]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranBillMop]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpTranBillMop' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpTranBillMop]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranBillDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpTranBillDetail' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpTranBillDetail]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpSaveDenomination]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpSaveDenomination' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpSaveDenomination]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpPurchaseOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpPurchaseOrder' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpPurchaseOrder]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpManageJE]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpManageJE' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpManageJE]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollMop]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpCollMop' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpCollMop]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpCollHeader' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpCollHeader]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpCollDetail' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpCollDetail]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpAutomaticIntent]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpAutomaticIntent' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpAutomaticIntent]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpAdjNoteInJE]    Script Date: 12/02/2025 08:18:51 PM ******/
IF  EXISTS (SELECT * FROM sys.types st JOIN sys.schemas ss ON st.schema_id = ss.schema_id WHERE st.name = N'tvpAdjNoteInJE' AND ss.name = N'dbo')
DROP TYPE [dbo].[tvpAdjNoteInJE]
GO
/****** Object:  UserDefinedTableType [dbo].[tvpAdjNoteInJE]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpAdjNoteInJE] AS TABLE(
	[AccId] [int] NULL,
	[NoteId] [int] NULL,
	[Balance] [decimal](25, 4) NULL,
	[DocDate] [date] NULL,
	[TransType] [nvarchar](255) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpAutomaticIntent]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpAutomaticIntent] AS TABLE(
	[ProdID] [int] NULL,
	[UomID] [int] NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[ABSQty] [decimal](25, 4) NULL,
	[MOH] [int] NULL,
	[MOQ] [int] NULL,
	[IndentQty] [int] NULL,
	[Serial] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpCollDetail] AS TABLE(
	[AccId] [int] NULL,
	[DocPrefix] [int] NULL,
	[DocValue] [int] NULL,
	[DocID] [nvarchar](50) NULL,
	[DocDate] [date] NULL,
	[Balance] [decimal](25, 4) NULL,
	[ColValue] [decimal](25, 4) NULL,
	[AdjAmt] [decimal](25, 4) NULL,
	[DiscPer] [nvarchar](50) NULL,
	[DiscAmt] [decimal](25, 4) NULL,
	[FullyAdj] [int] NULL,
	[FullyAdjAmt] [decimal](25, 4) NULL,
	[TotalAmtAdj] [decimal](25, 4) NULL,
	[TransType] [int] NULL,
	[SerialNo] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpCollHeader] AS TABLE(
	[Date] [date] NULL,
	[CoLLPYType] [int] NULL,
	[RefNo] [nvarchar](255) NULL,
	[AccId] [int] NULL,
	[ColAmt] [decimal](25, 4) NULL,
	[Balance] [decimal](25, 4) NULL,
	[ColMode] [int] NULL,
	[Status] [int] NULL,
	[ExAccId] [int] NULL,
	[UID] [int] NULL,
	[Type] [int] NULL,
	[SerialNo] [int] NULL,
	[VisaPern] [decimal](25, 4) NULL,
	[VisaAmt] [decimal](25, 4) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpCollMop]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpCollMop] AS TABLE(
	[AccId] [int] NULL,
	[PayMode] [int] NULL,
	[Cheque/DD Number] [nvarchar](50) NULL,
	[PMDate] [date] NULL,
	[BankAccID] [int] NULL,
	[NeftID] [nvarchar](50) NULL,
	[Amt] [decimal](25, 4) NULL,
	[IfscCode] [nvarchar](11) NULL,
	[Bank] [nvarchar](255) NULL,
	[Branch] [nvarchar](255) NULL,
	[PayAt] [nvarchar](255) NULL,
	[BankAccNo] [nvarchar](255) NULL,
	[ChequeBookRefNo] [nvarchar](255) NULL,
	[ChequeBookID] [int] NULL,
	[SerialNo] [int] NULL,
	[Balance] [decimal](25, 4) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpManageJE]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpManageJE] AS TABLE(
	[DocDate] [date] NULL,
	[DocRef] [nvarchar](255) NULL,
	[AccId] [int] NULL,
	[IfAdj] [nvarchar](20) NULL,
	[Debit] [decimal](25, 4) NULL,
	[Credit] [decimal](25, 4) NULL,
	[Remarks] [nvarchar](255) NULL,
	[Narration] [nvarchar](255) NULL,
	[UID] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpPurchaseOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpPurchaseOrder] AS TABLE(
	[ProdID] [int] NULL,
	[UomID] [int] NULL,
	[Qty] [decimal](25, 4) NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[TaxID] [int] NULL,
	[TaxPercentge] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[InventoryId] [int] NULL,
	[Serial] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpSaveDenomination]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpSaveDenomination] AS TABLE(
	[d_ID] [int] NULL,
	[d_Name] [int] NULL,
	[tot_Coupons] [int] NULL,
	[entered_Count] [int] NULL,
	[Amount] [decimal](25, 4) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranBillDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpTranBillDetail] AS TABLE(
	[ProdID] [int] NULL,
	[UOMID] [int] NULL,
	[UomGrpID] [int] NULL,
	[BatchNo] [nvarchar](255) NULL,
	[PKD] [nvarchar](255) NULL,
	[Expiry] [nvarchar](255) NULL,
	[Qty] [decimal](25, 4) NULL,
	[FreeQty] [decimal](25, 4) NULL,
	[DamageQty] [decimal](25, 4) NULL,
	[PurchasePrice] [decimal](25, 4) NULL,
	[SalePrice] [decimal](25, 4) NULL,
	[ECP] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[SPLPrice] [decimal](25, 4) NULL,
	[ReturnPrice] [decimal](25, 4) NULL,
	[TaxID] [int] NULL,
	[TaxTypeId] [int] NULL,
	[TaxPercentage] [decimal](25, 4) NULL,
	[GoodsAmt] [decimal](25, 4) NULL,
	[ProdDiscPercent] [decimal](25, 4) NULL,
	[TradeDiscPercent] [decimal](25, 4) NULL,
	[AddnlDiscPercent] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[InventoryId] [int] NULL,
	[InclusiveYesNo] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranBillMop]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpTranBillMop] AS TABLE(
	[AccId] [int] NULL,
	[PayModeId] [int] NULL,
	[BankAccNo] [nvarchar](255) NULL,
	[BankAccID] [int] NULL,
	[ChequeId] [nvarchar](50) NULL,
	[Cheque_OR_DDNumber_OR_NEFTId] [nvarchar](50) NULL,
	[PMDate] [nvarchar](50) NULL,
	[PayAt] [nvarchar](255) NULL,
	[IfscCode] [nvarchar](25) NULL,
	[Bank] [nvarchar](255) NULL,
	[Branch] [nvarchar](255) NULL,
	[Amt] [decimal](25, 6) NULL,
	[SerialNo] [int] NULL,
	[RecdAmt] [decimal](25, 6) NULL,
	[OriginalCollAmt] [decimal](25, 6) NULL,
	[VisaPern] [decimal](25, 6) NULL,
	[VisaAmt] [decimal](25, 6) NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranGSTInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpTranGSTInfo] AS TABLE(
	[TransID] [int] NULL,
	[TransIdentID] [int] NULL,
	[ProdID] [int] NULL,
	[TaxID] [int] NULL,
	[GSTTaxTypeID] [int] NULL,
	[TaxTypeID] [int] NULL,
	[TaxCompID] [int] NULL,
	[TaxCompPern] [decimal](25, 6) NULL,
	[TaxValue] [decimal](25, 6) NULL,
	[GrossAmount] [decimal](25, 6) NULL,
	[TransSerial] [int] NULL,
	[SerialNo] [int] NULL
)
GO
/****** Object:  UserDefinedTableType [dbo].[tvpTranSaleDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
CREATE TYPE [dbo].[tvpTranSaleDetail] AS TABLE(
	[ProdId] [int] NULL,
	[InventoryYesNo] [int] NULL,
	[BatchYesNo] [int] NULL,
	[PKDYesNo] [int] NULL,
	[SerialYesNo] [int] NULL,
	[BaseUomPrice] [decimal](25, 4) NULL,
	[UomId] [int] NULL,
	[UomQty] [decimal](25, 4) NULL,
	[UomPrice] [decimal](25, 4) NULL,
	[GoodsAmt] [decimal](25, 4) NULL,
	[UserDisc] [decimal](25, 4) NULL,
	[UserDiscAmt] [decimal](25, 4) NULL,
	[ProdDisc] [decimal](25, 4) NULL,
	[ProdDiscAmt] [decimal](25, 4) NULL,
	[TradeDisc] [decimal](25, 4) NULL,
	[TradeDiscPern] [decimal](25, 4) NULL,
	[AddnlDisc] [decimal](25, 4) NULL,
	[AddnlDiscPern] [decimal](25, 4) NULL,
	[GrossAmt] [decimal](25, 4) NULL,
	[TaxId] [int] NULL,
	[TaxPercentage] [decimal](25, 4) NULL,
	[TaxAmt] [decimal](25, 4) NULL,
	[NetAmt] [decimal](25, 4) NULL,
	[ReasonId] [int] NULL,
	[Serial] [int] NULL,
	[BatchNumber] [nvarchar](255) NULL,
	[PkgDate] [nvarchar](25) NULL,
	[ExpiryDate] [nvarchar](25) NULL,
	[InventoryPrice] [decimal](25, 4) NULL,
	[MRP] [decimal](25, 4) NULL,
	[InvQtyType] [int] NULL,
	[TempBatchInvId] [int] NULL
)
GO
/****** Object:  UserDefinedFunction [dbo].[fnGetRoundedValue]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[fnGetRoundedValue](@Input NVARCHAR(50))        
RETURNS NVARCHAR(50)        
AS        
BEGIN        
DECLARE @Result NVARCHAR(50)        
DECLARE @RoundOff INT,@RoundedValue NVARCHAR(50)        
SELECT @RoundOff=AppValue FROM tblAppConfig WHERE AppId=8        
SELECT @RoundedValue=ROUND(@Input,@RoundOff)        
IF ISNULL(@RoundOff,0)=2 OR ISNULL(@RoundOff,0)=1 OR ISNULL(@RoundOff,0)=0        
BEGIN        
SELECT @Result=CONVERT(DECIMAL(25,2),@Input)       
END        
ELSE IF ISNULL(@RoundOff,0)=3        
BEGIN        
SELECT @Result=CONVERT(DECIMAL(25,3),@Input)        
END        
ELSE IF ISNULL(@RoundOff,0)=4        
BEGIN        
SELECT @Result=CONVERT(DECIMAL(25,4),@Input)        
END            
        
RETURN @Result        
END 
GO
/****** Object:  UserDefinedFunction [dbo].[ProperCase]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE function [dbo].[ProperCase](@Text as varchar(8000))    
returns nvarchar(max)    
as    
begin    
  declare @Reset bit;    
  declare @Ret nvarchar(max);    
  declare @i int;    
  declare @c char(1);    
  declare @CaseID int = (select AppValue from tblAppConfig where AppID = 1)    
  
  if @Text is null    
    return null;    
    
  select @Reset = 1, @i = 1, @Ret = '';    
if(@CaseID = 1)  -- UPPER
BEGIN    
SET @Ret = UPPER(@Text)    
END    
if(@CaseID = 2) -- LOWER  
BEGIN    
SET @Ret = LOWER(@Text)    
END    
if(@CaseID = 3)  -- TITLE  
BEGIN  
  while (@i <= len(@Text))    
    select @c = substring(@Text, @i, 1),    
      @Ret = @Ret + case when @Reset = 1 then UPPER(@c) else LOWER(@c) end,    
      @Reset = case when @c like '[a-zA-Z]' then 0 else 1 end,    
      @i = @i + 1    
end  
IF(@CaseID = 4)  --  NO  CASE
BEGIN
SET @Ret = @Text
END
  return TRIM(@Ret)  
end
GO
/****** Object:  View [dbo].[FACNAccountNames]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[FACNAccountNames]
AS
WITH CTE AS (SELECT        FAGroup, AccountGroupName AS [Account Group Name], ParentGroup
                               FROM            dbo.tblFAGroup
                               WHERE        (AccountGroupName IN ('Income (Direct)', 'Income (Indirect)', 'Expenditure (Direct)', 'Expenditure (Indirect)'))
                               UNION ALL
                               SELECT        G.FAGroup, G.AccountGroupName, G.ParentGroup
                               FROM            dbo.tblFAGroup AS G INNER JOIN
                                                        CTE AS CTE_2 ON G.ParentGroup = CTE_2.FAGroup)
    SELECT        TOP (1000000)  FA.FAID, FA.AccountName AS [Account Name], FA.AccountGroup, FAG.AccountGroupName
     FROM            dbo.tblFAAccount AS FA LEFT OUTER JOIN
                              dbo.tblFAGroup AS FAG ON FAG.FAGroup = FA.AccountGroup
     WHERE        (FA.AccountGroup IN
                                  (SELECT        FAGroup
                                    FROM            CTE AS CTE_1)) AND (FA.Active = 1)
     ORDER BY [Account Name]
GO
/****** Object:  StoredProcedure [dbo].[uspCancelCollection]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[uspCancelCollection] 11,12,2,1,1  
CREATE PROC [dbo].[uspCancelCollection]                   
@TranDocPrefix INT,@CollID INT,@UID INT,@AllowNegativeBal INT = NULL,@nStatus INT =null,@Remarks NVARCHAR(MAX) = NULL,@Narration NVARCHAR(MAX) = NULL
AS                   
BEGIN TRANSACTION                 
BEGIN TRY      
DECLARE @PartyAcc INT, @ExpanceAcc INT,@AccCount INT,@AccountName NVARCHAR(255),@TempPaymentMode INT,@TempRecdAmt DECIMAL (25,6),  
@TempDocStatus INT,@PaymentModeStatus INT,@AccID INT,@ExpanceAccID INT  
-- Checking For Amount MissMatch                   
DECLARE @RecdAmt DECIMAL (25,6),@BalanceAmt DECIMAL (25,6),@AdjustedAmt DECIMAL (25,6),@AdjustmentAmt DECIMAL (25,6),@CollType INT,  
@DocExtraAdjustedAmt DECIMAL (25,6),@nCurrentStatus INT         
SET @nCurrentStatus = (CASE WHEN @TranDocPrefix IN (50,10) THEN (SELECT top 1 Status FROM tblTranCollectionHeader WHERE ColID = @CollID)         
WHEN  @TranDocPrefix IN (100,11) THEN (SELECT top 1 Status FROM tblTranPaymentHeader WHERE PYID = @CollID) END)      
    
IF(isnull(@nStatus,0) = isnull(@nCurrentStatus,0))        
BEGIN       
IF @TranDocPrefix = 50-- coll  
BEGIn                
IF ISNULL((SELECT COUNT(ColID) FROM tblTranCollectionHeader WHERE ColID=@CollID AND Type=1),0)>0                   
BEGIN                   
RAISERROR('TYPE',16,1);                   
END                   
END                   
CREATE TABLE #Temp(ID int identity ,CollID int,DocPrefix INT,DocValue INT, IdentID int, ColValue DECIMAL (25,6))                   
IF @TranDocPrefix=50 OR @TranDocPrefix=10 -- coll other coll                   
BEGIN                 
SET @TempDocStatus=(SELECT [Status] FROM tblTranCollectionHeader where ColID = @CollID)                   
SELECT @PaymentModeStatus=(SELECT [Status] FROM tblCollPMDetails where ColID = @CollID)                   
                   
                   
SELECT @PartyAcc=AccID,@ExpanceAcc=ExpanceAcc,@TempPaymentMode=ColMode,@TempRecdAmt=ColAmt FROM tblTranCollectionHeader where ColID = @CollID                   
                   
--IF ISNULL(@PartyAcc,0)!=0                   
--BEGIN                   
--EXEC uspCheckAccStatus @PartyAcc, @AccCount OUTPUT,@AccountName OUTPUT                   
--IF @AccCount=0                   
--BEGIN                   
--RAISERROR('Acc',16,1,@AccountName)                   
--END                   
--END                   
--IF ISNULL(@ExpanceAcc,0)!=0                   
--BEGIN                   
--EXEC uspCheckAccStatus @ExpanceAcc, @AccCount OUTPUT,@AccountName OUTPUT                   
--IF @AccCount=0                   
--BEGIN                   
--RAISERROR('Acc',16,1,@AccountName)                   
--END                   
--END                   
-- Check Cash Acc Balance                   
DECLARE @PYModeAmt DECIMAL (25,6),@PYFAType NVARCHAR(10),@CashBankAccID INT,@CurrentDate DATE=(SELECT GETDATE())                   
DECLARE @PYOutputValue TABLE (Amt DECIMAL(25,6),FAType NVARCHAR(10)) --18.9             
IF ISNULL(@TempPaymentMode,0)=1                   
BEGIn                  
SET @CashBankAccID = (SELECT FAID FROM tblFAAccount WHERE AccountName='cash')                   
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@CashBankAccID,@CurrentDate                   
-- Get Value From Result                   
SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                   
IF @PYFAType='Cr' OR @PYModeAmt<@TempRecdAmt                   
BEGIN                   
IF ISNULL(@AllowNegativeBal,0)=0                   
BEGIN                   
RAISERROR('Bal',16,1)                   
END                   
END                   
END                 
-- Check Bank Acc Balance                   
IF ISNULL(@TempPaymentMode,0)=4                   
BEGIN                   
SELECT @CashBankAccID=BankAccID FROM tblTranCollectionHeader AS Header  
JOIN tblCollPMDetails AS PM ON Header.ColID=PM.ColID  
WHERE Header.ColID=@CollID  
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@CashBankAccID,@CurrentDate                   
-- Get Value From Result                   SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                   
IF @PYFAType='Cr' OR @PYModeAmt<@TempRecdAmt                   
BEGIN                   
IF ISNULL(@AllowNegativeBal,0)=0                   
BEGIN                   
RAISERROR('Bal',16,1)                   
END                   
END                   
END                   
-- Check Coupon Cancelling              
--IF ISNULL(@TempPaymentMode,0)=6              
--BEGIN                   
--DECLARE @tempActualCount INT,@SettledCount INT              
--SELECT @tempActualCount=ISNULL(SUM(DCount),0),@SettledCount=ISNULL(SUM(SettlementCount),0)              
--FROM tblmastdenominationPMDetails WHERE FormDocPrefix=@TranDocPrefix AND TransID=@CollID              
--IF @tempActualCount=@SettledCount              
--BEGIN              
--UPDATE tblmastdenominationPMDetails SET Status=4 WHERE FormDocPrefix=@TranDocPrefix AND TransID=@CollID              
--END              
--ELSE              
--BEGIN              
--RAISERROR('SETTLED',16,1)              
--END              
--END              
              
IF @TranDocPrefix=50-- COLL  
BEGIN                  
--Collection                   
-- Get Recd Amt And Balance Amt                   
SELECT @RecdAmt=ISNULL(ColAmt,0),@BalanceAmt=ISNULL(Balance,0) FROM tblTranCollectionHeader WHERE ColID=@CollID           
--SELECT * FROM tblTranCollectionHeader WHERE ColID=2899               
--Get Adjusted Amt                   
SELECT @AdjustedAmt=ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN(3,5,6)                   
--SELECT ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=2899 AND DocPrefix IN(3,5,6)          
--Get AdjustMent Amt                   
SELECT @AdjustmentAmt=ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN (2,16,29)           
--SELECT ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=2899 AND DocPrefix IN(2,16,29)                  
-- Get Adjusted amt                   
SELECT @DocExtraAdjustedAmt=ISNULL(SUM(AdjAmt),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN (2,16,29)                   
--GROUP BY AdjAmt HAVING ISNULL(AdjAmt,0)>0                   
AND AdjAmt > 0           
--SELECT ISNULL(SUM(AdjAmt),0) FROM tblTranCollectionDetail WHERE ColID=2899 AND DocPrefix IN(2,16,29) AND AdjAmt > 0          
--select * from tblMastDocSeries where DocID in (2,3,5,6,16,29)          
-------------------          
IF ISNULL((@RecdAmt+@AdjustedAmt),0)!=ISNULL((@BalanceAmt+@AdjustmentAmt+ISNULL(@DocExtraAdjustedAmt,0)),0)                   
BEGIN                   
RAISERROR('PROC',16,1)                   
END                   
END                   
                   
IF @TranDocPrefix=10--OTH COLL  
BEGIN                   
--Other Collection                   
-- Get Recd Amt And Balance Amt                   
SELECT @RecdAmt=ISNULL(ColAmt,0),@BalanceAmt=ISNULL(Balance,0),@CollType=COLLType FROM tblTranCollectionHeader WHERE ColID=@CollID                   
--Get Adjusted Amt                   
SELECT @AdjustedAmt=ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN(3,5,17,15)                   
--Get AdjustMent Amt                   
SELECT @AdjustmentAmt=ISNULL(SUM(ColValue),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN(4,10,16,18)                   
-- Get Adjusted amt                   
SELECT @DocExtraAdjustedAmt=ISNULL(SUM(AdjAmt),0) FROM tblTranCollectionDetail WHERE ColID=@CollID AND DocPrefix IN(4,10,16,18)                   
--GROUP BY AdjAmt HAVING                   
AND AdjAmt>0                   
IF ISNULL(@CollType,0)!=2 AND ISNULL(@CollType,0)!=3                   
BEGIN                   
IF ISNULL((@RecdAmt+@AdjustedAmt),0)!=ISNULL((@BalanceAmt+@AdjustmentAmt+ISNULL(@DocExtraAdjustedAmt,0)),0)                   
BEGIN                   
RAISERROR('PROC',16,1)                   
END                   
END                   
END                   
IF @TempDocStatus=1 OR @TempDocStatus=4 OR @TempDocStatus=3   
BEGIn                   
IF ISNULL(@PaymentModeStatus,0)=0 OR @PaymentModeStatus=1 OR @PaymentModeStatus=3                   
BEGIN                   
UPDATE dbo.tblTranCollectionHeader set [Status] = 4,ClBy=@UID,ClDate=GETDATE(),Remarks = @Remarks,Narration = @Narration where ColID = @CollID                   
UPDATE dbo.tblCollPMDetails SET [Status]=4 WHERE ColID = @CollID                   
INSERT INTO #Temp SELECT ColID,DocPrefix,DocValue ,DocID,TotalAmtAdj from dbo.tblTranCollectionDetail where ColID = @CollID                   
END                   
ELSE                   
BEGIN                   
RAISERROR('PAYMENT',16,1)                   
END                   
END                   
ELSE                   
BEGIN                   
RAISERROR('CANCELLED',16,1)                   
END                   
END                   
IF @TranDocPrefix=100 OR @TranDocPrefix=11-- PYMT OTHR PY  
BEGIN                   
SET @TempDocStatus=(SELECT [Status] FROM tblTranPaymentHeader where PYID = @CollID)                   
SET @PaymentModeStatus=(SELECT [Status] FROM tblPaymentPMDetail where PYID = @CollID)                   
SELECT @PartyAcc=AccID,@ExpanceAcc=ExpanseAcc,@TempPaymentMode=PYMode FROM tblTranPaymentHeader where PYID = @CollID                   
--IF ISNULL(@PartyAcc,0)!=0                   
--BEGIN                   
--EXEC uspCheckAccStatus @PartyAcc, @AccCount OUTPUT,@AccountName OUTPUT                   
--IF @AccCount=0                   
--BEGIN                   
--RAISERROR('Acc',16,1,@AccountName)    
--END                   
--END                   
--IF ISNULL(@ExpanceAcc,0)!=0                   
--BEGIN                   
--EXEC uspCheckAccStatus @ExpanceAcc, @AccCount OUTPUT,@AccountName OUTPUT                   
--IF @AccCount=0                   
--BEGIN                   
--RAISERROR('ACC',16,1,@AccountName)                   
--END                   
--END                   
              
--IF ISNULL(@TempPaymentMode,0)=6              
--BEGIN                   
--DECLARE @tempCancelSettled TABLE (D_ID INT,DenoID INT,StlCount INT)              
--INSERT INTO @tempCancelSettled              
--SELECT DID,DenoID,StlCount FROM tblSettlementDetailforCoupon              
--WHERE TrnDocPrefix=@TranDocPrefix AND STMID=@CollID AND Status=1 AND TransType=1              
              
--IF ISNULL((SELECT COUNT(*) FROM @tempCancelSettled),0)>0              
--BEGIN              
--UPDATE tblmastdenominationPMDetails SET SettlementCount = (SettlementCount+Temp.StlCount),Status=1              
--FROM @tempCancelSettled AS Temp              
--WHERE tblmastdenominationPMDetails.DId = Temp.D_ID AND tblmastdenominationPMDetails.DenoID = Temp.DenoID              
--UPDATE tblSettlementDetailforCoupon SET Status=4 WHERE TrnDocPrefix=@TranDocPrefix AND STMID=@CollID AND TransType=1              
--END              
--END              
IF @TranDocPrefix=100--PAYMENT  
BEGIN                   
--Payment                   
-- Get Recd Amt And Balance Amt                   
SELECT @RecdAmt=ISNULL(PYAmt,0),@BalanceAmt=ISNULL(Balance,0) FROM tblTranPaymentHeader WHERE PYID=@CollID                   
--Get Adjusted Amt                   
SELECT @AdjustedAmt=ISNULL(SUM(BillPYValue),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN (4,10,9)                   
--Get AdjustMent Amt                   
SELECT @AdjustmentAmt=ISNULL(SUM(BillPYValue),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN (7,28)                   
-- Get Adjusted amt                   
SELECT @DocExtraAdjustedAmt=ISNULL(SUM(AdjAmt),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN (7,28)                   
--GROUP BY AdjAmt HAVING                   
AND AdjAmt>0                   
IF ISNULL((@RecdAmt+@AdjustedAmt),0)!=ISNULL((@BalanceAmt+@AdjustmentAmt+ISNULL(@DocExtraAdjustedAmt,0)),0)                   
BEGIN                   
RAISERROR('PROC',16,1)                   
END                   
END                   
IF @TranDocPrefix=11--OTHER PAYMENT  
BEGIN                   
--Other Payment                   
-- Get Recd Amt And Balance Amt                   
SELECT @RecdAmt=ISNULL(PYAmt,0),@BalanceAmt=ISNULL(Balance,0),@CollType=PYType FROM tblTranPaymentHeader WHERE PYID=@CollID            
--Get Adjusted Amt                   
SELECT @AdjustedAmt=ISNULL(SUM(BillPYValue),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN(4,10,16,18)                   
--Get AdjustMent Amt                   
SELECT @AdjustmentAmt=ISNULL(SUM(BillPYValue),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN(3,5,17,15)                   
-- Get Adjusted amt                   
SELECT @DocExtraAdjustedAmt=ISNULL(SUM(AdjAmt),0) FROM tblTranPaymentDetail WHERE PYID=@CollID AND DocPrefix IN(3,5,17,15)                   
--GROUP BY AdjAmt HAVING                   
AND AdjAmt>0                   
IF ISNULL(@CollType,0)!=2 AND ISNULL(@CollType,0)!=3                   
BEGIN                   
IF ISNULL((@RecdAmt+@AdjustedAmt),0)!=ISNULL((@BalanceAmt+@AdjustmentAmt+ISNULL(@DocExtraAdjustedAmt,0)                   
),0)                   
BEGIN                   
RAISERROR('PROC',16,1)                   
END                   
END                   
END                   
                   
IF @TempDocStatus=1 OR @TempDocStatus=4 OR @TempDocStatus=3   
BEGIN                   
IF ISNULL(@PaymentModeStatus,0)=0 OR @PaymentModeStatus=1 OR @PaymentModeStatus=3                   
BEGIN                   
                   
UPDATE dbo.tblTranPaymentHeader set [Status] = 4,ClBy=@UID,ClDate=GETDATE(),Remarks = @Remarks,Narration = @Narration where PYID = @CollID                   
UPDATE dbo.tblPaymentPMDetail SET [Status]=4 WHERE PYID = @CollID                   
DECLARE @PaymentModeID INT=(SELECT PYMode FROM tblTranPaymentHeader where PYID = @CollID )                   
IF @PaymentModeID=2                   
BEGIN                   
-- Cancel Cheque Status                   
DECLARE @BankFAAccID INT,@ChequeNo INT,@ChequeRefNoWithChequeNo NVARCHAR(50),@BankAccID INT,@RefNo NVARCHAR(50)                   
DECLARE @ChequeBookID INT                   
SELECT @BankFAAccID=BankAccID,@ChequeNo=[Cheque/DD Number],@ChequeRefNoWithChequeNo=ChequeRefNoWithChequeNo                   
FROM tblPaymentPMDetail WHERE PYID = @CollID                   
                   
SET @BankAccID=(SELECT ID FROM tblMasterBankAccount WHERE FAID=@BankFAAccID)                   
SET @RefNo=(SELECT SUBSTRING(@ChequeRefNoWithChequeNo,0,(SELECT CHARINDEX('-', @ChequeRefNoWithChequeNo))-1))                   
SET @ChequeBookID=(SELECT ChequebookId FROM tblMasterChequeBook WHERE BankAccountID=@BankAccID AND ChequeBookreferNo=@RefNo)                   
UPDATE tblMasterChequeBookDetail SET [Status]=4 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@ChequeNo                   
END                   
                   
INSERT INTO #Temp SELECT PYID,DocPrefix,DocValue ,DocID,TotalAmtAdj from dbo.tblTranPaymentDetail where PYID = @CollID                   
END                   
ELSE                   
BEGIN                   
RAISERROR('PAYMENT',16,1)                   
END                   
END                   
ELSE                   
BEGIN                   
RAISERROR('CANCELLED',16,1)                   
END                   
--END                   
-- ELSE                   
-- BEGIN                   
--RAISERROR('PAYMENT',16,1)                   
-- END                   
END                   
UPDATE tblFAJournal SET [Status]=4,ClBy=@UID,ClDate=GETDATE(),Remarks = @Remarks,Narration = @Narration where TransId = @CollID AND DocPrefix=@TranDocPrefix                   
DECLARE @DetailCount int                   
DECLARE @Count int                   
SET @DetailCount = (SELECT COUNT(CollID) FROM #Temp)                   
SET @Count = 1                   
                   
WHILE (@Count <= @DetailCount)                   
BEGIN  
CREATE TABLE #TEMP2 (DocValue INT)                   
DECLARE @TempID INT,@TempAmt DECIMAL (25,6),@DocValue INT,@DocPrefix INT ,@DocCount INT                   
SET @TempID = (SELECT IdentID FROM #Temp WHERE ID = @Count)                   
SET @TempAmt = (SELECT ColValue FROM #Temp WHERE ID = @Count)               
SET @DocValue = (SELECT DocValue FROM #Temp WHERE ID = @Count)                   
SET @DocPrefix = (SELECT DocPrefix FROM #Temp WHERE ID = @Count)                   
-- collection & other coll  
IF @DocPrefix=50 OR @DocPrefix=10                   
BEGIN                   
UPDATE dbo.tblTranCollectionHeader SET Balance = Balance+@TempAmt WHERE ColID = @TempID                   
                   
INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTranCollectionHeader WHERE DocValue = @DocValue AND DocPrefix=@DocPrefix                
--AND (ColDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                
SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
IF(@DocCount = 1)                   
BEGIN                   
UPDATE dbo.tblTranCollectionHeader SET [Status] = 1 WHERE ColID = @TempID                   
END                   
ELSE                   
BEGIN                   
UPDATE dbo.tblTranCollectionHeader SET [Status] = 3 WHERE ColID = @TempID                   
END                   
END                   
--Payment & other payment  
IF @DocPrefix=100 OR @DocPrefix=11                   
BEGIN                   
UPDATE dbo.tblTranPaymentHeader SET Balance = Balance+@TempAmt WHERE PYID = @TempID                   
                   
INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTranPaymentHeader WHERE DocValue = @DocValue AND PYPrefix=@DocPrefix                
--AND (PYDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                
SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
IF(@DocCount = 1)                   
BEGIN                   
UPDATE dbo.tblTranPaymentHeader SET [Status] = 1 WHERE PYID = @TempID                   
END                   
ELSE                   
BEGIN                   
UPDATE dbo.tblTranPaymentHeader SET [Status] = 3 WHERE PYID = @TempID                   
END                   
END                   
-- SALES AND SALES RETURN  
--IF @DocPrefix=2 OR @DocPrefix=6                   
--BEGIN                   
--UPDATE dbo.tblTranSalesHeader SET Balance = Balance+@TempAmt WHERE InvId = @TempID                   
--INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTranSalesHeader WHERE DocValue = @DocValue AND DocPrefix=@DocPrefix                   
--AND (InvDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                
--SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
--IF(@DocCount = 1)                   
--BEGIN                   
--IF @DocPrefix=2                   
--BEGIN                   
--UPDATE dbo.tblTranSalesHeader SET [Status] = 1 WHERE InvId = @TempID                   
--END                   
--IF @DocPrefix=6                   
--BEGIN                   
--DECLARE @Type INT                   
--SELECT @Type=TransactionType FROM tblTranSalesHeader WHERE InvId=@TempID                   
---- Change document to Sales Return If Type=2                   
--IF @Type=2                   
--BEGIN                   
--UPDATE dbo.tblTranSalesHeader SET [Status] = 6 WHERE InvId = @TempID                   
--END                   
---- Change document to Damage Return If Type=2                   
--IF @Type=3                   
--BEGIN                   
--UPDATE dbo.tblTranSalesHeader SET [Status] = 7 WHERE InvId = @TempID                   
--END                   
--END                   
--END                   
--ELSE                   
--BEGIN                   
--UPDATE dbo.tblTranSalesHeader SET [Status] = 3 WHERE InvId = @TempID                   
--END                   
--END  
--BILL AND PURCHASE RETURN  
IF @DocPrefix=1 OR @DocPrefix=90  
BEGIN                   
UPDATE dbo.tblTransPurchaseHeader SET Balance = Balance+@TempAmt WHERE ID = @TempID                   
                   
INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTransPurchaseHeader WHERE DocValue = @DocValue AND TransID=@DocPrefix               
--AND (BillDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                
SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
IF(@DocCount = 1)                   
BEGIN                   
IF @DocPrefix=1                   
BEGIN                   
UPDATE dbo.tblTransPurchaseHeader SET [Status] = 1 WHERE ID = @TempID                   
END                   
IF @DocPrefix=90--RETURN  
BEGIN                   
UPDATE dbo.tblTransPurchaseHeader SET [Status] = 6 WHERE ID = @TempID                   
END                   
END                   
ELSE                   
BEGIN                   
IF @DocPrefix=1  
BEGIN                   
UPDATE dbo.tblTransPurchaseHeader SET [Status] = 3 WHERE ID = @TempID                   
END                   
IF @DocPrefix=90--RETURN  
BEGIN                   
UPDATE dbo.tblTransPurchaseHeader SET [Status] = 6 WHERE ID = @TempID                   
END                   
END                   
END                  
--SERVICE BILL & INVOICE  
--IF @DocPrefix=28 OR @DocPrefix=29  
--BEGIN                   
--UPDATE dbo.tblTranServiceHeader SET Balance = Balance+@TempAmt WHERE ServiceID = @TempID                   
--INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTranServiceHeader WHERE DocValue = @DocValue AND DocPrefix=@DocPrefix                
--AND (ServiceDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                   
--SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
--UPDATE dbo.tblTranServiceHeader SET [Status] = (CASE WHEN (@DocCount = 1) THEN 1 ELSE 3 END) WHERE ServiceID = @TempID                   
--END                  
--CREDIT DEBIT NOTE  
IF @DocPrefix=4 OR @DocPrefix=5                   
BEGIN                   
UPDATE dbo.tblNoteDetails SET Balance = Balance+@TempAmt WHERE ID = @TempID                   
                   
INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblNoteDetails WHERE DocValue = @DocValue AND TransID=@DocPrefix                
--AND (DocDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                   
SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
UPDATE dbo.tblNoteDetails SET [Status] = (CASE WHEN (@DocCount = 1) THEN 1 ELSE 3 END) WHERE ID = @TempID                   
END                   
-- P R VOUCHER  
IF @DocPrefix=6 OR @DocPrefix=7                   
BEGIN                   
UPDATE dbo.tblTranPRVoucher SET Balance = Balance+@TempAmt WHERE ID = @TempID                   
                   
INSERT INTO #TEMP2 SELECT DocValue FROM dbo.tblTranPRVoucher WHERE DocValue = @DocValue AND TransID=@DocPrefix                
--AND (DocDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))                   
SET @DocCount = (SELECT COUNT(DocValue) FROM #TEMP2)                   
UPDATE dbo.tblTranPRVoucher SET [Status] = (CASE WHEN (@DocCount = 1) THEN 1 ELSE 3 END) WHERE ID = @TempID                   
END                   
                  
SET @Count = @Count+1                   
DROP TABLE #TEMP2                   
END                   
DROP TABLE #Temp                   
END  
ELSE        
BEGIN        
RAISERROR('PROCESSED',16,1);      
END        
COMMIT TRANSACTION                   
END TRy                   
BEGIN CATCH                   
ROLLBACK TRANSACTION                   
SELECT ERROR_MESSAGE(),ERROR_LINE(),ERROR_PROCEDURE()                   
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspCancelPurchaseBill]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspCancelPurchaseBill]                    
@GRNMode INT,@GRNID INT,@Uid INT,@CurrentStatus SMALLINT  
AS                      
BEGIN TRY                 
 --GRN Cancel                   
 DECLARE @CheckStatus SMALLINT,@DocValue INT, @PreviousTranDate DATE                  
 SELECT @CheckStatus = [Status],@DocValue=DocValue,@PreviousTranDate=Date From tblTransPurchaseHeader Where ID = @GRNID                           
 IF(@CheckStatus != @CurrentStatus)                                
 BEGIN                                
  RAISERROR('Status Already Changed',16,1)                               
 END      
                                 
 DECLARE @Qty DECIMAL (25,6),@FreeQty  DECIMAL (25,6),@DmgQty  DECIMAL (25,6)                   
 --Get Qty Details In GRN Id Based From Inventory Table                  
 SELECT @Qty=ISNULL(SUM(IP.RecdQty),0)-(ISNULL(SUM(IP.ActualQty),0)-ISNULL(SUM(SRQty),0)),                    
 @FreeQty=ISNULL(SUM(IP.RecdFreeQty),0)-(ISNULL(SUM(IP.ActualFreeQty),0)-ISNULL(SUM(SRFreeQty),0)),                    
 @DmgQty=ISNULL(SUM(IP.RecdDmgQty),0)-(ISNULL(SUM(IP.ActualDmgQty),0)-ISNULL(SUM(SRFreeQty),0))                    
 FROM tblProductInventory IP   
 JOIN tblTransPurchaseDetail GRND ON GRND.InventoryId =IP.InventoryId                       
 WHERE GRND.HID =@GRNID                     
 --Verify Any One Qty Miss Matched If Not Allow to Modify                  
 IF(@Qty=0.000 AND @FreeQty=0.000 AND @DmgQty=0.000)                      
 BEGIN                 
 --Update Inventory put qty SET 0                     
  UPDATE tblProductInventory SET RecdQty = 0,RecdFreeQty = 0,RecdDmgQty = 0, ActualQty = ISNULL(SRQty,0) , ActualFreeQty =ISNULL(SRFreeQty,0),                
  ActualDmgQty = ISNULL(SRDmgQty,0),ClBy = @Uid,ClDate = GETDATE()  
  FROM tblProductInventory IP JOIN  tblTransPurchaseDetail GRND ON GRND .InventoryId =IP.InventoryId                       
  WHERE GRND.HID =@GRNID                       
 END                      
 ELSE                      
 BEGIN                      
  RAISERROR('Qty Miss Matched',16,1);                    
 END        
 -- Check If GRN Created From PO AND Status        
DECLARE @CurrentDocStatus INT,@GrnFromPo INT                
select @CurrentDocStatus=Status from tblTransPurchaseHeader where ID = @GRNID
IF ISNULL(@CurrentDocStatus,0)=1
BEGIN        
DECLARE @Serial INT,@Count INT      
DECLARE @TempPOCancelDocs AS TABLE (ID INT IDENTITY(1,1), POID INT, PODocValue INT)      
INSERT INTO @TempPOCancelDocs      
SELECT ID,DocValue FROM tblPurchaseOrderHeader WHERE GRNId = @GRNID  
      
SET @Serial = 1      
SET @Count = (SELECT COUNT(*) FROM @TempPOCancelDocs)      
      
WHILE @Count > 0      
BEGIN      
DECLARE @PODocValue INT,@POID INT,@UpdateStatus SMALLINT      
SELECT @POID=POID,@PODocValue=PODocValue FROM @TempPOCancelDocs WHERE ID=@Serial      
SET @UpdateStatus = (CASE WHEN ISNULL((SELECT COUNT(*) FROM tblPurchaseOrderHeader  
WHERE DocValue=@PODocValue    
AND (DocDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))),0) = 1 THEN 1 ELSE 3 END)     
UPDATE tblPurchaseOrderHeader SET [Status]=@UpdateStatus,GRNId=0 WHERE ID=@POID      
      
SET @Serial = @Serial + 1      
SET @Count = @Count - 1      
END 
END        
         
         
 --GRN Status to Change Cancel(4) Status                    
 UPDATE tblTransPurchaseHeader SET [Status] =4,Clby =@UId ,Cldate =GETDATE()                     
 WHERE ID =@GRNID                     
 --Posting Revort to Change Cancel(4) Status                    
 UPDATE tblFAJournal SET [Status] =4,Clby =@UId ,Cldate =GETDATE()                     
 WHERE TransId  =@GRNID  AND DocPrefix =1            
 --IF Cancel ON Back Dated Transaction to Insert Bactdate Transaction table          
 --EXEC uspCreateBackTran 3,@GRNID,@GRNID,1,@DocValue ,@PreviousTranDate,null                  
END TRY                    
BEGIN  CATCH                    
 SELECT ERROR_MESSAGE (),ERROR_PROCEDURE (),ERROR_LINE ();                    
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspCancelQuatation]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspCancelQuatation]
@quatationId INT,@Uid INT,@CurrentStatus SMALLINT
AS
BEGIN TRY
BEGIN TRAN
--Purchase Cancel
DECLARE @CheckStatus SMALLINT,@DocValue INT, @PreviousTranDate DATE
SELECT @CheckStatus = [Status],@DocValue=DocValue,@PreviousTranDate=DocDate From tblQuotationHeader Where ID = @quatationId
IF(@CheckStatus != @CurrentStatus)
BEGIN
RAISERROR('1',16,1)
END
DECLARE @Qty INT
-- Status to Change Cancel(4) Status
UPDATE tblQuotationHeader SET [Status] =4,Clby =@UId ,Cldate =GETDATE() WHERE ID =@quatationId
COMMIT TRAN
END TRY
BEGIN CATCH
ROLLBACK TRAN
SELECT ERROR_MESSAGE (),ERROR_PROCEDURE (),ERROR_LINE ();
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspCheckPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspCheckPermission 79, 'Export Data'    
CREATE proc [dbo].[uspCheckPermission]    
@UID INT,@FormName NVARCHAR(255) = NULL,@RoleID INT = NULL  
AS    
BEGIN    
IF(@UID = 1 AND ISNULL(@RoleID,0) = 1)    
BEGIN    
SELECT 'DEFAULT PERMISSION FOR SA'  
END    
ELSE    
BEGIN    
select * from tblRolePermissions where Role = ISNULL(@RoleID,0) and     
PermissionFormId = (select MenuId from tblMenus where MenuName = @FormName)    
END    
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetMapRoleMenus]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[uspGetMapRoleMenus] 79,2    
CREATE PROC [dbo].[uspGetMapRoleMenus]        
 @RoleId INT,@LoginUID INT    
 AS                             
 BEGIN                
 if(@LoginUID = 1)--@userId    
 BEGIN        
SELECT MenuId,MenuName,MenuParentId,1 AS Permission      
    FROM tblMenus                     
    WHERE MenuId in (SELECT PermissionFormId  FROM tblRolePermissions WHERE Role=@RoleId) --AND Permission=1        
            
    union      
    SELECT MenuId,MenuName,MenuParentId,0                       
    FROM tblMenus                             
    WHERE MenuId not in (SELECT PermissionFormId  FROM tblRolePermissions WHERE Role=@RoleId) --AND Permission=1            
END        
ELSE        
BEGIN        
DECLARE @LOGINROLE INT = (SELECT RoleID FROM tblUsers WHERE ID = @LoginUID)  
  
SELECT MenuId,MenuName,MenuParentId INTO #LOGTEMP    
FROM tblMenus    
WHERE MenuId in (SELECT PermissionFormId  FROM tblRolePermissions WHERE Role=@LOGINROLE) --AND Permission=1        
    
      
SELECT MenuId,MenuName,MenuParentId INTO #UTEMP    
FROM tblMenus    
WHERE MenuId in (SELECT PermissionFormId  FROM tblRolePermissions WHERE Role=@RoleId) --AND Permission=1        
    
SELECT LT.MenuId,LT.MenuName,LT.MenuParentId,CASE WHEN ISNULL(UT.MenuId,0) = 0 THEN 0 ELSE 1 END Permission FROM #LOGTEMP LT    
LEFT JOIN #UTEMP UT ON UT.MenuId = LT.MenuId    
    
DROP TABLE #LOGTEMP,#UTEMP    
 END      
 END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetModifyHistoryData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetModifyHistoryData 5,20,13,'2024-12-27','2024-12-28',3
CREATE proc [dbo].[uspGetModifyHistoryData]  
@Mode INT,@TableID NVARCHAR(MAX) = NULL,@UserID NVARCHAR(MAX) = NULL,@FromDate date = null,@ToDate date = null,@ID NVARCHAR(255) = NULL  
AS  
BEGIN  
declare @strQuery NVARCHAR(MAX),@FormID int  
IF(@Mode = 1)  
BEGIN  
select 1 Type,'Tables' Trans,ID,'' Code,FormName Name from tblTablesNames where ID <= 29  
union all  
SELECT 2 Type,'Users' Trans,ID,'',UserName FROM tblUsers WHERE Active = 1  
order by Type,Name  
END  
ELSE IF(@Mode = 2)  
BEGIN  
set @FormID = @TableID  
select MBy UserID,UPPER(UserName) UserName from (  
--SINGLE MASTER  
select MH.HisCBy MBy,U.UserName from tblMasterHistory MH  
JOIN tblUsers U ON U.ID = MH.HisCBy WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate and FormID = (CASE WHEN @FormID = 0 THEN FormID ELSE @FormID END)  
GROUP BY MH.HisCBy,U.UserName  
UNION -- CUSTOMER,VENDOR  
SELECT MH.HisCBy,U.UserName FROM tblMasterCustomerVendorHistory MH  
JOIN tblUsers U ON U.ID = MH.HisCBy WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate and FormID = (CASE WHEN @FormID = 0 THEN FormID ELSE @FormID END)  
GROUP BY MH.HisCBy,U.UserName  
UNION -- PRODUCT  
SELECT MH.HisCBy,U.UserName FROM tblMasterProductHistory MH  
JOIN tblUsers U ON U.ID = MH.HisCBy WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate and FormID = (CASE WHEN @FormID = 0 THEN FormID ELSE @FormID END)  
GROUP BY MH.HisCBy,U.UserName  
--UNION -- AUTO INDENT  
--SELECT MH.MBy,U.UserName FROM tblTransAutomaticIndentHeader MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION -- PO  
--SELECT MH.MBy,U.UserName FROM tblPurchaseOrderHeader MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION -- BILL,PR  
--SELECT MH.MBy,U.UserName FROM tblTransPurchaseHeader MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION -- CN,DN  
--SELECT MH.MBy,U.UserName FROM tblNoteDetails MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION -- CONT  
--SELECT MH.MBy,U.UserName FROM tblTranContra MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION -- RV,PV  
--SELECT MH.MBy,U.UserName FROM tblTranPRVoucher MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION ALL -- JE  
--SELECT MH.MBy,U.UserName FROM tblFAJournal MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE DocPrefix = 9 AND Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION ALL -- OTHER COLL  
--SELECT MH.MBy,U.UserName FROM tblTranCollectionHeader MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
--UNION ALL -- OTHER PAY  
--SELECT MH.MBy,U.UserName FROM tblTranPaymentHeader MH  
--JOIN tblUsers U ON U.ID = MH.MBy WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY MH.MBy,U.UserName  
) as rec  
GROUP BY MBy,UserName  
ORDER BY UserName  
END  
ELSE IF(@Mode = 3)  
BEGIN  
set @FormID = @TableID  
select FormID,UPPER(FormName) FormName into #tempForms from (  
--SINGLE MASTER  
select MH.FormID,U.FormName from tblMasterHistory MH  
JOIN tblTablesNames U ON U.ID = MH.FormID WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.FormID,U.FormName  
UNION ALL -- CUSTOMER,VENDOR  
SELECT MH.FormID,U.FormName FROM tblMasterCustomerVendorHistory MH  
JOIN tblTablesNames U ON U.ID = MH.FormID WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.FormID,U.FormName  
UNION ALL -- PRODUCT  
SELECT MH.FormID,U.FormName FROM tblMasterProductHistory MH  
JOIN tblTablesNames U ON U.ID = MH.FormID WHERE MH.HisCBy = (CASE WHEN @UserID = 0 THEN MH.HisCBy ELSE @UserID END) and  
CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.FormID,U.FormName  
--UNION ALL -- AUTO INDENT  
--SELECT 30,'Automatic Indent' FROM tblTransAutomaticIndentHeader MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- PO  
--SELECT 31,'Purchase Order' FROM tblPurchaseOrderHeader MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- BILL,PR  
--SELECT case when TransID = 1 then 32 ELSE 33 END,case when TransID = 1 then 'Purchase Bill' ELSE 'Purchase Return' END FROM tblTransPurchaseHeader MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- CN,DN  
--SELECT case when TransID = 4 then 34 ELSE 35 END,case when TransID = 4 then 'Credit Note' ELSE 'Debit Note' END FROM tblNoteDetails MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- CONT  
--SELECT 36,'Contra' FROM tblTranContra MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- RV,PV  
--SELECT case when TransID = 6 then 37 ELSE 38 END,case when TransID = 6 then 'Payable Voucher' ELSE 'Receivable Voucher' END FROM tblTranPRVoucher MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- JE  
--SELECT 39,'Journal Entry' FROM tblFAJournal MH  
-- WHERE DocPrefix = 9 AND Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- OTHER COLL  
--SELECT 40,'Other Collection' FROM tblTranCollectionHeader MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--UNION ALL -- OTHER PAY  
--SELECT 41,'Other Payment' FROM tblTranPaymentHeader MH  
-- WHERE Status = 2 AND MH.Mby = (CASE WHEN @UserID = 0 THEN MH.MBy ELSE @UserID END) and  
--CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
) as rec  
GROUP BY FormID,FormName  
order by FormName  
select * from #tempForms where FormID = (CASE WHEN @FormID = 0 THEN FormID ELSE @FormID END)  
drop table #tempForms  
END  
ELSE IF(@Mode = 4)  
BEGIN  
set @FormID = @TableID  
IF(@FormID <= 25 or @FormID = 29)  
BEGIN  
select MH.ID,MIN(Name) Name,COUNT(Ident) nCount from tblMasterHistory MH  
WHERE MH.HisCBy = @UserID and FormID = @FormID and CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.ID  
END  
IF(@FormID = 26 OR @FormID = 27) -- customer,vendor  
BEGIN  
select MH.ID,MIN(Name) Name,COUNT(Ident) nCount from tblMasterCustomerVendorHistory MH  
WHERE MH.HisCBy = @UserID and FormID = @FormID and CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.ID  
END  
IF(@FormID = 28) -- product  
BEGIN  
select MH.ID,MIN(Name) Name,COUNT(IdentID) nCount from tblMasterProductHistory MH  
WHERE MH.HisCBy = @UserID and FormID = @FormID and CONVERT(DATE,MH.HisCDate) BETWEEN @FromDate AND @ToDate  
GROUP BY MH.ID  
END  
--IF(@FormID = 30) -- AI  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblTransAutomaticIndentHeader MH  
--WHERE Status = 2 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 31) -- PO  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblPurchaseOrderHeader MH  
--WHERE Status = 2 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 32 OR @FormID = 33) -- BILL,PR  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblTransPurchaseHeader MH  
--WHERE Status = 2 AND TransID = (CASE WHEN @FormID = 32 THEN 1 ELSE 12 END) AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 34 OR @FormID = 35) -- CN,DN  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblNoteDetails MH  
--WHERE Status = 2 AND TransID = (CASE WHEN @FormID = 34 THEN 4 ELSE 5 END) AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 36) -- CONT  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblTranContra MH  
--WHERE Status = 2 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 37 OR @FormID = 38) -- PV,RV  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ID) nCount FROM tblTranPRVoucher MH  
--WHERE Status = 2 AND TransID = (CASE WHEN @FormID = 37 THEN 6 ELSE 7 END) AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 39) -- JE  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(NoteID) nCount FROM tblFAJournal MH  
--WHERE Status = 2 AND DocPrefix = 9 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 40) -- OT COLL  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(ColID) nCount FROM tblTranCollectionHeader MH  
--WHERE Status = 2 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
--IF(@FormID = 41) -- OT PAY  
--BEGIN  
--SELECT DocValue,DocID Name,COUNT(PYID) nCount FROM tblTranPaymentHeader MH  
--WHERE Status = 2 AND MH.Mby = @UserID and CONVERT(DATE,MH.MDATE) BETWEEN @FromDate AND @ToDate  
--GROUP BY DocValue,DocID  
--END  
END  
ELSE IF(@Mode = 5)  
BEGIN  
PRINT 'MODE 5'  
set @FormID = @TableID  
declare @TableName nvarchar(255),@FormType INT  
select @TableName = TableName,@FormType = FormType from tblTablesNames where ID = @FormID  
--select * from tblMasterCreditTerm  
IF(@FormType = 1)  
BEGIN  
SET @strQuery = ' SELECT ID,Name,Active,[Created By],[Created Date],[Modified By],[Modified Date] FROM (  
SELECT 1 IDX,MH.ID,Name,CASE WHEN MH.Active = 1 THEN ''YES'' else ''NO'' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MH.CDATE) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MH.MDATE) [Modified Date],Ident  
FROM tblMasterHistory MH  
JOIN tblUsers MUC ON MUC.ID = MH.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MH.Mby  
WHERE FormID = '+convert(nvarchar,@FormID)+' and MH.ID = '+convert(nvarchar,@ID)+' AND MH.HisCBy = '+convert(nvarchar,@UserID)+  
' AND CONVERT(DATE,MH.HisCDate) BETWEEN '''+convert(nvarchar,@FromDate)+''' AND '''+convert(nvarchar,@ToDate )+'''  
UNION ALL  
SELECT 2,MH.ID,Name,CASE WHEN MH.Active = 1 THEN ''YES'' else ''NO'' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MH.CDATE) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MH.MDATE) [Modified Date],0  
FROM '+@TableName+' MH  
JOIN tblUsers MUC ON MUC.ID = MH.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MH.Mby WHERE MH.ID = '+convert(nvarchar,@ID)+') AS REC  
ORDER BY IDX,Ident '  
exec(@strQuery)  
END  
ELSE IF(@FormType = 2)  
BEGIN  
SET @strQuery = ' SELECT ID,Name,Value,Active,[Created By],[Created Date],[Modified By],[Modified Date] FROM (  
SELECT 1 IDX,MH.ID,Name,Column1 Value,CASE WHEN MH.Active = 1 THEN ''YES'' else ''NO'' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MH.CDATE) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MH.MDATE) [Modified Date],Ident  
FROM tblMasterHistory MH  
JOIN tblUsers MUC ON MUC.ID = MH.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MH.Mby  
WHERE FormID = '+convert(nvarchar,@FormID)+' and MH.ID = '+convert(nvarchar,@ID)+' AND MH.HisCBy = '+convert(nvarchar,@UserID)+  
' AND CONVERT(DATE,MH.HisCDate) BETWEEN '''+convert(nvarchar,@FromDate)+''' AND '''+convert(nvarchar,@ToDate )+'''  
UNION ALL  
SELECT 2,MH.ID,Name,Value,CASE WHEN MH.Active = 1 THEN ''YES'' else ''NO'' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MH.CDATE) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MH.MDATE) [Modified Date],0  
FROM '+@TableName+' MH  
JOIN tblUsers MUC ON MUC.ID = MH.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MH.Mby WHERE MH.ID = '+convert(nvarchar,@ID)+') AS REC  
ORDER BY IDX,Ident '  
exec(@strQuery)  
END  
ELSE IF(@FormID = 18)-- service  
BEGIN  
SELECT * INTO #MSERV FROM (  
SELECT 1 IDX,MS.ID,Name,TaxName Tax,column2 [SAC Code],dbo.fnGetRoundedValue(Column3) [Inward Price],dbo.fnGetRoundedValue(Column4) [Outward Price],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident  
FROM tblMasterHistory MS  
JOIN tblMasterTax MT ON MT.TaxID = MS.Column1  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,Name,TaxName Tax,SACCode [SAC Code],dbo.fnGetRoundedValue(Inwardprice) [Inward Price],dbo.fnGetRoundedValue(Outwardprice) [Outward Price],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterService MS  
JOIN tblMasterTax MT ON MT.TaxID = MS.TaxID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MSERV DROP COLUMN IDX,Ident  
SELECT * FROM #MSERV  
drop table #Mdata  
END  
ELSE IF(@FormID = 19)-- Vehicle  
BEGIN  
SELECT * INTO #MVEH FROM (  
SELECT 1 IDX,MS.ID,Name [Vehicle No],Column1 [Vehicle Namee],CONVERT(NVARCHAR(25),Column2,103) [DO Purchase],CONVERT(NVARCHAR(25),Column3,103) [Insurance Date],  
CONVERT(NVARCHAR(25),Column4,103) [Insurance Expire],CONVERT(NVARCHAR(25),Column5,103) [FC Date],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident  
FROM tblMasterHistory MS  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,MS.VehicleNo,MS.VehicleName,CONVERT(NVARCHAR(25),DOPurchase,103),CONVERT(NVARCHAR(25),InsuranceDate,103),  
CONVERT(NVARCHAR(25),InsuranceExpire,103),CONVERT(NVARCHAR(25),FCDate,103),  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterVehicle MS  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MVEH DROP COLUMN IDX,Ident  
SELECT * FROM #MVEH  
drop table #MVEH  
END  
ELSE IF(@FormID = 20)-- SALESMAN  
BEGIN  
--SELECT top 1* FROM tblMasterBranchOffice  
--SELECT top 1* FROM tblMasterHistory where FormID = 20
SELECT * INTO #MSALESMAN FROM (  
SELECT 1 IDX,MS.ID,MS.Name,CONVERT(NVARCHAR(25),Column1,103) DOB,CONVERT(NVARCHAR(25),Column2,103) DOJ,Column3 [Mobile No],Column4 [Aadhar No],  
Column5 [PAN No],Column6 Address,MT.Name [SalesMan Group],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident  
FROM tblMasterHistory MS  
LEFT JOIN tblMasterSalesmanGroup MT ON MT.ID = MS.Column7  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,MS.Name,CONVERT(NVARCHAR(25),DOB,103),CONVERT(NVARCHAR(25),DOJ,103),MobileNo,AadharNo,PANNumber,Address,MT.Name SMGrp,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterSalesman MS  
JOIN tblMasterSalesmanGroup MT ON MT.ID = MS.SalesmanGroupID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MSALESMAN DROP COLUMN IDX,Ident  
SELECT * FROM #MSALESMAN  
drop table #MSALESMAN  
END  
ELSE IF(@FormID = 21)-- Branch Office  
BEGIN  
--SELECT top 1* FROM tblMasterBranchOffice  
--SELECT top 1* FROM tblMasterHistory where FormID = 21  
SELECT * INTO #Mbo FROM (  
SELECT 1 IDX,MS.ID,MS.Column1 [Code],MS.Name,Column2 [Bill Add 1],Column3 [Bill Add 2],Column4 [Bill Add 3],Column5 [Contact Person],Column6 Ph1,Column7 Mob1,  
Column8 Email,MT.StateName [State Name],Column10 GSTIN,CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident  
FROM tblMasterHistory MS  
JOIN tblGSTStateNameandCode MT ON MT.StateID = Column9  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,MS.Code,MS.Name,Billadd1,Billadd2,Billadd3,ContactPerson,Ph1,Mob1,MS.Email,MT.StateName,GSTIN,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterBranchOffice MS  
JOIN tblGSTStateNameandCode MT ON MT.StateID = MS.StateID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #Mbo DROP COLUMN IDX,Ident  
SELECT * FROM #Mbo  
drop table #Mbo  
END  
ELSE IF(@FormID = 22)-- Bank Account  
BEGIN  
--SELECT top 1* FROM tblMasterBankAccount  
--SELECT top 1* FROM tblMasterHistory where FormID = 22  
SELECT * INTO #MBankAcc FROM (  
SELECT 1 IDX,MS.ID,MS.Name [Account No],Column1 [Account Name],MT.Name Bank,Column3 Branch,Column4 [IFSC Code],Column5 MICR,CASE WHEN Column7 = 1 THEN 'YES' else 'NO' End SetDefault,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident  
FROM tblMasterHistory MS  
JOIN tblMasterBank MT ON MT.ID = MS.Column2  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,AccountNo,AccountName,MT.Name Bank,BranchName,IFSCCode,MICR,CASE WHEN MS.SetDefault = 1 THEN 'YES' else 'NO' End SetDefault,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterBankAccount MS  
JOIN tblMasterBank MT ON MT.ID = MS.BankID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MBankAcc DROP COLUMN IDX,Ident  
SELECT * FROM #MBankAcc  
drop table #MBankAcc  
END  
ELSE IF(@FormID = 24)-- Fin Account  
BEGIN  
  
SELECT * INTO #MFA FROM (  
SELECT 1 IDX,MS.ID,Name [Account Name],MT.AccountGroupName [Account Group],dbo.fnGetRoundedValue(Column2) [Opening Balance],FAT.FAType,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident FROM tblMasterHistory MS  
JOIN tblFAGroup MT ON MT.FAGroup = MS.Column1  
JOIN tblFAType FAT ON FAT.FATypeID = MS.Column3  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.FAID,AccountName,MT.AccountGroupName,dbo.fnGetRoundedValue(OpeningBalance) OpeningBalance,FAT.FAType,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblFAAccount MS  
JOIN tblFAGroup MT ON MT.FAGroup = MS.AccountGroup  
JOIN tblFAType FAT ON FAT.FATypeID = MS.FATypeID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.FAID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MFA DROP COLUMN IDX,Ident  
SELECT * FROM #MFA  
drop table #MFA  
END  
ELSE IF(@FormID = 25)-- Fin Account GRP  
BEGIN  
SELECT * INTO #MFAG FROM (  
SELECT 1 IDX,MS.ID,Name [Account Group Name],MT.AccountGroupName [Parent Group],FAT.TypeName [Account Type],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident FROM tblMasterHistory MS  
LEFT JOIN tblFAGroup MT ON MT.FAGroup = MS.Column1  
JOIN tblAccountType FAT ON FAT.TypeID = MS.Column2  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.FAGroup,MS.AccountGroupName,MT.AccountGroupName par,FAT.TypeName,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblFAGroup MS  
LEFT JOIN tblFAGroup MT ON MT.FAGroup = MS.ParentGroup  
JOIN tblAccountType FAT ON FAT.TypeID = MS.TypeID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.FAGroup = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MFAG DROP COLUMN IDX,Ident  
SELECT * FROM #MFAG  
drop table #MFAG  
END  
ELSE IF(@FormID = 29)-- USER  
BEGIN  
SELECT * INTO #MUS FROM (  
SELECT 1 IDX,MS.ID,MS.Name [User Name],Column1 [Key],Column2 [Mobile No],Column3 [EMail ID],MT.Name [Role],  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident FROM tblMasterHistory MS  
LEFT JOIN tblMasterRole MT ON MT.ID = MS.Column4  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,MS.UserName,MS.Password,MS.Mobilenumber,MS.EMailID,MT.Name Roles,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblUsers MS  
LEFT JOIN tblMasterRole MT ON MT.ID = MS.RoleID  
LEFT JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID ) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MUS DROP COLUMN IDX,Ident  
SELECT * FROM #MUS  
drop table #MUS  
END  
ELSE IF(@FormID = 26)-- Customer  
BEGIN  
SELECT * INTO #MCUST FROM (  
SELECT 1 IDX,MS.ID,Code,MS.Name,Billadd1,Billadd2, Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,  
PANNumber,AadharNo,DLNo20,DLNo21,FSSAINo,GST.StateName [State],GSTIN,CRT.Name [Credit Term],PM.PaymentMode [Payment Mode],MTT.TaxTypeName [Tax Type],  
OSValue,FAID,OverDueValue,OverDueInvCount,CreditLimitValue,CreditLimitCount,CreditlimitOS,PT.PriceType,OwnerName,DiscountPern,TrackPoint,ClosingTrackPoint,  
TCSTax,Latitude,Longtitude,Distance,Remark,CUT.Name [Customer Type],RT.RatingName Rating,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident FROM tblMasterCustomerVendorHistory MS  
LEFT JOIN tblGSTStateNameandCode GST ON GST.StateID = MS.StateID  
LEFT JOIN tblMasterCreditTerm CRT ON CRT.ID = MS.CreditTermID  
LEFT JOIN tblPaymentMode PM ON PM.ID = MS.PaymentModeID  
LEFT JOIN tblMasterTaxType MTT ON MTT.TaxTypeID = MS.TaxTypeID  
LEFT JOIN tblMasterCustomerType CUT ON CUT.ID = MS.CustomerType  
LEFT JOIN tblRatings RT ON RT.ID = MS.Rating  
LEFT JOIN tblPriceType PT ON PT.ID = MS.PriceTypeWeekCycle  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2,MS.ID,Code,MS.Name,Billadd1,Billadd2, Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,  
PANNumber,AadharNo,DLNo20,DLNo21,FSSAINo,GST.StateName [State],GSTIN,CRT.Name [Credit Term],PM.PaymentMode [Payment Mode],MTT.TaxTypeName [Tax Type],  
OSValue,FAID,OverDueValue,OverDueInvCount,CreditLimitValue,CreditLimitCount,CreditlimitOS,PT.PriceType,OwnerName,DiscountPern,TrackPoint,ClosingTrackPoint,  
TCSTax,Latitude,Longtitude,Distance,Remark,CUT.Name [Customer Type],RT.RatingName Rating,  
CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0 FROM tblMasterCustomer MS  
LEFT JOIN tblGSTStateNameandCode GST ON GST.StateID = MS.StateID  
LEFT JOIN tblMasterCreditTerm CRT ON CRT.ID = MS.CreditTermID  
LEFT JOIN tblPaymentMode PM ON PM.ID = MS.PaymentModeID  
LEFT JOIN tblMasterTaxType MTT ON MTT.TaxTypeID = MS.TaxTypeID  
LEFT JOIN tblMasterCustomerType CUT ON CUT.ID = MS.CustomerType  
LEFT JOIN tblRatings RT ON RT.ID = MS.Rating  
LEFT JOIN tblPriceType PT ON PT.ID = MS.PriceTypeID  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID  
) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MCUST DROP COLUMN IDX,Ident  
SELECT * FROM #MCUST  
drop table #MCUST  
END  
ELSE IF(@FormID = 27)-- Vendor  
BEGIN  
--SELECT top 1* FROM tblMasterVendor  
--SELECT top 1* FROM tblMasterCustomerVendorHistory where FormID = 27  
SELECT * INTO #MVEND FROM (  
SELECT 1 IDX,MS.ID,Code,MS.Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,  
DLNo20,DLNo21,FSSAINo,GST.StateName [State],GSTIN,CRT.Name [Credit Term],PM.PaymentMode [Payment Mode],MTT.TaxTypeName [Tax Type],  
OSValue,RT.RatingName Rating,CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],Ident FROM tblMasterCustomerVendorHistory MS  
LEFT JOIN tblGSTStateNameandCode GST ON GST.StateID = MS.StateID  
LEFT JOIN tblMasterCreditTerm CRT ON CRT.ID = MS.CreditTermID  
LEFT JOIN tblPaymentMode PM ON PM.ID = MS.PaymentModeID  
LEFT JOIN tblMasterTaxType MTT ON MTT.TaxTypeID = MS.TaxTypeID  
LEFT JOIN tblRatings RT ON RT.ID = MS.Rating  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby  
WHERE FormID = @FormID AND MS.HisCBy = @UserID and MS.ID = @ID AND CONVERT(DATE,MS.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
select 2,MS.ID,Code,MS.Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,  
DLNo20,DLNo21,FSSAINo,GST.StateName [State],GSTIN,CRT.Name [Credit Term],PM.PaymentMode [Payment Mode],MTT.TaxTypeName [Tax Type],  
OSValue,RT.RatingName Rating,CASE WHEN MS.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MS.MDate) [Modified Date],0  
from tblMasterVendor MS  
LEFT JOIN tblGSTStateNameandCode GST ON GST.StateID = MS.StateID  
LEFT JOIN tblMasterCreditTerm CRT ON CRT.ID = MS.CreditTermID  
LEFT JOIN tblPaymentMode PM ON PM.ID = MS.PaymentModeID  
LEFT JOIN tblMasterTaxType MTT ON MTT.TaxTypeID = MS.TaxTypeID  
LEFT JOIN tblRatings RT ON RT.ID = MS.Rating  
JOIN tblUsers MUC ON MUC.ID = MS.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.Mby WHERE MS.ID = @ID) AS REC ORDER BY IDX,Ident  
ALTER TABLE #MVEND DROP COLUMN IDX,Ident  
SELECT * FROM #MVEND  
drop table #MVEND  
END  
ELSE IF(@FormID = 28)-- Product  
BEGIN  
PRINT 'PRODUCT'  
SELECT * INTO #Mprod FROM (  
SELECT 1 IDX,MP.ID,MP.Code,MP.Name,EAN,MF.Name Mfr,MB.Name Brand,MB.Name Category,HSNCode,ProductDiscPerc,BUOM.Name BaseUom,BaseCR,PUOM.Name PurchaseUom,  
PurchaseCR,SUOM.Name SalesUom,SalesCR,RUOM.Name ReportingUom,ReportingCR,ReportingQty,PTAX.TaxName PurchaseTax,STAX.TaxName SalesTax,  
PurchasePrice,SalesPrice,ECP,SPLPrice,MRP,ReturnPrice,CASE WHEN MP.TrackInventory = 1 THEN 'YES' else 'NO' End TrackInventory,  
CASE WHEN MP.TrackBatch = 1 THEN 'YES' else 'NO' End TrackBatch,CASE WHEN MP.TrackSerial = 1 THEN 'YES' else 'NO' End TrackSerial,  
CASE WHEN MP.TrackPDK = 1 THEN 'YES' else 'NO' End TrackPDK,CASE WHEN MP.DateFormat = 1 THEN 'DMY' else 'MY' End DateFormat,BARUOM.Name BarcodeUom,  
PTY.PriceType BarcodePriceD,MV.Name Vendor,MOH,MOQ,Remarks,ML.Name Location,CASE WHEN MP.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MP.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MP.MDate) [Modified Date],IdentID  
FROM tblMasterProductHistory MP  
JOIN tblMasterManufacturer MF ON MF.ID = MP.MfrID  
JOIN tblMasterBrand MB ON MB.ID = MP.BrandID  
JOIN tblMasterCategory MC ON MC.ID = MP.CategoryID  
JOIN tblMasterUOM BUOM ON BUOM.ID = MP.BaseUomID  
JOIN tblMasterUOM PUOM ON PUOM.ID = MP.PurchaseUomID  
JOIN tblMasterUOM SUOM ON SUOM.ID = MP.SalesUomID  
JOIN tblMasterUOM RUOM ON RUOM.ID = MP.ReportingUomID  
JOIN tblMasterTax PTAX ON PTAX.TaxID = MP.PurchaseTaxID  
JOIN tblMasterTax STAX ON STAX.TaxID = MP.SalesTaxID  
LEFT JOIN tblMasterUOM BARUOM ON BARUOM.ID = MP.BarcodeUomID  
LEFT JOIN tblPriceType PTY ON PTY.ID = MP.BarcodePriceID  
LEFT JOIN tblMasterVendor MV ON MV.ID = MP.VendorID  
LEFT JOIN tblMasterLocation ML ON ML.ID = MP.LocationID  
JOIN tblUsers MUC ON MUC.ID = MP.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MP.Mby  
WHERE FormID = @FormID AND MP.HisCBy = @UserID and MP.ID = @ID AND CONVERT(DATE,MP.HisCDate) BETWEEN @FromDate and @ToDate  
UNION ALL  
SELECT 2 IDX,MP.ID,MP.Code,MP.Name,EAN,MF.Name Mfr,MB.Name Brand,MB.Name Category,HSNCode,ProductDiscPerc,BUOM.Name BaseUom,BaseCR,PUOM.Name PurchaseUom,  
PurchaseCR,SUOM.Name SalesUom,SalesCR,RUOM.Name ReportingUom,ReportingCR,ReportingQty,PTAX.TaxName PurchaseTax,STAX.TaxName SalesTax,  
PurchasePrice,SalesPrice,ECP,SPLPrice,MRP,ReturnPrice,CASE WHEN MP.TrackInventory = 1 THEN 'YES' else 'NO' End TrackInventory,  
CASE WHEN MP.TrackBatch = 1 THEN 'YES' else 'NO' End TrackBatch,CASE WHEN MP.TrackSerial = 1 THEN 'YES' else 'NO' End TrackSerial,  
CASE WHEN MP.TrackPDK = 1 THEN 'YES' else 'NO' End TrackPDK,CASE WHEN MP.DateFormat = 1 THEN 'DMY' else 'MY' End DateFormat,BARUOM.Name BarcodeUom,  
PTY.PriceType BarcodePriceD,MV.Name Vendor,MOH,MOQ,Remarks,ML.Name Location,CASE WHEN MP.Active = 1 THEN 'YES' else 'NO' End Active,MUC.UserName [Created By],CONVERT(NVARCHAR,MP.CDate) [Created Date],  
MUM.UserName [Modified By],CONVERT(NVARCHAR,MP.MDate) [Modified Date],0 IdentID  
FROM tblMasterProduct MP  
JOIN tblMasterManufacturer MF ON MF.ID = MP.MfrID  
JOIN tblMasterBrand MB ON MB.ID = MP.BrandID  
JOIN tblMasterCategory MC ON MC.ID = MP.CategoryID  
JOIN tblMasterUOM BUOM ON BUOM.ID = MP.BaseUomID  
JOIN tblMasterUOM PUOM ON PUOM.ID = MP.PurchaseUomID  
JOIN tblMasterUOM SUOM ON SUOM.ID = MP.SalesUomID  
JOIN tblMasterUOM RUOM ON RUOM.ID = MP.ReportingUomID  
JOIN tblMasterTax PTAX ON PTAX.TaxID = MP.PurchaseTaxID  
JOIN tblMasterTax STAX ON STAX.TaxID = MP.SalesTaxID  
LEFT JOIN tblMasterUOM BARUOM ON BARUOM.ID = MP.BarcodeUomID  
LEFT JOIN tblPriceType PTY ON PTY.ID = MP.BarcodePriceID  
LEFT JOIN tblMasterVendor MV ON MV.ID = MP.VendorID  
LEFT JOIN tblMasterLocation ML ON ML.ID = MP.LocationID  
JOIN tblUsers MUC ON MUC.ID = MP.Cby  
LEFT JOIN tblUsers MUM ON MUM.ID = MP.Mby WHERE MP.ID = @ID  
) AS REC ORDER BY IDX,IdentID  
ALTER TABLE #Mprod DROP COLUMN IDX,IdentID  
SELECT * FROM #Mprod  
drop table #Mprod  
END  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetAutoIndentData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[uspGetSetAutoIndentData] 7,2,0,1,'','2024-11-10','2024-12-16',0
CREATE proc [dbo].[uspGetSetAutoIndentData]
@Mode INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@TransID int =2,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,
@ToDate date = null,@Showall int = null
AS
BEGIN
declare @AIOpenCount INT,@POOpenCount INT,@vid int,@strQuery NVARCHAR(MAX)
IF(@Mode = 1)
BEGIN
select 1 Type,'Vendor' Trans,ID,Code,Name from tblMasterVendor where Active = 1
union all
SELECT 2 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1
union all
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1
union all
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 2
order by Type,Name
END
IF(@Mode = 2)
BEGIN
SELECT * FROM tblMasterVendor WHERE Active = 1 AND Code = @Code ORDER BY Name
END
IF(@Mode = 21)
BEGIN
SELECT * FROM tblMasterVendor WHERE Active = 1 AND ID = @Code ORDER BY Name
END
IF(@Mode = 3)
BEGIN
--SELECT @POOpenCount = COUNT(PurchaseID) FROM tblPurchaseOrderHeader WHERE VendorID=@VendorID AND [Status] IN (1,3)
SET @POOpenCount = 0
SELECT @AIOpenCount = COUNT(ID) FROM tblTransAutomaticIndentHeader WHERE VendorID=@Code AND [Status] IN (1,3)

SELECT MP.ID,MP.Code,MP.Name,dbo.fnGetRoundedValue(MP.PurchasePrice) Price,dbo.fnGetRoundedValue(sum(ISNULL(PV.ActualQty,0))) ABSQty,
mp.BaseUomID,MU.Name BaseUOM,0.00 CustStkReq,MP.MOH,MP.MOQ,@AIOpenCount AIOpen,@POOpenCount POopen
FROM tblMasterProduct MP
LEFT JOIN tblProductInventory PV ON PV.ProdID = MP.ID
join tblMasterUOM MU ON MU.ID = MP.BaseUomID
WHERE VendorID = @Code AND MP.Active = 1
group by MP.ID,MP.Code,MP.Name,MP.PurchasePrice,mp.BaseUomID,MU.Name,MP.MOH,MP.MOQ
END
IF(@Mode = 4)
BEGIN
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(ISNULL(SUM(PD.IndentValue),0)) IndentValue,
--STS.Description Status FROM tblTransAutomaticIndentHeader PH
--LEFT JOIN tblTransAutomaticIndentDetail PD ON PD.HID = PH.ID
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
--JOIN tblStatus STS ON STS.ID = PH.Status
--JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID
--GROUP BY PH.ID,DocID,Date,RefNo,MBO.Name,MV.Name,STS.Description,DocValue
--ORDER BY DocValue DESC,PH.ID

SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,
dbo.fnGetRoundedValue(ISNULL(SUM(PD.IndentValue),0)) IndentValue,STS.Description Status
FROM tblTransAutomaticIndentHeader PH
LEFT JOIN tblTransAutomaticIndentDetail PD ON PD.HID = PH.ID
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
JOIN tblStatus STS ON STS.ID = PH.Status
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) '
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END
SET @strQuery += ' GROUP BY PH.ID,DocID,Date,RefNo,MBO.Name,MV.Name,STS.Description,DocValue ORDER BY DocValue DESC,PH.ID '
exec(@strQuery)

END
IF(@Mode = 5)
BEGIN
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo,
PH.Status, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.Remarks, PH.Narration,PoID
FROM tblTransAutomaticIndentHeader PH
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
JOIN tblStatus STS ON STS.ID = PH.Status
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID
where PH.ID = @ID
END
IF(@Mode = 6)
BEGIN
select @vid = VendorID from tblTransAutomaticIndentHeader WHERE ID = @ID
SET @POOpenCount = 0
SELECT @AIOpenCount = COUNT(ID) FROM tblTransAutomaticIndentHeader WHERE VendorID=@vid AND [Status] IN (1,3)
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,UOM.Name UOM,DBO.fnGetRoundedValue(PD.PurchasePrice) PurchasePrice,
DBO.fnGetRoundedValue(ABSQty) ABSQty,PD.MOH,PD.MOQ,IndentValue,0.00 CustStkReq,@AIOpenCount AIOpen,@POOpenCount POopen
FROM tblTransAutomaticIndentDetail PD
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID
where PD.HID = @ID
ORDER BY Serial
END

IF(@Mode = 7)--Draft
BEGIN
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,0 IndentValue,
--STS.Description Status FROM tblPurchaseDraftHeader PH
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
--JOIN tblStatus STS ON STS.ID = PH.Status
--left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID
--WHERE Status = 1 AND TransID = 2
--ORDER BY PH.ID DESC,Date

SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,0 IndentValue,
STS.Description Status FROM tblPurchaseDraftHeader PH
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
JOIN tblStatus STS ON STS.ID = PH.Status
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and PH.TransID = ' + CONVERT(NVARCHAR,@TransID)
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END
SET @strQuery += ' ORDER BY PH.ID DESC,Date '
exec(@strQuery)

END
IF(@Mode = 8)
BEGIN
declare @currDocid nvarchar(255) = (SELECT DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 2)
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, @currDocid DocID, PH.DocValue, PH.VendorID, PH.RefNo,
PH.Status, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.Remarks, PH.Narration
FROM tblPurchaseDraftHeader PH
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
JOIN tblStatus STS ON STS.ID = PH.Status
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID
where PH.ID = @ID
END
IF(@Mode = 9)
BEGIN
select @vid = VendorID from tblTransAutomaticIndentHeader WHERE ID = @ID
SET @POOpenCount = 0
SELECT @AIOpenCount = COUNT(ID) FROM tblTransAutomaticIndentHeader WHERE VendorID=@vid AND [Status] IN (1,3)
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,UOM.Name UOM,DBO.fnGetRoundedValue(PD.PurchasePrice) PurchasePrice,
DBO.fnGetRoundedValue(SalePrice) ABSQty,convert(int,UomFreeQty)MOH,convert(int,UomDamageQty)MOQ,
convert(int,PD.UomQty) IndentValue,0.00 CustStkReq,@AIOpenCount AIOpen,@POOpenCount POopen
FROM tblPurchaseDraftDetail PD
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID
where PD.HID = @ID
ORDER BY Serial
END
IF(@Mode = 10)
BEGIN
DECLARE @DraftID INT
SELECT @DraftID = ID FROM tblPurchaseDraftHeader WHERE ID = @ID AND TransID = 2
DELETE tblPurchaseDraftHeader WHERE ID = @DraftID
DELETE tblPurchaseDraftDetail WHERE HID = @DraftID
END
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetContraData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetContraData 2,8,'',0,'','2024-11-10','2024-12-16',1 
CREATE proc [dbo].[uspGetSetContraData]                                                    
@Mode INT,@TransID INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS                                                    
BEGIN              
BEGIN TRY
declare @strQuery NVARCHAR(MAX)  
IF(@Mode = 1)                                                    
BEGIN                
select 1 Type,'BankAccNo' Trans,MBA.FAID,'1' Code,AccountNo+'|'+MB.Name+'|'+BranchName+'|'+IFSCCode+'|'+MICR  Name from tblMasterBankAccount MBA        
JOIN tblMasterBank MB ON MB.ID = MBA.BankID where MBA.Active = 1 AND FAID > 0       
union all                                                    
SELECT 2 Type,'ContraType' Trans,ID,'' Code,TypeName Name from tblContraType  where Active = 1               
union all                                                    
SELECT 3 Type,'ContraMode' Trans,ID,'3' Code,ModeName Name from tblContraMode  where Active = 1 and ID IN (3,4,5,6)        
union all                                                    
SELECT 3 Type,'ContraMode' Trans,ID,'2' Code,ModeName Name from tblContraMode  where Active = 1 and ID IN (1,2)        
union all                                                    
SELECT 4 Type,'Salesman' Trans,ID,'' Code,Name from tblMasterSalesman  where Active = 1           
union all                                                                            
SELECT 5 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = @TransID                                         
union all                                                    
SELECT 6 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID                  
union all                                                    
SELECT 1 Type,'BranchOffice' Trans,FAID,'4' Code,Name from tblMasterBranchOffice  where Active = 1 and FAID > 0           
order by Type,Name                                                    
END                
IF(@Mode = 2)                                                    
BEGIN                 
--SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,CT.TypeName,CM.ModeName,Party.AccountName as[Party Name] ,      
--FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.Amount) Gross,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status          
--FROM tblTranContra ND      
--LEFT join tblContraMode CM ON CM.ID = ND.ModeID      
--join tblContraType CT ON CT.ID = ND.TypeID      
--JOIN tblStatus ST ON ST.ID=ND.[Status]             
--JOIN tblFAAccount Party ON ND.FromFAID=Party.FAID      
--left JOIN tblFAAccount FAA ON ND.ToFAID=FAA.FAID      
--ORDER BY ND.DocValue desc,ND.ID

SET @strQuery = 'SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,CT.TypeName,CM.ModeName,Party.AccountName as[Party Name] ,      
FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.Amount) Gross,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status          
FROM tblTranContra ND      
LEFT join tblContraMode CM ON CM.ID = ND.ModeID      
join tblContraType CT ON CT.ID = ND.TypeID      
JOIN tblStatus ST ON ST.ID=ND.[Status]             
JOIN tblFAAccount Party ON ND.FromFAID=Party.FAID      
left JOIN tblFAAccount FAA ON ND.ToFAID=FAA.FAID   WHERE  ND.TransID = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END        
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '0' THEN '' ELSE ' AND ND.FromFAID = '+''''+@AccountName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END       
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.ID'    
exec(@strQuery) 

END              
IF(@Mode = 3)                                                    
BEGIN                
SELECT ID,DocID,TransID,DocValue,DocDate,TypeID,ModeID,RefNo,Amount,Balance,      
CASE WHEN TypeID  = 1 THEN ToFAID ELSE FromFAID END FromFAID,       
WDSlipNo,ChequeNo,ChequeNumberWithRef,      
SalesManID,CASE WHEN TypeID  = 3 THEN ToFAID ELSE 0 END ToFAID,Remarks,Narration,UDFID,      
Status FROM tblTranContra ND       
WHERE ND.ID = @ID              
END      
IF(@Mode = 4)                                                    
BEGIN     
declare @sts as table(Sts int)  
if(isnull(@Code,0) = 0)  
begin  
insert into @sts values(1)  
end  
else  
begin  
insert into @sts values(1),(5)  
end  
SELECT 1 Type,'ChequeBook' Trans,CBD.ChequeNo ID,ChequeBookreferNo Code,CBH.ChequeBookreferNo+' - '+CBD.ChequeNo Name  
FROM tblMasterChequeBook CBH    
JOIN tblMasterChequeBookDetail CBD ON CBD.ChequeBookID = CBH.ChequeBookID    
join tblMasterBankAccount MBA ON MBA.ID = CBH.BankAccountID    
WHERE MBA.FAID = @ID and CBD.Status in (select * from @sts)    
END    
END TRY    
BEGIN CATCH              
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE              
END CATCH              
END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetCreditDebitNoteData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetCreditDebitNoteData 2,5,0,'','','2024-11-10','2024-12-16',1  
CREATE proc [dbo].[uspGetSetCreditDebitNoteData]                                              
@Mode INT,@TransID INT,@ID NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,  
@ToDate date = null,@Showall int = null  
AS                                              
BEGIN        
BEGIN TRY
declare @strQuery NVARCHAR(MAX)  
IF(@Mode = 1)                                              
BEGIN          
--7,8,10,11          
select 1 Type,'PartyName' Trans,FAID ID,'' Code,AccountName Name from tblFAAccount  where Active = 1 and AccountGroup IN (44,2,25,3,29,6,12,13,39,1,19,33,43,35,18,20)          
union all                                              
SELECT 2 Type,'AccountName' Trans,FAID ID,'' Code,[Account Name] Name from [FACNAccountNames]    
union all                                                                      
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = @TransID                                   
union all                                              
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID          
order by Type,Name                                              
END          
IF(@Mode = 2)                                              
BEGIN                   
--SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                       
--dbo.fnGetRoundedValue(ND.NoteValue) NoteValue,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description]        
--FROM tblNoteDetails ND           
--JOIN  tblDocumentSeries  DS ON ND.TransID=DS.TransID                                         
--JOIN tblStatus ST ON ST.ID=ND.[Status]                             
--JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                       
--JOIN tblFAAccount Party ON ND.PartyId=Party.FAID        
--WHERE ND.TransID = @TransID        
--ORDER BY ND.DocValue desc,ND.ID

SET @strQuery = 'SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                       
dbo.fnGetRoundedValue(ND.NoteValue) NoteValue,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description]        
FROM tblNoteDetails ND           
JOIN  tblDocumentSeries  DS ON ND.TransID=DS.TransID                                         
JOIN tblStatus ST ON ST.ID=ND.[Status]                             
JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                       
JOIN tblFAAccount Party ON ND.PartyId=Party.FAID  WHERE  ND.TransID = ' + CONVERT(NVARCHAR,@TransID)  
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END      
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND Party.AccountName = '+''''+@Party +'''' END
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND FAA.AccountName = '+''''+@AccountName +'''' END
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END     
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.ID'  
exec(@strQuery)  

END        
IF(@Mode = 3)                                              
BEGIN          
SELECT ND.ID,ND.DocId,ND.DocDate,ND.DocValue, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                       
ND.NoteValue,ND.Balance ,ND.[Status],ND.Remark,ND.Narration        
FROM tblNoteDetails ND           
JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                       
JOIN tblFAAccount Party ON ND.PartyId=Party.FAID          
WHERE ND.ID = @ID        
END        
END TRY        
BEGIN CATCH        
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE        
END CATCH        
END 
GO
/****** Object:  StoredProcedure [dbo].[uspgetsetImportExport]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspgetsetImportExport]
@Mode INT,@TransID INT,@Name NVARCHAR(MAX) = NULL
AS
BEGIN
IF(@TransID = 3)-- PO
BEGIN
IF(@Mode = 1)
BEGIN
select PH.DocID [Doc ID],CONVERT(nvarchar,PH.DocDate,103) [Doc Date],BO.Name [Branch Name],MV.Name [Vendor Name],MP.Name [Item Name],dbo.fnGetRoundedValue(PD.PurchasePrice) Price,
dbo.fnGetRoundedValue(PD.Qty) Qty,MT.TaxName [Tax] from tblPurchaseOrderHeader PH
JOIN tblPurchaseOrderDetail PD ON PD.HID = PH.ID
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID
JOIN tblMasterBranchOffice BO ON BO.ID = PH.BranchID
WHERE Status IN (1,3,5)
order by DocValue
END
IF(@Mode = 2)
BEGIN
SELECT * FROM tblMasterVendor WHERE NAME = @Name
END
IF(@Mode = 3)
BEGIN
SELECT * FROM tblMasterProduct WHERE NAME = @Name
END
IF(@Mode = 4)
BEGIN
SELECT * FROM tblMasterTax WHERE TaxName = @Name
END
IF(@Mode = 5)
BEGIN
SELECT * FROM tblMasterBranchOffice WHERE Name = @Name
END
END
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetInventoryAdjustmentData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetInventoryAdjustmentData 2,1,0,13,'7','2024-12-25','2024-12-26',0    
CREATE proc [dbo].[uspGetSetInventoryAdjustmentData]    
@Mode INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@TransID int =13,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS    
BEGIN    
declare @strQuery NVARCHAR(MAX)    
IF(@Mode = 1)    
BEGIN    
SELECT 1 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1    
union all    
SELECT 2 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1    
union all    
SELECT 3 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 13    
order by Type,Name    
END    
IF(@Mode = 2)    
BEGIN    
CREATE TABLE #ABS(ProdID INT,ABSQty DECIMAL(25,4))    
IF(@Code = 1)    
BEGIN    
INSERT INTO #ABS    
SELECT ProdID,dbo.fnGetRoundedValue(SUM(ActualQty)) ABSQty FROM tblProductInventory 
WHERE BranchID = @Party AND TransDate <= @FromDate AND (ActualQty > 0 OR ActualDmgQty > 0 OR ActualFreeQty > 0)    
GROUP BY ProdID   
SELECT MP.*,dbo.fnGetRoundedValue(ISNULL(AB.ABSQty,0)) ABSQty FROM tblMasterProduct MP    
JOIN #ABS AB ON AB.ProdID = MP.ID    
WHERE Active = 1 AND TrackInventory = 1 ORDER BY Name   
END    
ELSE    
BEGIN    
INSERT INTO #ABS    
SELECT ProdID,dbo.fnGetRoundedValue(SUM(ActualQty)) ABSQty FROM tblProductInventory WHERE BranchID = @Party AND TransDate <= @FromDate
GROUP BY ProdID    
SELECT MP.*,dbo.fnGetRoundedValue(ISNULL(AB.ABSQty,0)) ABSQty FROM tblMasterProduct MP    
left JOIN #ABS AB ON AB.ProdID = MP.ID    
WHERE Active = 1 AND TrackInventory = 1 ORDER BY Name   
END     
DROP TABLE #ABS    
END    
IF(@Mode = 3)    
BEGIN    
SELECT MP.ID,MP.Code,MP.Name,HSNCode,MP.BaseUomID,MP.BaseCR,MP.PurchaseUomID,MP.PurchaseCR,mp.PurchaseTaxID,MT.TaxName,MT.GST,
MP.ProductDiscPerc,MP.PurchasePrice,MP.SalesPrice,MP.ECP,MP.SPLPrice,MP.MRP,MP.ReturnPrice,TrackBatch,TrackPDK
FROM tblMasterProduct MP    
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID    
WHERE Code = @Code    
END    
IF(@Mode = 4)    
BEGIN    
IF ISNULL(@Code,0)=0    
BEGIn --All Batch Info    
SELECT ProdId,BatchNumber,CONVERT(NVARCHAR,PKDDate,103) AS PKDDate,CONVERT(NVARCHAR,ExpiryDate,103) AS ExpiryDate,ActualQty AS Qty , ActualFreeQty AS [FreeQty],ActualDmgQty AS [DmgQty] ,    
PurchasePrice,MRPONPrice MRP,TaxValue,TaxId,InventoryId,CONVERT(NVARCHAR,TransDate,103) AS DocDate    
FROM dbo.tblProductInventory    
WHERE ProdId = @ID AND TransDate <= @FromDate AND BranchID = @Party ORDER BY TransDate DESC    
END    
ELSE IF ISNULL(@Code,0)=1		
BEGIn--Valid Batch Only    
SELECT ProdId,BatchNumber,CONVERT(NVARCHAR,PKDDate,103) AS PKDDate,CONVERT(NVARCHAR,ExpiryDate,103) AS ExpiryDate,ActualQty AS Qty , ActualFreeQty AS [FreeQty],ActualDmgQty AS [DmgQty] ,    
PurchasePrice,MRPONPrice MRP,TaxValue,TaxId,InventoryId,CONVERT(NVARCHAR,TransDate,103) AS DocDate    
FROM dbo.tblProductInventory    
WHERE ProdId = @ID AND TransDate <= @FromDate AND BranchID = @Party AND (ISNULL(ActualQty,0)>0 OR ISNULL(ActualFreeQty,0)>0 OR ISNULL(ActualDmgQty,0) >0)    
ORDER BY TransDate DESC    
END    
END    
ELSE IF(@Mode = 41)    
BEGIN    
SELECT 0 InventoryId,ProdID,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,dbo.fnGetRoundedValue(SUM(ActualQty)) Qty,    
dbo.fnGetRoundedValue(SUM(ActualFreeQty)) FreeQty,dbo.fnGetRoundedValue(SUM(ActualDmgQty)) DmgQty,    
dbo.fnGetRoundedValue(PV.MRPONPrice) MRP,0 PurchasePrice,dbo.fnGetRoundedValue(PV.ReturnPrice) ReturnPrice    
FROM tblProductInventory PV    
WHERE pv.ProdID = @Code and (ActualQty > 0 OR ActualDmgQty > 0) and BranchID = @Party and TransDate <= @FromDate    
GROUP BY PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,PV.MRPONPrice,PV.ReturnPrice,ProdID    
END    
IF(@Mode = 5)    
BEGIN    
select mp.BaseUomID,MU.Name,BaseCR CR from tblMasterProduct mp    
JOIN tblMasterUOM MU ON MU.ID = mp.BaseUomID where MP.ID = @ID    
END    
IF(@Mode = 6)    
BEGIN    
SELECT MP.*,MT.GST FROM tblMasterProduct MP
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID WHERE ID = @Code    
END    
IF(@Mode = 7)    
BEGIN    
SET @strQuery = 'select PH.InventoryID ID,DocID,CONVERT(NVARCHAR,InventoryDate,103) DocDate,RefNo,MBO.Name Branch,dbo.fnGetRoundedValue(PH.TotalAmt) GrossAmt,    
STS.Description Status from tblInventoryHeader PH    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE TransID = 13 '    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND InventoryDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END    
SET @strQuery += ' ORDER BY DocValue desc,PH.InventoryID'    
exec(@strQuery)    
END    
IF(@Mode = 8)    
BEGIN    
SELECT * FROM tblInventoryHeader where InventoryID = @ID    
END    
IF(@Mode = 9)    
BEGIN    
SELECT PD.ProdID,MP.BaseUomID UomID,MT.GST TaxPern,MP.Code,MP.Name,sum(OrgQty) OrgQty,sum(OrgFreeQty) OrgFreeQty,sum(OrgDmgQty) OrgDmgQty,    
MU.Name UOMName,sum(ActualQty) ActualQty,sum(ActualFreeQty) ActualFreeQty,sum(ActualDmgQty) ActualDmgQty,    
GrossAmt FROM tblInventoryDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM MU ON MU.ID = MP.BaseUomID    
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID    
where InventoryID = @Code    
group by PD.ProdID,MP.BaseUomID ,MT.GST,MP.Code,MP.Name,GrossAmt,MU.Name    
END    
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetJournalEntryData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetJournalEntryData 2,9,'','0','','2024-11-10','2024-12-16',0            
CREATE proc [dbo].[uspGetSetJournalEntryData]                                                    
@Mode INT,@TransID INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS                                                    
BEGIN              
BEGIN TRY
declare @strQuery NVARCHAR(MAX)
IF(@Mode = 1)                                                    
BEGIN                
select 1 Type,'AccName' Trans,FAA.FAID,'' Code,AccountName as Name  FROM tblFAAccount FAA              
  JOIN tblFAGroup FAG ON FAG.FAGroup =FAA.AccountGroup AND FAG.UserGroup IN (0,1,2)               
  WHERE  FAA.Active =1                 
union all                                                    
SELECT 2 Type,'FAType' Trans,FATypeID,'' Code,FAType Name from tblFAType  where Active = 1                 
union all                                                                            
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = @TransID                                         
union all                                                    
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID                  
order by Type,Name                                                    
END                
IF(@Mode = 2)                                                    
BEGIN                 
--SELECT ND.JVID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.DocRef,Party.AccountName as[Party Name] ,      
--dbo.fnGetRoundedValue(ND.Credit) Credit,dbo.fnGetRoundedValue(ND.Debit) Debit,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status          
--FROM tblFAJournal ND      
--JOIN tblStatus ST ON ST.ID=ND.[Status]             
--JOIN tblFAAccount Party ON ND.AccountID=Party.FAID      
--where DocPrefix = @TransID    
--ORDER BY ND.DocValue desc,ND.JVID
  
SET @strQuery = 'SELECT ND.JVID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.DocRef,Party.AccountName as[Party Name] ,      
dbo.fnGetRoundedValue(ND.Credit) Credit,dbo.fnGetRoundedValue(ND.Debit) Debit,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status          
FROM tblFAJournal ND      
JOIN tblStatus ST ON ST.ID=ND.[Status]             
JOIN tblFAAccount Party ON ND.AccountID=Party.FAID   WHERE  ND.DocPrefix = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END        
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND Party.AccountName = '+''''+@AccountName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END       
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.JVID'    
exec(@strQuery)  
END              
IF(@Mode = 3)                                                    
BEGIN                
SELECT ND.JVID,ND.DocId,ND.DocDate, ND.DocRef,ND.AccountID,Party.AccountName as[Party Name] ,      
dbo.fnGetRoundedValue(ND.Credit) Credit,dbo.fnGetRoundedValue(ND.Debit) Debit,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status,    
ND.Remarks,ND.Narration,CASE WHEN Credit > 0 THEN 'Credit' ELSE 'Debit' END FAType,CASE WHEN Adjusment = 0 THEN 'No' ELSE 'Yes' END Adjusment    
FROM tblFAJournal ND      
JOIN tblStatus ST ON ST.ID=ND.[Status]             
JOIN tblFAAccount Party ON ND.AccountID=Party.FAID      
where DocPrefix = 9 and ND.JVID =@ID    
END      
END TRY              
BEGIN CATCH              
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE              
END CATCH              
END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetOtherCollPayData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetOtherCollPayData 2,10,'',0,'','','2024-11-10','2024-12-16',1    
CREATE proc [dbo].[uspGetSetOtherCollPayData]    
@Mode INT,@TransID INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS                                                        
BEGIN                  
BEGIN TRY     
declare @strQuery NVARCHAR(MAX) 
IF(@Mode = 1)                                                        
BEGIN                    
select 1 Type,'PartyName' Trans,FAID ID,'' Code,AccountName Name from tblFAAccount  where Active = 1 and AccountGroup IN (44,2,25,3,29,6,12,13,39,1,19,33,43,35,18,20)         
union all                                                    
--SELECT 2 Type,'ExpensesAccount' Trans,FAID ID,'' Code,AccountName Name from tblFAAccount  where Active = 1 and AccountGroup IN (7,8,10,11)          
SELECT 2 Type,'ExpensesAccount' Trans,FAID ID,'' Code,[Account Name] Name from [FACNAccountNames]      
union all                                                                                
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = @TransID                                             
union all                                                        
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID                      
union all              
SELECT 5 Type,'Paymode' Trans,ID,'' Code,PaymentMode from tblPaymentMode  where Active = 1 AND ID NOT IN (6,7,8,9,10)        
union all                                                    
SELECT 6 Type,'BTMode' Trans,ID,'' Code,ModeName from tblContraMode  where Active = 1 and ID IN (3,4,5,6)        
union all        
select 7 Type,'BankAccNo' Trans,MBA.ID,FAID Code,AccountNo+'|'+convert(nvarchar,MB.ID)+'|'+BranchName+'|'+IFSCCode+'|'+MICR+'|'+MB.Name  Name from tblMasterBankAccount MBA              
JOIN tblMasterBank MB ON MB.ID = MBA.BankID where MBA.Active = 1 AND FAID > 0    
union all                                                    
SELECT 8 Type,'Bank' Trans,ID,'' Code,Name from tblMasterBank  where Active = 1    
order by Type,Name                                                        
END                    
IF(@Mode = 2)                                                        
BEGIN      
--For Expenses , To Party For an Expenses(payment)      
if(@TransID = 10)      
BEGIN      
--SELECT ND.ColID,ND.DocId,convert(nvarchar(50),ND.ColDate,103) DocDate,CASE WHEN COLLType = 2 THEN 'For Income' ELSE 'From Party For an Income' END Type,      
--ND.ColDocRefNo,PM.PaymentMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.ColAmt) ColAmt,      
--dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status              
--FROM tblTranCollectionHeader ND          
--join tblPaymentMode PM ON PM.ID = ND.ColMode          
--JOIN tblStatus ST ON ST.ID=ND.[Status]                 
--left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
--left JOIN tblFAAccount FAA ON ND.ExpanceAcc=FAA.FAID          
--ORDER BY ND.DocValue desc,ND.ColID

SET @strQuery = 'SELECT ND.ColID,ND.DocId,convert(nvarchar(50),ND.ColDate,103) DocDate,CASE WHEN COLLType = 2 THEN ''For Income'' ELSE ''From Party For an Income'' END Type,      
ND.ColDocRefNo,PM.PaymentMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.ColAmt) ColAmt,      
dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status              
FROM tblTranCollectionHeader ND          
join tblPaymentMode PM ON PM.ID = ND.ColMode          
JOIN tblStatus ST ON ST.ID=ND.[Status]                 
left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
left JOIN tblFAAccount FAA ON ND.ExpanceAcc=FAA.FAID WHERE ND.DocPrefix = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND ColDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END        
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND Party.AccountName = '+''''+@Party +'''' END  
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND FAA.AccountName = '+''''+@AccountName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END       
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.ColID'    
exec(@strQuery)  

END      
ELSE      
BEGIN      
--SELECT ND.PYID,ND.DocId,convert(nvarchar(50),ND.PYDate,103) DocDate,CASE WHEN PYType = 2 THEN 'For Expenses' ELSE 'To Party For an Expenses' END Type,      
--ND.PYDocRefNo,PM.PaymentMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.PYAmt) ColAmt,      
--dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status              
--FROM tblTranPaymentHeader ND          
--join tblPaymentMode PM ON PM.ID = ND.PYMode          
--JOIN tblStatus ST ON ST.ID=ND.[Status]                 
--left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
--left JOIN tblFAAccount FAA ON ND.ExpanseAcc=FAA.FAID          
--ORDER BY ND.DocValue DESC,ND.PYID    

SET @strQuery = 'SELECT ND.PYID,ND.DocId,convert(nvarchar(50),ND.PYDate,103) DocDate,CASE WHEN PYType = 2 THEN ''For Expenses'' ELSE ''To Party For an Expenses'' END Type,      
ND.PYDocRefNo,PM.PaymentMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],dbo.fnGetRoundedValue(ND.PYAmt) ColAmt,      
dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status              
FROM tblTranPaymentHeader ND          
join tblPaymentMode PM ON PM.ID = ND.PYMode          
JOIN tblStatus ST ON ST.ID=ND.[Status]                 
left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
left JOIN tblFAAccount FAA ON ND.ExpanseAcc=FAA.FAID  WHERE ND.PYPrefix = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND PYDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END        
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND Party.AccountName = '+''''+@Party +'''' END  
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND FAA.AccountName = '+''''+@AccountName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END       
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.PYID'    
exec(@strQuery)

END      
END                  
IF(@Mode = 3)                                                        
BEGIN                    
if(@TransID = 10)      
BEGIN      
SELECT ND.ColID,ND.DocId,ND.ColDate,COLLType,ND.ColDocRefNo,ColMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],      
dbo.fnGetRoundedValue(ND.ColAmt) ColAmt,dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status,Remarks,Narration,UDFID,      
VisaAmt,VisaPern,BTMode      
FROM tblTranCollectionHeader ND           
JOIN tblStatus ST ON ST.ID=ND.[Status]                 
left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
left JOIN tblFAAccount FAA ON ND.ExpanceAcc=FAA.FAID         
WHERE ColID = @ID      
ORDER BY ND.DocValue,ND.ColID       
END      
ELSE      
BEGIN      
SELECT ND.PYID,ND.DocId,ND.PYDate,PYType,ND.PYDocRefNo,PYMode,Party.AccountName as[Party Name],FAA.AccountName as[Account Name],      
dbo.fnGetRoundedValue(ND.PYAmt) ColAmt,      
dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status,Remarks,Narration,UDFID,VisaAmt,VisaPern,BTMode      
FROM tblTranPaymentHeader ND          
JOIN tblStatus ST ON ST.ID=ND.[Status]                 
left JOIN tblFAAccount Party ON ND.AccID=Party.FAID          
left JOIN tblFAAccount FAA ON ND.ExpanseAcc=FAA.FAID          
WHERE PYID = @ID      
ORDER BY ND.DocValue,ND.PYID       
END      
END          
IF(@Mode = 4)                                                        
BEGIN         
declare @sts as table(Sts int)      
if(isnull(@Code,0) = 0)      
begin      
insert into @sts values(1)      
end      
else      
begin      
insert into @sts values(1),(5)      
end     
if(@TransID = 11)    
BEGIN    
SELECT 1 Type,'ChequeBook' Trans,CBD.ChequeNo ID,ChequeBookreferNo Code,CBH.ChequeBookreferNo+' - '+CBD.ChequeNo Name   FROM tblMasterChequeBook CBH        
JOIN tblMasterChequeBookDetail CBD ON CBD.ChequeBookID = CBH.ChequeBookID        
join tblMasterBankAccount MBA ON MBA.ID = CBH.BankAccountID        
WHERE MBA.ID = @ID and CBD.Status in (select * from @sts)      
END    
END      
IF(@Mode = 5)                                                        
BEGIN         
SELECT * FROM tblFAAccount WHERE AccountName = @Code      
END      
IF(@Mode = 6)      
BEGIN      
IF(@TransID = 10)      
BEGIN      
select  ColID, CollAmt,PaymentTermID,[Cheque/DD Number],isnull(MB.ID,0) BankAccID,NeftID,Date,PayAt,pm.IfscCode,pm.BankName,pm.BranchName,    
AmtRecd,Status,isnull(BankAccID,0)    
 from tblCollPMDetails pm    
 LEFT JOIN tblMasterBankAccount MB ON MB.FAID = BankAccID WHERE ColID = @ID      
END      
ELSE      
BEGIN      
select  PYID,PYAmt,PaymentTermID,[Cheque/DD Number],isnull(BankAccID,0)BankAccID,NeftID,Date,PayAt,    
pm.IfscCode,BankName,pm.BranchName,AmtRecd,Status from tblPaymentPMDetail pm    
 LEFT JOIN tblMasterBankAccount MB ON MB.FAID = BankAccID  WHERE PYID = @ID      
END      
END      
END TRY        
BEGIN CATCH                  
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE                  
END CATCH                  
END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetPurchaseData 2,7,0,1,'','2024-12-30','2024-12-16',0    
CREATE proc [dbo].[uspGetSetPurchaseData]    
@Mode INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@TransID int =1,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS    
BEGIN    
declare @strQuery NVARCHAR(MAX)    
IF(@Mode = 1)    
BEGIN    
select 1 Type,'Vendor' Trans,ID,Code,Name from tblMasterVendor where Active = 1 and FAID > 0    
union all    
SELECT 2 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1    
union all    
SELECT 3 Type,'Paymode' Trans,ID,'',PaymentMode FROM tblPaymentMode WHERE Active = 1    
union all    
SELECT 4 Type,'CreditTerm' Trans,ID,'',Name FROM tblMasterCreditTerm WHERE Active = 1    
union all    
SELECT 5 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1    
union all    
SELECT 6 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 1    
order by Type,Name    
END    
IF(@Mode = 2)    
BEGIN    
SELECT ProdID,SUM(ActualQty) ABSQty into #ABS FROM tblProductInventory WHERE BranchID = @Code AND (ActualQty > 0)    
AND TransDate <= @FromDate    
GROUP BY ProdID    
SELECT MP.*,dbo.fnGetRoundedValue(ISNULL(AB.ABSQty,0)) ABSQty FROM tblMasterProduct MP    
LEFT JOIN #ABS AB ON AB.ProdID = MP.ID    
WHERE Active = 1 AND TrackInventory = 1 ORDER BY Name    
drop table #ABS    
END    
IF(@Mode = 3)    
BEGIN    
SELECT * FROM tblMasterVendor WHERE Active = 1 AND Code = @Code ORDER BY Name    
END    
IF(@Mode = 31)    
BEGIN    
SELECT * FROM tblMasterVendor WHERE Active = 1 AND ID = @Code ORDER BY Name    
END    
IF(@Mode = 4)    
BEGIN    
SELECT *,0.00 ABSQty,MT.TaxName,MT.GST,MT.IGST FROM tblMasterProduct MP    
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID WHERE Code = @Code    
END    
IF(@Mode = 5)    
BEGIN    
select mp.BaseUomID,MU.Name,BaseCR CR from tblMasterProduct mp    
JOIN tblMasterUOM MU ON MU.ID = mp.BaseUomID where MP.ID = @ID    
UNION ALL    
select mp.PurchaseUomID,MU.Name,PurchaseCR from tblMasterProduct mp    
JOIN tblMasterUOM MU ON MU.ID = mp.PurchaseUomID where MP.ID = @ID    
END    
IF(@Mode = 6)--Bill Filter    
BEGIN    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
STS.Description Status FROM tblTransPurchaseHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and TransID = 1 '    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END    
SET @strQuery += ' ORDER BY DocValue desc,PH.ID'    
exec(@strQuery)    
END    
IF(@Mode = 7)    
BEGIN    
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo, PH.ProdGroupID,    
PH.TaxTypeID, PH.PaymentModeID, PH.PaymentTermID, PH.PaymentDate, PH.VehicleNo, PH.Frieght, PH.[OtherCharge%] OtherChrgPern,    
PH.OtherChargeAmt, PH.[ProdDisc%] ProdPern, PH.[TradeDisc%] TradePern, PH.[AddnlDisc%] AddnlPern, PH.TotalProdDiscAmt, PH.TotalTradeDiscAmt,    
PH.TotalAddnlDiscAmt, PH.WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, PH.Balance, PH.PymtID,    
PH.Status, PH.OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,    
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, PH.ReturnType, PH.TransactionType, PH.DateBill, PH.PortalDate,    
PH.TCSTaxPern, PH.TCSTaxAmt, PH.TDSAmount, PH.IRN, PH.AckNo, PH.AckDate, PH.AckStatus, PH.SignedQRCode,    
PH.EWBNo, PH.Distance, PH.TransMode, PH.VehicleType, PH.TransportID, PH.TransportName, PH.Remarks, PH.Narration    
FROM tblTransPurchaseHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
where PH.ID = @ID    
END    
IF(@Mode = 8)    
BEGIN    
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(UomQty) Qty,SUM(UomFreeQty) FreeQty,SUM(UomDamageQty) DmgQty,    
PD.[ProdDisc%] ProdPern,PD.[TradeDisc%] TradePern,PD.[AddnlDisc%] AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,    
MT.TaxName,PD.[Tax%] TaxPern ,SUM(GoodsAmt) GoodsAmt  
FROM tblTransPurchaseDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.[ProdDisc%],PD.[TradeDisc%],PD.[AddnlDisc%],Serial,MT.TaxName,PD.[Tax%]    
ORDER BY Serial    
END    
IF(@Mode = 9)    
BEGIN    
SELECT PD.*,MP.*,UOM.Name UOMName,MT.TaxName FROM tblTransPurchaseDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
ORDER BY Serial    
END    
IF(@Mode = 10)--Draft    
BEGIN    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
STS.Description Status FROM tblPurchaseDraftHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and PH.TransID = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END    
SET @strQuery += ' ORDER BY PH.ID DESC,Date '    
EXEC(@strQuery)    
END    
IF(@Mode = 11)    
BEGIN    
declare @currDocid nvarchar(255) = (SELECT DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 1)    
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, @currDocid DocID, PH.DocValue, PH.VendorID, PH.RefNo, PH.ProdGroupID,    
PH.TaxTypeID, PH.PaymentModeID, PH.PaymentTermID, PH.PaymentDate, PH.VehicleNo, PH.Frieght, PH.[OtherChargePern] OtherChrgPern,    
PH.OtherChargeAmt, PH.[ProdDiscPern] ProdPern, PH.[TradeDiscPern] TradePern, PH.[AddnlDiscPern] AddnlPern, PH.TotalProdDiscAmt, PH.TotalTradeDiscAmt,    
PH.TotalAddnlDiscAmt, PH.WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, PH.Balance, PH.PymtID,    
PH.Status, PH.OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,    
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, PH.ReturnType, PH.TransactionType, '' DateBill, '' PortalDate,    
PH.TCSTaxPern, PH.TCSTaxAmt, PH.TDSAmount, '' IRN, '' AckNo, '' AckDate, '' AckStatus, '' SignedQRCode,    
'' EWBNo,'' Distance, '' TransMode, '' VehicleType, '' TransportID, '' TransportName, PH.Remarks, PH.Narration    
FROM tblPurchaseDraftHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
LEFT JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
where PH.ID = @ID    
END    
IF(@Mode = 12)    
BEGIN    
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(UomQty) Qty,SUM(UomFreeQty) FreeQty,SUM(UomDamageQty) DmgQty,    
PD.[ProdDiscPern] ProdPern,PD.[TradeDiscPern] TradePern,PD.[AddnlDiscPern] AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,    
MT.TaxName,PD.TaxPern TaxPern,SUM(GoodsAmt) GoodsAmt    
FROM tblPurchaseDraftDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.[ProdDiscPern],PD.[TradeDiscPern],PD.[AddnlDiscPern],Serial,MT.TaxName,PD.TaxPern    
ORDER BY Serial    
END    
IF(@Mode = 13)    
BEGIN    
SELECT PD.*,MP.*,UOM.Name UOMName,MT.TaxName,0 InventoryId,1 TaxTypeID FROM tblPurchaseDraftDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
ORDER BY Serial    
END    
IF(@Mode = 14)    
BEGIN    
SELECT top 10 DocID,CONVERT(NVARCHAR(25),Date,103) DocDate,MRP,Qty,Uom,Price,ProdDiscPern+' / '+ProdDiscAmt ProdDisc,TradeDiscPern+' / '+TradeDiscAmt TradeDisc    
,AdnlDiscPern+' / '+AddnlDiscAmt TradeDisc FROM (    
SELECT PH.DocID,Date,dbo.fnGetRoundedValue(PD.UomMRP) MRP,dbo.fnGetRoundedValue(PD.UomQty) Qty,    
UOM.Name Uom,dbo.fnGetRoundedValue(PD.UomPurchasePrice) Price,    
dbo.fnGetRoundedValue(PD.[ProdDisc%]) ProdDiscPern,dbo.fnGetRoundedValue((PD.[ProdDisc%]* PD.GrossAmt) / 100) ProdDiscAmt,    
dbo.fnGetRoundedValue(PD.[TradeDisc%]) TradeDiscPern,dbo.fnGetRoundedValue((PD.[TradeDisc%]* PD.GrossAmt) / 100) TradeDiscAmt,    
dbo.fnGetRoundedValue(PD.[AddnlDisc%]) AdnlDiscPern,dbo.fnGetRoundedValue((PD.[AddnlDisc%]* PD.GrossAmt) / 100) AddnlDiscAmt    
FROM tblTransPurchaseHeader PH    
JOIN tblTransPurchaseDetail PD ON PD.HID = PH.ID    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
WHERE PH.VendorID = @Code AND PD.ProdID = @ID) AS REC    
END    
IF(@Mode = 15)    
BEGIN    
DECLARE @DraftID INT    
SELECT @DraftID = ID FROM tblPurchaseDraftHeader WHERE ID = @ID AND TransID = @TransID    
DELETE tblPurchaseDraftHeader WHERE ID = @DraftID    
DELETE tblPurchaseDraftDetail WHERE HID = @DraftID    
END    
IF(@Mode = 16)-- PO Data    
BEGIN    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,DocDate,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
STS.Description Status FROM tblPurchaseOrderHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE PH.TransID = 3 AND PH.Status in (1,3)'    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
--SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END    
SET @strQuery += ' ORDER BY PH.ID DESC,DocDate '    
EXEC(@strQuery)    
END    
IF(@Mode = 17)    
BEGIN    
SELECT PH.ID, PH.DocDate Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo, 0 ProdGroupID,    
PH.TaxTypeID, MV.PaymentModeID PaymentModeID, MV.CreditTermID PaymentTermID, null PaymentDate, null VehicleNo, 0 Frieght, 0 OtherChrgPern,    
0 OtherChargeAmt, 0 ProdPern, 0 TradePern, 0 AddnlPern, 0 TotalProdDiscAmt, 0 TotalTradeDiscAmt,    
0 TotalAddnlDiscAmt, 0 WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, 0 Balance, 0 PymtID,    
PH.Status, 0 OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,    
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, 0 ReturnType,null TransactionType,null DateBill,null PortalDate,    
null TCSTaxPern,null TCSTaxAmt,null TDSAmount, null IRN,null AckNo,null AckDate, null AckStatus,null SignedQRCode,    
null EWBNo, null Distance, null TransMode, null VehicleType, null TransportID, null TransportName, PH.Remarks, PH.Narration    
FROM tblPurchaseOrderHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
where PH.ID = @ID    
END    
IF(@Mode = 18)    
BEGIN    
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(Qty) Qty,0 FreeQty,0 DmgQty,MP.ProductDiscPerc ProdPern,0 TradePern,    
0 AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,MT.TaxName,PD.TaxPern TaxPern,SUM(GrossAmt) GoodsAmt    
FROM tblPurchaseOrderDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,ProductDiscPerc,Serial,MT.TaxName,PD.TaxPern    
ORDER BY Serial    
END    
IF(@Mode = 19)    
BEGIN    
SELECT PD.HID,0 InventoryId,PD.ProdID,PD.UomID,NULL BatchNo,NULL PKD,NULL Expiry,Qty UomQty,0 UomFreeQty,0 UomDamageQty,PD.PurchasePrice UomPurchasePrice,    
MP.SalesPrice UomSalePrice,MP.ECP UomECP,MP.MRP UomMRP,MP.SPLPrice UomSPLPrice,MP.ReturnPrice UomReturnPrice,PD.PurchasePrice,MP.SalesPrice SalePrice,    
MP.ECP,MP.MRP, MP.SPLPrice,MP.ReturnPrice,PD.TaxID,1 TaxTypeID,PD.TaxPern [Tax%],PD.GrossAmt GoodsAmt,MP.ProductDiscPerc [ProdDisc%],0 [TradeDisc%],    
0 [AddnlDisc%],PD.GrossAmt,PD.TaxAmt,PD.NetAmt,PD.Serial,0AdjQty,0 AdjFreeQty,0 AdjDmgQty,0 ReasonId,MP.*,UOM.Name UOMName,MT.TaxName    
FROM tblPurchaseOrderDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
ORDER BY Serial    
END    
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseOrderData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetPurchaseOrderData 6,3,1,0,'','2024-12-10','2024-12-16',0  
CREATE proc [dbo].[uspGetSetPurchaseOrderData]                                                      
@Mode INT,@TransID int =3,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,  
@ToDate date = null,@Showall int = null  
AS                                                      
BEGIN                    
declare @strQuery NVARCHAR(MAX)  
IF(@Mode = 1)                                                      
BEGIN                                                      
select 1 Type,'Vendor' Trans,ID,Code,Name from tblMasterVendor where Active = 1                                                      
union all                                                      
SELECT 2 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1                                                      
union all                                                                              
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1                                           
union all                                                      
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID                                             
order by Type,Name                                                      
END             
IF(@Mode = 2)                                    
BEGIN                                    
SELECT MP.ID,MP.Code,MP.Name,MP.EAN,HSNCode,      
case when @Code = 1 THEN dbo.fnGetRoundedValue(isnull(MP.PurchasePrice,0)) ELSE dbo.fnGetRoundedValue(isnull(MP.PurchasePrice / MP.PurchaseCR,0)) END PurchasePrice,      
dbo.fnGetRoundedValue(isnull(sum(ActualQty),0)) ABSQty         
FROM tblMasterProduct MP        
LEFT JOIN TBLProductInventory PV ON PV.ProdID = MP.ID        
WHERE Active = 1 GROUP BY MP.ID,MP.Code,MP.Name,MP.EAN,MP.PurchasePrice,HSNCode,MP.PurchaseCR ORDER BY Name                                   
END          
IF(@Mode = 3)                                                      
BEGIN                                                      
SELECT * FROM tblMasterVendor WHERE Active = 1 AND Code = @Code ORDER BY Name                                                      
END                                          
IF(@Mode = 31)                                                      
BEGIN                                                      
SELECT * FROM tblMasterVendor WHERE Active = 1 AND ID = @Code ORDER BY Name                                                      
END      
IF(@Mode = 4)                        
BEGIN           
IF(@Code = 1)      
BEGIN      
SELECT 1 Type,'Manuf' Trans,ID,''Code,Name FROM TBLMASTERMANUFACTURER WHERE ACTIVE = 1 ORDER BY NAME      
END      
IF(@Code = 2)      
BEGIN      
SELECT 1 Type,'Brand' Trans,ID,''Code,Name FROM TBLMASTERBRAND WHERE ACTIVE = 1 ORDER BY NAME      
END      
IF(@Code = 3)      
BEGIN      
SELECT 1 Type,'Category' Trans,ID,''Code,Name FROM TBLMASTERCATEGORY WHERE ACTIVE = 1 ORDER BY NAME      
END      
END      
IF(@Mode = 5)                                  
BEGIN      
DECLARE @ABS DECIMAL(25,2) = (SELECT ISNULL(SUM(ActualQty),0) FROM tblMasterProduct MP                                
LEFT JOIN TBLProductInventory PV ON PV.ProdID = MP.ID   WHERE  Code = @Code  )      
      
SELECT *,@ABS ABSQty,MT.TaxName,MT.GST,MT.IGST,BSUOM.Name BaseUOMName,PUUOM.Name PurchaseUOMName FROM tblMasterProduct MP                                
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID      
join tblMasterUOM BSUOM ON BSUOM.ID = MP.BaseUomID      
join tblMasterUOM PUUOM ON PUUOM.ID = MP.PurchaseUomID      
WHERE  Code = @Code    
END    
IF(@Mode = 6)                                
BEGIN                           
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,DocDate,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
--dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,STS.Description Status     
--FROM tblPurchaseOrderHeader PH    
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
--JOIN tblStatus STS ON STS.ID = PH.Status    
--JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
--ORDER BY DocValue DESC,PH.ID    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,DocDate,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,STS.Description Status     
FROM tblPurchaseOrderHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID  WHERE MV.Active IN (0,1) '  
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END      
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END      
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END      
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END     
SET @strQuery += ' ORDER BY DocValue DESC,PH.ID  '  
exec(@strQuery)  
END       
IF(@Mode = 7)                        
BEGIN                        
SELECT  PH.ID, PH.DocDate Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo,                          
PH.TaxTypeID, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt,                       
PH.Status,  PH.UDFId,  PH.CBy,PH.Remarks, PH.Narration    FROM tblPurchaseOrderHeader PH                          
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID                          
JOIN tblStatus STS ON STS.ID = PH.Status                          
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID                          
where PH.ID = @ID    
END                        
IF(@Mode = 8)                          
BEGIN                                                 
SELECT PD.ProdID,PD.UomID,PD.TaxID,MP.Code,MP.Name,UOM.Name UomName,Qty,pd.PurchasePrice Excl,(pd.PurchasePrice * (1 + (PD.TaxPern / 100))) Incl,    
GrossAmt,TaxAmt,NetAmt,MT.TaxName,PD.TaxPern    
FROM tblPurchaseOrderDetail PD                          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID                          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID                          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID                          
where PD.HID = @ID                        
       
ORDER BY Serial       
END                                                                                   
IF(@Mode = 9)--Draft                                    
BEGIN                                                 
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
--dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,STS.Description Status     
--FROM tblPurchaseDraftHeader PH    
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
--JOIN tblStatus STS ON STS.ID = PH.Status    
--left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
--WHERE Status = 1 AND TransID = 3     
--ORDER BY PH.ID DESC,Date            
  
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,STS.Description Status     
FROM tblPurchaseDraftHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID  WHERE MV.Active IN (0,1) and PH.TransID = ' + CONVERT(NVARCHAR,@TransID)
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END      
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END      
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END      
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END     
SET @strQuery += ' ORDER BY PH.ID DESC,Date   '  
exec(@strQuery)  
  
END                                         
IF(@Mode = 10)                                                      
BEGIN                                                 
declare @currDocid nvarchar(255) = (SELECT DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 3)     
SELECT  PH.ID, PH.Date Date, PH.TransID, PH.BranchID, @currDocid DocID, PH.DocValue, PH.VendorID, PH.RefNo,                          
PH.TaxTypeID, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt,                       
PH.Status,  PH.UDFId,  PH.CBy,PH.Remarks, PH.Narration    FROM tblPurchaseDraftHeader PH                          
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID                          
JOIN tblStatus STS ON STS.ID = PH.Status                          
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID                          
where PH.ID = @ID                                      
END                                                
IF(@Mode = 11)                                       
BEGIN                  
SELECT PD.ProdID,PD.UomID,PD.TaxID,MP.Code,MP.Name,UOM.Name UomName,UomQty Qty,pd.PurchasePrice Excl,(pd.PurchasePrice * (1 + (PD.TaxPern / 100))) Incl,    
GrossAmt,TaxAmt,NetAmt,MT.TaxName,PD.TaxPern    
FROM tblPurchaseDraftDetail PD                          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID                          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID                          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID                          
where PD.HID = @ID                                             
END                
IF(@Mode = 12)               
BEGIN                 
DECLARE @DraftID INT                
SELECT @DraftID = ID FROM tblPurchaseDraftHeader WHERE ID = @ID AND TransID = @TransID                
DELETE tblPurchaseDraftHeader WHERE ID = @DraftID                
DELETE tblPurchaseDraftDetail WHERE HID = @DraftID                
END   
END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetPurchaseReturnData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetPurchaseReturnData 9,80,80,12,'','2024-11-10','2024-12-26',0    
CREATE proc [dbo].[uspGetSetPurchaseReturnData]    
@Mode INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@TransID int =12,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS    
BEGIN    
declare @strQuery NVARCHAR(MAX)    
declare @ApplyReturnprice int = (select count(*) from tblRolePermissions where Role = 2 and PermissionFormId = 129 )
IF(@Mode = 1)    
BEGIN    
select 1 Type,'Vendor' Trans,ID,Code,Name from tblMasterVendor where Active = 1 and FAID > 0    
union all    
SELECT 2 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1    
union all    
SELECT 3 Type,'Paymode' Trans,ID,'',PaymentMode FROM tblPaymentMode WHERE Active = 1    
union all    
SELECT 4 Type,'CreditTerm' Trans,ID,'',Name FROM tblMasterCreditTerm WHERE Active = 1    
union all    
SELECT 5 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1    
union all    
SELECT 6 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 12    
order by Type,Name    
END    
IF(@Mode = 2)    
BEGIN    
SELECT ProdID,SUM(ActualQty) ABSQty into #ABS FROM tblProductInventory WHERE BranchID = @Code AND TransDate <= @FromDate AND    
(ActualQty > 0 OR ActualFreeQty > 0 OR ActualDmgQty > 0)    
    
GROUP BY ProdID    
SELECT MP.*,dbo.fnGetRoundedValue(ISNULL(AB.ABSQty,0)) ABSQty FROM tblMasterProduct MP    
JOIN #ABS AB ON AB.ProdID = MP.ID    
WHERE Active = 1 AND TrackInventory = 1 ORDER BY Name    
DROP TABLE #ABS    
END    
IF(@Mode = 3)    
BEGIN    
SELECT * FROM tblMasterVendor WHERE Active = 1 AND Code = @Code ORDER BY Name    
END    
IF(@Mode = 31)    
BEGIN    
SELECT * FROM tblMasterVendor WHERE Active = 1 AND ID = @Code ORDER BY Name    
END    
IF(@Mode = 4)    
BEGIN    
SELECT MP.ID,MP.Code,MP.Name,HSNCode,MP.BaseUomID,MP.BaseCR,MP.PurchaseUomID,MP.PurchaseCR,mp.PurchaseTaxID,MT.TaxName,MT.GST,MP.ProductDiscPerc    
FROM tblMasterProduct MP    
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID    
WHERE Code = @Code    
END    
ELSE IF(@Mode = 41)    
BEGIN    
--SELECT 0 InventoryId,ProdID,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,(SUM(ActualQty)) Qty,    
--(SUM(ActualFreeQty)) FreeQty,(SUM(ActualDmgQty)) DmgQty,    
--(PV.MRPONPrice) MRP,0 PurchasePrice,(PV.ReturnPrice) ReturnPrice    
--FROM tblProductInventory PV    
--WHERE pv.ProdID = @Code and (ActualQty > 0 OR ActualDmgQty > 0) and BranchID = @Party and TransDate <= @FromDate    
--GROUP BY PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,PV.MRPONPrice,PV.ReturnPrice,ProdID    
set @strQuery = ' SELECT 0 InventoryId,ProdID,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,(SUM(ActualQty)) Qty,    
(SUM(ActualFreeQty)) FreeQty,(SUM(ActualDmgQty)) DmgQty,(PV.MRPONPrice) MRP,0 PurchasePrice,'+(case when (convert(nvarchar,@ApplyReturnprice)) = '0' then  'PV.PurchasePrice ' else ' PV.ReturnPrice' end) +' ReturnPrice    
FROM tblProductInventory PV WHERE(ActualQty > 0 OR ActualFreeQty > 0 OR ActualDmgQty > 0) and pv.ProdID ='+convert(nvarchar,@Code)+' and BranchID = '+convert(nvarchar,@Party)+' and TransDate <= '+''''+convert(nvarchar,@FromDate)+''''+'  
GROUP BY PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,PV.MRPONPrice,'+(case when (convert(nvarchar,@ApplyReturnprice)) = '0' then  'PV.PurchasePrice ' else ' PV.ReturnPrice' end) +',ProdID '
exec(@strQuery)
END    
IF(@Mode = 5)    
BEGIN    
select mp.BaseUomID,MU.Name,BaseCR CR from tblMasterProduct mp    
JOIN tblMasterUOM MU ON MU.ID = mp.BaseUomID where MP.ID = @ID    
UNION ALL    
select mp.PurchaseUomID,MU.Name,PurchaseCR from tblMasterProduct mp    
JOIN tblMasterUOM MU ON MU.ID = mp.PurchaseUomID where MP.ID = @ID    
END    
IF(@Mode = 6)    
BEGIN    
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
--dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
--STS.Description Status FROM tblTransPurchaseHeader PH    
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
--JOIN tblStatus STS ON STS.ID = PH.Status    
--JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
--where PH.Status in (1,3,5)    
--ORDER BY DocValue desc,PH.ID    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
STS.Description Status FROM tblTransPurchaseHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and TransID = 12 '    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (3,5,6)' END    
SET @strQuery += ' ORDER BY DocValue desc,PH.ID'    
exec(@strQuery)    
END    
IF(@Mode = 7)    
BEGIN    
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo, PH.ProdGroupID,    
PH.TaxTypeID, PH.PaymentModeID, PH.PaymentTermID, PH.PaymentDate, PH.VehicleNo, PH.Frieght, PH.[OtherCharge%] OtherChrgPern,    
PH.OtherChargeAmt, PH.[ProdDisc%] ProdPern, PH.[TradeDisc%] TradePern, PH.[AddnlDisc%] AddnlPern, PH.TotalProdDiscAmt, PH.TotalTradeDiscAmt,    
PH.TotalAddnlDiscAmt, PH.WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, PH.Balance, PH.PymtID,    
PH.Status, PH.OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,    
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, PH.ReturnType, PH.TransactionType, PH.DateBill, PH.PortalDate,    
PH.TCSTaxPern, PH.TCSTaxAmt, PH.TDSAmount, PH.IRN, PH.AckNo, PH.AckDate, PH.AckStatus, PH.SignedQRCode,    
PH.EWBNo, PH.Distance, PH.TransMode, PH.VehicleType, PH.TransportID, PH.TransportName, PH.Remarks, PH.Narration    
FROM tblTransPurchaseHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
where PH.ID = @ID    
END    
IF(@Mode = 8)    
BEGIN    
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(UomQty) Qty,SUM(UomFreeQty) FreeQty,SUM(UomDamageQty) DmgQty,    
PD.[ProdDisc%] ProdPern,PD.[TradeDisc%] TradePern,PD.[AddnlDisc%] AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,    
MT.TaxName,PD.[Tax%] TaxPern    
FROM tblTransPurchaseDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.[ProdDisc%],PD.[TradeDisc%],PD.[AddnlDisc%],Serial,MT.TaxName,PD.[Tax%]    
ORDER BY Serial    
END    
IF(@Mode = 9)    
BEGIN    
DECLARE @BID INT ,@TDate DATE    
SELECT @BID = BranchID,@TDate =Date FROM tblTransPurchaseHeader where ID = @ID    
SELECT InventoryId,ProdID,BatchNumber,PKDDate,ExpiryDate,(SUM(Qty)) Qty,(SUM(FreeQty)) FreeQty    
,(SUM(DmgQty)) DmgQty,MRP,PurchasePrice,ReturnPrice,(SUM(PRQty)) PRQty,(SUM(PRFree)) PRFree    
,(SUM(PRDmg)) PRDmg,TaxName,GSTPern,PurchaseTaxID FROM (    
SELECT 0 InventoryId,PV.ProdID,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,(SUM(ActualQty)) Qty,    
(SUM(ActualFreeQty)) FreeQty,(SUM(ActualDmgQty)) DmgQty,    
(PV.MRPONPrice) MRP,PV.ReturnPrice PurchasePrice,(PV.ReturnPrice) ReturnPrice,0 PRQty,0 PRFree,0 PRDmg,  
MTT.TaxName,PD.[Tax%] GSTPern,PD.TaxID PurchaseTaxID   
FROM tblProductInventory PV    
JOIN tblTransPurchaseDetail PD ON PD.ProdID = PV.ProdID    
join tblMasterTax MTT ON MTT.TaxID = PD.TaxID  
WHERE PD.HID = @ID and (ActualQty > 0 OR ActualDmgQty > 0) AND BranchID = @BID AND TransDate <= @TDate    
GROUP BY PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,PV.MRPONPrice,PV.ReturnPrice,PV.ProdID,MTT.TaxName,PD.[Tax%],PD.TaxID     
union all    
SELECT 0 InventoryId,PV.ProdID,PV.BatchNo,PV.PKD,PV.Expiry,(SUM(UomQty)) Qty,    
(SUM(UomFreeQty)) FreeQty,(SUM(UomDamageQty)) DmgQty,    
(P.MRPONPrice) MRP,P.ReturnPrice PurchasePrice,(PV.UomReturnPrice) ReturnPrice,(SUM(UomQty)),    
(SUM(UomFreeQty)) FreeQty,(SUM(UomDamageQty)) DmgQty,MTT.TaxName,PV.[Tax%] GSTPern,PV.TaxID PurchaseTaxID  
FROM tblTransPurchaseDetail PV    
JOIN tblProductInventory P ON P.InventoryId = PV.InventoryId    
join tblMasterTax MTT ON MTT.TaxID = PV.TaxID  
WHERE PV.HID = @ID    
GROUP BY PV.BatchNo,PV.PKD,PV.Expiry,P.MRPONPrice,PV.UomReturnPrice,PV.ProdID,P.ReturnPrice,MTT.TaxName,PV.[Tax%],PV.TaxID ) AS REC    
group by InventoryId,ProdID,BatchNumber,PKDDate,ExpiryDate,MRP,PurchasePrice,ReturnPrice,TaxName,GSTPern,PurchaseTaxID    
--SELECT PD.*,MP.*,UOM.Name UOMName,MT.TaxName FROM tblTransPurchaseDetail PD    
--JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
--JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
--JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
--where PD.HID = @ID    
--ORDER BY Serial    
END    
IF(@Mode = 10)--Draft    
BEGIN    
--SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
--dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
--STS.Description Status FROM tblPurchaseDraftHeader PH    
--JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
--JOIN tblStatus STS ON STS.ID = PH.Status    
--left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
--WHERE Status = 1    
--ORDER BY DocValue,PH.ID    
    
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,    
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,    
STS.Description Status FROM tblPurchaseDraftHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and PH.TransID = 12'    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END    
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END    
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END    
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (3,5,6)' END    
SET @strQuery += ' ORDER BY PH.ID DESC,Date '    
EXEC(@strQuery)    
END    
IF(@Mode = 11)    
BEGIN    
declare @currDocid nvarchar(255) = (SELECT DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 12)    
SELECT PH.ID, PH.Date, PH.TransID, PH.BranchID, @currDocid DocID, PH.DocValue, PH.VendorID, PH.RefNo, PH.ProdGroupID,    
PH.TaxTypeID, PH.PaymentModeID, PH.PaymentTermID, PH.PaymentDate, PH.VehicleNo, PH.Frieght, PH.[OtherChargePern] OtherChrgPern,    
PH.OtherChargeAmt, PH.[ProdDiscPern] ProdPern, PH.[TradeDiscPern] TradePern, PH.[AddnlDiscPern] AddnlPern, PH.TotalProdDiscAmt, PH.TotalTradeDiscAmt,    
PH.TotalAddnlDiscAmt, PH.WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, PH.Balance, PH.PymtID,    
PH.Status, PH.OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,    
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, PH.ReturnType, PH.TransactionType, '' DateBill, '' PortalDate,    
PH.TCSTaxPern, PH.TCSTaxAmt, PH.TDSAmount, '' IRN, '' AckNo, '' AckDate, '' AckStatus, '' SignedQRCode,    
'' EWBNo,'' Distance, '' TransMode, '' VehicleType, '' TransportID, '' TransportName, PH.Remarks, PH.Narration    
FROM tblPurchaseDraftHeader PH    
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID    
JOIN tblStatus STS ON STS.ID = PH.Status    
LEFT JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID    
where PH.ID = @ID    
END    
IF(@Mode = 12)    
BEGIN    
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(UomQty) Qty,SUM(UomFreeQty) FreeQty,SUM(UomDamageQty) DmgQty,    
PD.[ProdDiscPern] ProdPern,PD.[TradeDiscPern] TradePern,PD.[AddnlDiscPern] AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,    
MT.TaxName,PD.TaxPern TaxPern    
FROM tblPurchaseDraftDetail PD    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID    
where PD.HID = @ID    
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.[ProdDiscPern],PD.[TradeDiscPern],PD.[AddnlDiscPern],Serial,MT.TaxName,PD.TaxPern    
ORDER BY Serial    
END    
IF(@Mode = 13)    
BEGIN    
SELECT InventoryId,ProdID,BatchNumber,PKDDate,ExpiryDate,(SUM(Qty)) Qty,(SUM(FreeQty)) FreeQty    
,(SUM(DmgQty)) DmgQty,MRP,PurchasePrice,ReturnPrice,(SUM(PRQty)) PRQty,(SUM(PRFree)) PRFree    
,(SUM(PRDmg)) PRDmg,TaxName,GSTPern,PurchaseTaxID FROM (    
SELECT 0 InventoryId,PV.ProdID,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,(SUM(ActualQty)) Qty,    
(SUM(ActualFreeQty)) FreeQty,(SUM(ActualDmgQty)) DmgQty,    
(PV.MRPONPrice) MRP,0 PurchasePrice,(PV.ReturnPrice) ReturnPrice,(SUM(UomQty)) PRQty,    
(SUM(UomFreeQty)) PRFree,(SUM(UomDamageQty)) PRDmg,MTT.TaxName,PD.TaxPern GSTPern,PD.TaxID PurchaseTaxID  
FROM tblProductInventory PV    
JOIN tblPurchaseDraftDetail PD ON PD.ProdID = PV.ProdID    
join tblMasterTax MTT ON MTT.TaxID = PD.TaxID  
WHERE PD.HID = @ID-- and (ActualQty > 0 OR ActualDmgQty > 0)    
GROUP BY PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,PV.MRPONPrice,PV.ReturnPrice,PV.ProdID,MTT.TaxName,PD.TaxPern,PD.TaxID) AS REC    
--where (Qty > 0 or FreeQty > 0 or DmgQty > 0)    
group by InventoryId,ProdID,BatchNumber,PKDDate,ExpiryDate,MRP,PurchasePrice,ReturnPrice,TaxName,GSTPern,PurchaseTaxID  
END    
IF(@Mode = 14)    
BEGIN    
SELECT top 10 DocID,CONVERT(NVARCHAR(25),Date,103) DocDate,MRP,Qty,Uom,Price,ProdDiscPern+' / '+ProdDiscAmt ProdDisc,TradeDiscPern+' / '+TradeDiscAmt TradeDisc    
,AdnlDiscPern+' / '+AddnlDiscAmt TradeDisc FROM (    
SELECT PH.DocID,Date,dbo.fnGetRoundedValue(PD.UomMRP) MRP,dbo.fnGetRoundedValue(PD.UomQty) Qty,    
UOM.Name Uom,dbo.fnGetRoundedValue(PD.UomPurchasePrice) Price,    
dbo.fnGetRoundedValue(PD.[ProdDisc%]) ProdDiscPern,dbo.fnGetRoundedValue((PD.[ProdDisc%]* PD.GrossAmt) / 100) ProdDiscAmt,    
dbo.fnGetRoundedValue(PD.[TradeDisc%]) TradeDiscPern,dbo.fnGetRoundedValue((PD.[TradeDisc%]* PD.GrossAmt) / 100) TradeDiscAmt,    
dbo.fnGetRoundedValue(PD.[AddnlDisc%]) AdnlDiscPern,dbo.fnGetRoundedValue((PD.[AddnlDisc%]* PD.GrossAmt) / 100) AddnlDiscAmt    
FROM tblTransPurchaseHeader PH    
JOIN tblTransPurchaseDetail PD ON PD.HID = PH.ID    
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID    
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID    
WHERE PH.VendorID = @Code AND PD.ProdID = @ID) AS REC    
END    
IF(@Mode = 15)    
BEGIN    
DECLARE @DraftID INT    
SELECT @DraftID = ID FROM tblPurchaseDraftHeader WHERE ID = @ID AND TransID = @TransID    
DELETE tblPurchaseDraftHeader WHERE ID = @DraftID    
DELETE tblPurchaseDraftDetail WHERE HID = @DraftID    
END    
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetQuotationData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetQuotationData 10,'',14,0,'','2024-12-30','2025-12-16',0          
CREATE proc [dbo].[uspGetSetQuotationData]          
@Mode INT,@Code NVARCHAR(MAX) = NULL,@ID NVARCHAR(MAX) = NULL,@TransID int =1,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,          
@ToDate date = null,@Showall int = null          
AS          
BEGIN          
declare @strQuery NVARCHAR(MAX)          
IF(@Mode = 1)          
BEGIN          
select 1 Type,'Customer' Trans,ID,Code,Name from tblMasterCustomer where Active = 1-- and FAID > 0          
union all          
SELECT 2 Type,'Branch' Trans,ID,'',Name FROM tblMasterBranchOffice WHERE Active = 1              
union all          
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = 1          
union all          
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 14          
order by Type,Name          
END          
IF(@Mode = 2)          
BEGIN          
SELECT ProdID,SUM(ActualQty) ABSQty into #ABS FROM tblProductInventory WHERE BranchID = @Code AND (ActualQty > 0)          
AND TransDate <= @FromDate          
GROUP BY ProdID          
SELECT MP.*,dbo.fnGetRoundedValue(ISNULL(AB.ABSQty,0)) ABSQty FROM tblMasterProduct MP          
LEFT JOIN #ABS AB ON AB.ProdID = MP.ID          
WHERE Active = 1 ORDER BY Name          
drop table #ABS          
END          
IF(@Mode = 3)          
BEGIN          
SELECT * FROM tblMasterCustomer WHERE Active = 1 AND Code = @Code ORDER BY Name          
END          
IF(@Mode = 31)          
BEGIN          
SELECT * FROM tblMasterCustomer WHERE Active = 1 AND ID = @Code ORDER BY Name          
END          
IF(@Mode = 4)          
BEGIN          
SELECT *,0.00 ABSQty,MT.TaxName,MT.GST,MT.IGST FROM tblMasterProduct MP          
JOIN tblMasterTax MT ON MT.TaxID = MP.PurchaseTaxID WHERE Code = @Code          
END          
IF(@Mode = 5)          
BEGIN                         
select mp.PurchaseUomID,MU.Name,PurchaseCR from tblMasterProduct mp          
JOIN tblMasterUOM MU ON MU.ID = mp.SalesUomID where MP.ID = @ID
UNION ALL    
select mp.BaseUomID,MU.Name,BaseCR CR from tblMasterProduct mp          
JOIN tblMasterUOM MU ON MU.ID = mp.BaseUomID where MP.ID = @ID   
END          
IF(@Mode = 6)--quotation Filter          
BEGIN          
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,DocDate,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,          
STS.Description Status FROM tblQuotationHeader PH          
JOIN tblMasterCustomer MV ON MV.ID = PH.CustomerID          
JOIN tblStatus STS ON STS.ID = PH.Status          
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and DocPrefix = 14 '          
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END          
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END          
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END          
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END          
SET @strQuery += ' ORDER BY DocValue desc,PH.ID'          
exec(@strQuery)          
END          
IF(@Mode = 7)          
BEGIN          
SELECT PH.ID, PH.DocDate Date, PH.DocPrefix TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.CustomerID, PH.RefNo,0 ProdGroupID,          
PH.TaxTypeID, PH.FrightAmt, PH.OtherChargePern OtherChrgPern,          
PH.OtherChargeAmt, PH.TradeDiscPern TradePern, PH.AddnlDiscPern AddnlPern, PH.TotalProdDiscAmt, PH.TradeDiscAmt,          
PH.AddnlDiscAmt,  PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt,           
PH.Status, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.Remarks, PH.Narration          
FROM tblQuotationHeader PH          
JOIN tblMasterCustomer MV ON MV.ID = PH.CustomerID          
JOIN tblStatus STS ON STS.ID = PH.Status          
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID          
where PH.ID = @ID          
END          
IF(@Mode = 8)          
BEGIN          
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,UOM.Name UOM,SUM(Qty) Qty,PD.DetailMRP,PD.SalesPrice ExclPrice,
(PD.SalesPrice * (1 + (TaxPercentage / 100))) InclPrice,PD.ProdDiscPern ProdPern,pd.ProdDiscAmt,PD.TradeDiscPern TradePern,TradeDiscAmt,
PD.AddnlDiscPern AddnlPern,AddnlDiscAmt,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,PD.TaxID,MT.TaxName,PD.TaxPercentage TaxPern,
SUM(GoodsAmt) GoodsAmt        
FROM tblQuotationDetail PD          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID          
where PD.QuationID = @ID          
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.ProdDiscPern,PD.TradeDiscPern,PD.AddnlDiscPern,Serial,
MT.TaxName,PD.TaxPercentage,PD.DetailMRP,PD.SalesPrice,PD.TaxID,pd.ProdDiscAmt,AddnlDiscAmt,TradeDiscAmt         
ORDER BY Serial          
END                   
IF(@Mode = 10)--Draft          
BEGIN          
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,          
STS.Description Status FROM tblSalesDraftHeader PH          
JOIN tblMasterCustomer MV ON MV.ID = PH.CustomerID          
JOIN tblStatus STS ON STS.ID = PH.Status          
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE MV.Active IN (0,1) and PH.TransID = ' + CONVERT(NVARCHAR,@TransID)          
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND Date BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END          
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END          
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END          
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END          
SET @strQuery += ' ORDER BY PH.ID DESC,Date '          
exec(@strQuery)          
END          
IF(@Mode = 11)          
BEGIN          
declare @currDocid nvarchar(255) = (SELECT DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = 1)   
        
SELECT PH.ID, PH.Date Date, PH.TransID, PH.BranchID, @currDocid DocID, PH.DocValue, PH.CustomerID, PH.RefNo,0 ProdGroupID,          
PH.TaxTypeID, PH.Frieght FrightAmt, PH.OtherChargePern OtherChrgPern,          
PH.OtherChargeAmt, PH.TradeDiscPern TradePern, PH.AddnlDiscPern AddnlPern, PH.TotalProdDiscAmt, PH.TotalTradeDiscAmt TradeDiscAmt,          
PH.TotalAddnlDiscAmt AddnlDiscAmt,  PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt,           
PH.Status, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.Remarks, PH.Narration          
FROM tblSalesDraftHeader PH          
JOIN tblMasterCustomer MV ON MV.ID = PH.CustomerID          
JOIN tblStatus STS ON STS.ID = PH.Status          
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID          
where PH.ID = @ID 
END          
IF(@Mode = 12)          
BEGIN          
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,UOM.Name UOM,SUM(UOMQty) Qty,PD.MRP DetailMRP,PD.SalePrice ExclPrice,
(PD.SalePrice * (1 + (TaxPern / 100))) InclPrice,PD.ProdDiscPern ProdPern,pd.ProdDiscAmt,PD.TradeDiscPern TradePern,TradeDiscAmt,
PD.AddnlDiscPern AddnlPern,AddnlDiscAmt,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,PD.TaxID,MT.TaxName,PD.TaxPern TaxPern,
SUM(GoodsAmt) GoodsAmt        
FROM tblSalesDraftDetail PD          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID          
where PD.HID = @ID          
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,PD.ProdDiscPern,PD.TradeDiscPern,PD.AddnlDiscPern,Serial,
MT.TaxName,PD.TaxPern,PD.MRP,PD.SalePrice,PD.TaxID,pd.ProdDiscAmt,AddnlDiscAmt,TradeDiscAmt         
ORDER BY Serial  
END          
IF(@Mode = 13)          
BEGIN          
SELECT PD.*,MP.*,UOM.Name UOMName,MT.TaxName,0 InventoryId,1 TaxTypeID FROM tblPurchaseDraftDetail PD          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID          
where PD.HID = @ID          
ORDER BY Serial          
END          
IF(@Mode = 14)          
BEGIN          
SELECT top 10 DocID,CONVERT(NVARCHAR(25),Date,103) DocDate,MRP,Qty,Uom,Price,ProdDiscPern+' / '+ProdDiscAmt ProdDisc,TradeDiscPern+' / '+TradeDiscAmt TradeDisc          
,AdnlDiscPern+' / '+AddnlDiscAmt TradeDisc FROM (          
SELECT PH.DocID,Date,dbo.fnGetRoundedValue(PD.UomMRP) MRP,dbo.fnGetRoundedValue(PD.UomQty) Qty,          
UOM.Name Uom,dbo.fnGetRoundedValue(PD.UomPurchasePrice) Price,          
dbo.fnGetRoundedValue(PD.[ProdDisc%]) ProdDiscPern,dbo.fnGetRoundedValue((PD.[ProdDisc%]* PD.GrossAmt) / 100) ProdDiscAmt,          
dbo.fnGetRoundedValue(PD.[TradeDisc%]) TradeDiscPern,dbo.fnGetRoundedValue((PD.[TradeDisc%]* PD.GrossAmt) / 100) TradeDiscAmt,          
dbo.fnGetRoundedValue(PD.[AddnlDisc%]) AdnlDiscPern,dbo.fnGetRoundedValue((PD.[AddnlDisc%]* PD.GrossAmt) / 100) AddnlDiscAmt          
FROM tblTransPurchaseHeader PH          
JOIN tblTransPurchaseDetail PD ON PD.HID = PH.ID          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
WHERE PH.VendorID = @Code AND PD.ProdID = @ID) AS REC          
END          
IF(@Mode = 15)          
BEGIN          
DECLARE @DraftID INT          
SELECT @DraftID = ID FROM tblPurchaseDraftHeader WHERE ID = @ID AND TransID = @TransID          
DELETE tblPurchaseDraftHeader WHERE ID = @DraftID          
DELETE tblPurchaseDraftDetail WHERE HID = @DraftID          
END          
IF(@Mode = 16)-- PO Data
BEGIN          
SET @strQuery = 'SELECT PH.ID,DocID,CONVERT(NVARCHAR,DocDate,103) DocDate,RefNo,MBO.Name Branch,MV.Name Party,dbo.fnGetRoundedValue(PH.GrossAmt) GrossAmt,          
dbo.fnGetRoundedValue(PH.TaxAmt) TaxAmt,dbo.fnGetRoundedValue(PH.NetAmt) NetAmt,          
STS.Description Status FROM tblPurchaseOrderHeader PH          
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID          
JOIN tblStatus STS ON STS.ID = PH.Status          
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID WHERE PH.TransID = 3 AND PH.Status in (1,3)'          
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END          
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND MV.Name = '+''''+@Party +'''' END          
SET @strQuery += CASE WHEN ISNULL(@ID,'') = '0' THEN '' ELSE ' AND PH.BranchID = '+''''+@ID +'''' END          
--SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND PH.Status in (1,3,5)' END          
SET @strQuery += ' ORDER BY PH.ID DESC,DocDate '          
EXEC(@strQuery)          
END          
IF(@Mode = 17)
BEGIN          
SELECT PH.ID, PH.DocDate Date, PH.TransID, PH.BranchID, PH.DocID, PH.DocValue, PH.VendorID, PH.RefNo, 0 ProdGroupID,          
PH.TaxTypeID, MV.PaymentModeID PaymentModeID, MV.CreditTermID PaymentTermID, null PaymentDate, null VehicleNo, 0 Frieght, 0 OtherChrgPern,          
0 OtherChargeAmt, 0 ProdPern, 0 TradePern, 0 AddnlPern, 0 TotalProdDiscAmt, 0 TotalTradeDiscAmt,          
0 TotalAddnlDiscAmt, 0 WriteOffAmt, PH.RoundOffAmt, PH.GrossAmt, PH.TaxAmt, PH.NetAmt, 0 Balance, 0 PymtID,          
PH.Status, 0 OrgId, PH.UDFId, PH.UDFDocId, PH.UDFDocPrefix, PH.UDFDocValue, PH.CBy, PH.CDate,          
PH.MBy, PH.MDate, PH.ClBy, PH.ClDate, 0 ReturnType,null TransactionType,null DateBill,null PortalDate,          
null TCSTaxPern,null TCSTaxAmt,null TDSAmount, null IRN,null AckNo,null AckDate, null AckStatus,null SignedQRCode,          
null EWBNo, null Distance, null TransMode, null VehicleType, null TransportID, null TransportName, PH.Remarks, PH.Narration          
FROM tblPurchaseOrderHeader PH          
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID          
JOIN tblStatus STS ON STS.ID = PH.Status          
JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID          
where PH.ID = @ID          
END          
IF(@Mode = 18)
BEGIN          
SELECT PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name UOM,SUM(Qty) Qty,0 FreeQty,0 DmgQty,MP.ProductDiscPerc ProdPern,0 TradePern,          
0 AddnlPern,SUM(GrossAmt) GrossAmt,SUM(TaxAmt) TaxAmt,SUM(NetAmt) NetAmt,MT.TaxName,PD.TaxPern TaxPern,SUM(GrossAmt) GoodsAmt          
FROM tblPurchaseOrderDetail PD          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID          
where PD.HID = @ID          
group by PD.ProdID,PD.UomID,MP.Code,MP.Name,MP.HSNCode,UOM.Name,ProductDiscPerc,Serial,MT.TaxName,PD.TaxPern          
ORDER BY Serial          
END          
IF(@Mode = 19)          
BEGIN          
SELECT PD.HID,0 InventoryId,PD.ProdID,PD.UomID,NULL BatchNo,NULL PKD,NULL Expiry,Qty UomQty,0 UomFreeQty,0 UomDamageQty,PD.PurchasePrice UomPurchasePrice,          
MP.SalesPrice UomSalePrice,MP.ECP UomECP,MP.MRP UomMRP,MP.SPLPrice UomSPLPrice,MP.ReturnPrice UomReturnPrice,PD.PurchasePrice,MP.SalesPrice SalePrice,          
MP.ECP,MP.MRP, MP.SPLPrice,MP.ReturnPrice,PD.TaxID,1 TaxTypeID,PD.TaxPern [Tax%],PD.GrossAmt GoodsAmt,MP.ProductDiscPerc [ProdDisc%],0 [TradeDisc%],          
0 [AddnlDisc%],PD.GrossAmt,PD.TaxAmt,PD.NetAmt,PD.Serial,0AdjQty,0 AdjFreeQty,0 AdjDmgQty,0 ReasonId,MP.*,UOM.Name UOMName,MT.TaxName          
FROM tblPurchaseOrderDetail PD          
JOIN tblMasterProduct MP ON MP.ID = PD.ProdID          
JOIN tblMasterUOM UOM ON UOM.ID = PD.UomID          
JOIN tblMasterTax MT ON MT.TaxID = PD.TaxID          
where PD.HID = @ID          
ORDER BY Serial          
END          
END
GO
/****** Object:  StoredProcedure [dbo].[uspGetSetVoucherData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetSetVoucherData 2,6,0,'','','2024-11-10','2024-12-16',1 
CREATE proc [dbo].[uspGetSetVoucherData]                                                
@Mode INT,@TransID INT,@ID NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@Party NVARCHAR(MAX) = NULL,@FromDate date = null,    
@ToDate date = null,@Showall int = null    
AS                                                
BEGIN          
BEGIN TRY
declare @strQuery NVARCHAR(MAX)    
IF(@Mode = 1)                                                
BEGIN            
select 1 Type,'PartyName' Trans,FAID ID,'' Code,AccountName Name from tblFAAccount  where Active = 1 and AccountGroup IN (44,2,25,3,29,6,12,13,39,1,19,33,43,35,18,20)            
union all                                                
--SELECT 2 Type,'AccountName' Trans,FAID ID,'' Code,AccountName Name from tblFAAccount  where Active = 1 and AccountGroup IN (7,8,10,11,15,17)            
SELECT 2 Type,'AccountName' Trans,FAID ID,'' Code,[Account Name] Name from [FACNAccountNames]      
union all                                                                        
SELECT 3 Type,'UDN' Trans,UDNID,'',DocName FROM tblMasterUserDefineNoHeader WHERE TransID = @TransID                                     
union all                                                
SELECT 4 Type,'DocID' Trans,TransID,'',DocPrefix +DocValue FROM tblDocumentSeries WHERE Active = 1 and TransID = @TransID            
union all                                                                        
SELECT 5 Type,'Tax' Trans,TaxID,CONVERT(nvarchar(50),GST),TaxName FROM tblMasterTax WHERE Active = 1        
order by Type,Name                                                
END            
IF(@Mode = 2)                                                
BEGIN                     
--SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                         
--dbo.fnGetRoundedValue(ND.GrossAmount) Gross,dbo.fnGetRoundedValue(ND.TaxtAmount) Tax,dbo.fnGetRoundedValue(ND.NetAmount) Net,      
--dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status      
--FROM tblTranPRVoucher ND             
--JOIN  tblDocumentSeries  DS ON ND.TransID=DS.TransID                                           
--JOIN tblStatus ST ON ST.ID=ND.[Status]                               
--JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                         
--JOIN tblFAAccount Party ON ND.PartyId=Party.FAID          
--WHERE ND.TransID = @TransID          
--ORDER BY ND.DocValue desc,ND.ID        

SET @strQuery = 'SELECT ND.ID,ND.DocId,convert(nvarchar(50),ND.DocDate,103) DocDate, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                         
dbo.fnGetRoundedValue(ND.GrossAmount) Gross,dbo.fnGetRoundedValue(ND.TaxtAmount) Tax,dbo.fnGetRoundedValue(ND.NetAmount) Net,      
dbo.fnGetRoundedValue(ND.Balance)Balance ,ST.[Description],ND.Status      
FROM tblTranPRVoucher ND             
JOIN  tblDocumentSeries  DS ON ND.TransID=DS.TransID                                           
JOIN tblStatus ST ON ST.ID=ND.[Status]                               
JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                         
JOIN tblFAAccount Party ON ND.PartyId=Party.FAID WHERE  ND.TransID = ' + CONVERT(NVARCHAR,@TransID)    
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END        
SET @strQuery += CASE WHEN ISNULL(@Party,'') = '' THEN '' ELSE ' AND Party.AccountName = '+''''+@Party +'''' END  
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND FAA.AccountName = '+''''+@AccountName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@Showall,'') = '1' THEN '' ELSE ' AND ND.Status in (1,3,5)' END       
SET @strQuery += ' ORDER BY ND.DocValue desc,ND.ID'    
exec(@strQuery) 

END          
IF(@Mode = 3)                                                
BEGIN            
SELECT ND.ID,ND.DocId,ND.DocDate,ND.DocValue, ND.RefNo,Party.AccountName as[Party Name] ,FAA.AccountName as[Account Name],                                         
ND.Amount,ND.Balance,ND.[Status],ND.Remarks,ND.Narration,ND.TaxID,ND.TaxPern,DiscPern,DiscAmt,ND.GrossAmount,ND.TaxtAmount,ND.NetAmount,      
TDSAmount      
FROM tblTranPRVoucher ND             
JOIN tblFAAccount FAA ON ND.FAID=FAA.FAID                         
JOIN tblFAAccount Party ON ND.PartyId=Party.FAID            
WHERE ND.ID = @ID          
END          
END TRY          
BEGIN CATCH          
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE          
END CATCH          
END 
GO
/****** Object:  StoredProcedure [dbo].[uspGetTaxCompInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspGetTaxCompInfo 3,1      
CREATE PROC [dbo].[uspGetTaxCompInfo]      
@TaxID INT,            
@TaxTypeID INT            
AS            
BEGIN          
CREATE TABLE #TempTax (TaxCompID INT, GSTTaxTypeID INT, TaxCompPern DECIMAL(25,6))          
INSERT INTO #TempTax          
SELECT TaxCompID,GSTTaxType,(CASE WHEN TaxTypeID = @TaxTypeID THEN CumulativeTax ELSE 0 END)      
FROM tblMasterTaxDetail WHERE TaxID = @TaxID AND TaxTypeID = @TaxTypeID         
      
SELECT * FROM #TempTax          
          
DROP TABLE #TempTax          
END 


GO
/****** Object:  StoredProcedure [dbo].[uspHomescreenData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspHomescreenData]  
@Mode INT,@TransID NVARCHAR(MAX)  
AS  
BEGIN  
IF(@Mode = 1)--DRAFT COUNT  
BEGIN  
select PH.TransID,MU.MenuName,COUNT(PH.ID) DraftCount from tblPurchaseDraftHeader PH  
JOIN tblDocumentSeries DS ON DS.TransID = PH.TransID  
join tblMenus MU ON MU.MenuId = DS.MenuID  
WHERE Status = 1  
GROUP BY PH.TransID,MU.MenuName  
END  
ELSE IF(@Mode = 2)--DRAFT DOCUMENTS  
BEGIN  
--IF(@TransID = 1)--PURCHASE BILL DRAFT  
BEGIN  
SELECT PH.ID,DocID,CONVERT(NVARCHAR,Date,103) DocDate,RefNo,MBO.Name Branch,'' Bt,'' Sm,MV.Name Party,dbo.fngetroundedvalue(isnull(PH.GrossAmt,0)) GrossAmt,
dbo.fngetroundedvalue(isnull(PH.TaxAmt,0)) TaxAmt,dbo.fngetroundedvalue(isnull(PH.NetAmt,0)) NetAmt,TransID
FROM tblPurchaseDraftHeader PH              
JOIN tblMasterVendor MV ON MV.ID = PH.VendorID                    
left JOIN tblMasterBranchOffice MBO ON MBO.ID = PH.BranchID      
WHERE Status = 1  AND TransID = @TransID  
ORDER BY DocValue,PH.ID    
END  
END  
END  
  
  
GO
/****** Object:  StoredProcedure [dbo].[uspInsertInventory]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspInsertInventory  
CREATE PROCEDURE [dbo].[uspInsertInventory]  
(@Action NVARCHAR(50),@TransId INT,@Date DATE ,@DocValue INT,@ProdId INT,@UomGrpID INT,@UOMID INT,@RecdQty DECIMAL (25,6)=NULL,@RecdFreeQty DECIMAL (25,6) =NULL,  
@RecdDmgQty DECIMAL (25,6) =NULL,@ActualQty DECIMAL (25,6)=NULL,@ActualFreeQty DECIMAL (25,6) =NULL,@ActualDmgQty DECIMAL (25,6) =NULL,@SRQty DECIMAL (25,6) =NULL,  
@SRFreeQty DECIMAL (25,6) =NULL,@SRDmgQty DECIMAL (25,6) =NULL,@BatchNumber NVARCHAR(255) =NULL ,@PkgDate DATE =NULL,  
@ExpiryDate DATE =NULL,@PurchasePrice DECIMAL (25,6) =NULL,@SalesPrice DECIMAL (25,6) =NULL,@ECP DECIMAL (25,6) =NULL,@SPLPrice DECIMAL (25,6) =NULL,  
@MRP DECIMAL (25,6) =NULL,@ReturnPrice DECIMAL (25,6) =NULL,@TaxId INT ,@TaxTypeId INT ,@TaxPercentage DECIMAL (25,6),  
@InventoryId INT =NULL ,@ScopeId INT OUT,@AdjOnly SMALLINT=NULL ,@InclusiveYesNo INT =NULL,@CBy INT =NULL,@BranchID int = 0  
)  
AS  
BEGIN  
SET NOCOUNT ON;  
DECLARE @MRPUomID INT, @UOMCF DECIMAL(25, 9),@MRPOnUomCF DECIMAL(25, 9) ,@PriceOnUOMId INT,@PriceOnUomCF DECIMAL(25, 9),@TrackPKD INT ,@ActualPurPrice DECIMAL (25,6),  
@ActualSalePrice DECIMAL (25,6),@ActualECPPrice DECIMAL (25,6),@ActualSPLPrice DECIMAL (25,6),  
@ActualMRPPrice DECIMAL (25,6),@ActualReturnPrice DECIMAL (25,6),@MRPOn DECIMAL (25,6),@dUOMTax DECIMAL(25,6)  
IF ISNULL(@InventoryId,0) =0 OR @Action='UPDATE'  
BEGIn --New Batch Info  
--Product Detail  
SELECT @UOMCF = BaseCR,@PriceOnUomCF=PurchaseCR,@MRPOnUomCF = PurchaseCR,@TrackPKD=TrackPDK FROM dbo.tblMasterProduct WHERE ID =@ProdId  
  
  
--Inventory Updation Calculate Base Price  
SET @MRPOn =@MRP;  
set @UOMCF = (CASE WHEN @TransId = 6 THEN 1 ELSE @UOMCF END)  
SET @ActualPurPrice = (@PurchasePrice / @UOMCF)  
SET @ActualSalePrice = (@SalesPrice / @UOMCF )  
SET @ActualECPPrice = (@ECP / @UOMCF )  
SET @ActualSPLPrice = (@SPLPrice / @UOMCF)  
SET @ActualMRPPrice = (@MRP / @MRPOnUomCF )  
SET @ActualReturnPrice = (@ReturnPrice / @MRPOnUomCF )  
SET @dUOMTax = (SELECT (CASE WHEN @TaxTypeId = 3 then ISNULL((GUOM),0) WHEN @TaxTypeId = 5 THEN ISNULL((IUOM),0) ELSE 0 END) FROM tblMasterTax WHERE TaxID = @TaxId)  
--Inclusive Checked Calculation  
--IF ISNULL(@InclusiveYesNo,0)=1  
--BEGIN  
SET @ActualMRPPrice = (@ActualMRPPrice - @dUOMTax) / ((@TaxPercentage /100 )+ 1)  
--END  
END  
  
IF ISNULL(@InventoryId,0) >0 AND @Action='INSERT'  
BEGIn --Get Batch info Existing  
SELECT @BatchNumber=BatchNumber,@PkgDate=PKDDate,@ExpiryDate=ExpiryDate,@ActualPurPrice =PurchasePrice ,@ActualSalePrice =SalesPrice,@ActualECPPrice=ECP,@ActualMRPPrice=MRP,  
@ActualSPLPrice=SPLPrice,@MRPOn = MRPONPrice,@ActualReturnPrice = ReturnPrice FROM tblProductInventory WHERE InventoryId=@InventoryId  
IF ISNULL(@TaxId,0) =0 AND ISNULL(@TaxTypeId,0) = 0  
BEGIN --Sales Return TranSaction Pass the Grid Tax and Tax Type And Tax Value  
SELECT @TaxId=TaxId,@TaxTypeId=TaxTypeId,@TaxPercentage=TaxValue  
FROM tblProductInventory WHERE InventoryId=@InventoryId  
END  
END  
--Batch info Existing  
IF ISNULL(@AdjOnly,0)=1  
BEGIN  
SET @ActualPurPrice =@PurchasePrice  
END  
--Using only For Insert in Inventory Table  
IF @Action='INSERT'  
BEGIN  
INSERT INTO tblProductInventory(TransId,TransDate,DocValue,ProdId,RecdQty,RecdFreeQty,RecdDmgQty,ActualQty,ActualFreeQty,ActualDmgQty,SRQty ,  
SRFreeQty ,SRDmgQty,BatchNumber,PkdDate,ExpiryDate,PurchasePrice,SalesPrice,ECP,SPLPrice,MRP,MRPONPrice,TaxId,TaxTypeId,TaxValue,ReturnPrice,  
CBy,CDate,BranchID)  
VALUES( @TransId,@Date ,@DocValue ,@ProdId ,ISNULL(@RecdQty,0) ,ISNULL(@RecdFreeQty,0) ,ISNULL(@RecdDmgQty,0),ISNULL(@ActualQty ,0),  
ISNULL(@ActualFreeQty ,0),ISNULL(@ActualDmgQty,0),ISNULL(@SRQty ,0),ISNULL(@SRFreeQty,0),ISNULL(@SRDmgQty ,0)  
,(CASE WHEN @BatchNumber = '' THEN NULL ELSE @BatchNumber END) ,@PkgDate,@ExpiryDate,ISNULL(@ActualPurPrice,0) ,ISNULL(@ActualSalePrice,0) ,ISNULL(@ActualECPPrice,0) ,ISNULL(@ActualSPLPrice,0),  
ISNULL(@ActualMRPPrice,0),ISNULL(@MRPOn,0) ,@TaxId ,@TaxTypeId ,ISNULL(@TaxPercentage,0),ISNULL(@ActualReturnPrice,0),@CBy,GETDATE(),@BranchID)  
SET @ScopeId=(SELECT SCOPE_IDENTITY ())  
END  
--using only for Update in Inventroy Table  
ELSE IF @Action='UPDATE'  
BEGIN  
UPDATE dbo.tblProductInventory SET DocValue =@docvalue, ProdId = @ProdId ,TransId=@TransId,TransDate=@Date,RecdQty=@RecdQty,RecdFreeQty=@RecdFreeQty,  
RecdDmgQty=@RecdDmgQty,ActualQty =@ActualQty,ActualFreeQty=@ActualFreeQty,ActualDmgQty=@ActualDmgQty  
,SRQty = ISNULL(@SRQty ,0),SRFreeQty = ISNULL(@SRFreeQty ,0),SRDmgQty = ISNULL(@SRDmgQty ,0), BatchNumber=(CASE WHEN @BatchNumber = '' THEN NULL ELSE @BatchNumber END)  
,PkdDate= ISNULL(@PkgDate,null),ExpiryDate= ISNULL(@ExpiryDate,null),PurchasePrice=ISNULL(@ActualPurPrice,0),SalesPrice=ISNULL(@ActualSalePrice,0),ECP=ISNULL(@ActualECPPrice,0),  
MRP=ISNULL(@ActualMRPPrice,0) ,SPLPrice=ISNULL(@ActualSPLPrice,0),TaxId=@TaxId,TaxTypeId=@TaxTypeId,TaxValue=ISNULL(@TaxPercentage,0),MRPONPrice =ISNULL(@MRP,0),  
ReturnPrice = isnull(@ActualReturnPrice,0),MBy = @CBy,MDate = GETDATE(),BranchID = @BranchID  
WHERE InventoryId = @InventoryId  
SET @ScopeId =@InventoryId  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[uspKillTran]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[uspKillTran]
@TableName nvarchar(255)
as
begin
Declare @SQL as Varchar(Max);
Set @SQL  = ''
select @SQL = @SQL + 'KILL ' + cast(request_session_id as varchar) + ';'
from sys.dm_tran_locks Where resource_type='OBJECT' And resource_associated_entity_id = object_id(@TableName);
EXEC (@SQL)
end
GO
/****** Object:  StoredProcedure [dbo].[uspManageApplicationConfig]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageApplicationConfig]          
@Mode INT,@CaseType nvarchar(max) = null,@Confirmpopup nvarchar(max) = null,@Roundoff nvarchar(max) = null,@RoundoffValue nvarchar(max) = null,        
@SMTPHost nvarchar(max) = null,@EMail nvarchar(max) = null,@Password nvarchar(max) = null ,@DecimalValues nvarchar(max) = null,  
@Showallstatus nvarchar(max) = null,@DefaultBranch nvarchar(max) = null   
AS          
BEGIN          
IF(@Mode = 1)          
BEGIN          
SELECT CaseType,Confirmpopup,Roundoff,RoundoffValue,SMTPHost,EMail,Password,DecimalValues,ThemeID,Showallstatus,DefaultBranch from(              
SELECT AppName,AppValue FROM tblAppConfig ) AS Nar              
PIVOT(              
MAX(AppValue)FOR AppName in (CaseType,Confirmpopup,Roundoff,RoundoffValue,SMTPHost,EMail,Password,DecimalValues,ThemeID,Showallstatus,DefaultBranch)    
) AS nk            
END          
IF(@Mode = 2)          
BEGIN          
UPDATE tblAppConfig SET AppValue = @CaseType where AppID = 1        
UPDATE tblAppConfig SET AppValue = @Confirmpopup where AppID = 2        
UPDATE tblAppConfig SET AppValue = @Roundoff where AppID = 3        
UPDATE tblAppConfig SET AppValue = @RoundoffValue where AppID = 4        
UPDATE tblAppConfig SET AppValue = @SMTPHost where AppID = 5        
UPDATE tblAppConfig SET AppValue = @EMail where AppID = 6        
UPDATE tblAppConfig SET AppValue = @Password where AppID = 7        
UPDATE tblAppConfig SET AppValue = @DecimalValues where AppID = 8      
UPDATE tblAppConfig SET AppValue = @Showallstatus where AppID = 10        
UPDATE tblAppConfig SET AppValue = @DefaultBranch where AppID = 11
select 'Saved Successful'          
END  
IF(@Mode = 3)          
BEGIN 
SELECT ID,Name FROM tblMasterBranchOffice WHERE Active = 1 ORDER BY Name
END
END      
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndent]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageAutomaticIndent]                          
@Mode NVARCHAR(10),@IdentID INT=NULL,@VendID INT,@BranchID int,@Aidate Date,@refNo NVARCHAR(255)=Null,@udfid INT = null,                           
@PoId  INT=null,@cby NVARCHAR(255) =null,@ChkStatus INT=NULL,@SumNetAmount DECIMAL (25,6)=NULL,@Remarks nvarchar(max),@Narration nvarchar(max),       
@DraftID INT = 0,@tvpAutomaticIntent AS [tvpAutomaticIntent] READONLY,@tvpOrder AS [tvpPurchaseOrder] READONLY
--@tvpOrder AS [tvpPurchaseOrder] READONLY      
AS                                              
BEGIN                           
BEGIN  TRY                           
SET NOCOUNT ON;                                    
SET DATEFORMAT DMY                           
DECLARE @udfDocId NVARCHAR(255)=null, @udfDocValue NVARCHAR(255)=null, @UdfDocPrefix NVARCHAR(255) =null, @DocPrefix NVARCHAR(255)=NULL      
, @DocValue NVARCHAR(255)=null, @DocId NVARCHAR(255)=null, @CDate DATE =NULL, @scopeID INT, @ScopeID_PO INT,@nMode INT,@TaxTypeID INT=1      
BEGIN        
DECLARE @ChkVendorActive INT = (SELECT active FROM tblMasterVendor WHERE ID=@VendID)        
IF ISNULL(@ChkVendorActive,0)=0        
BEGIN        
RAISERROR('2',16,1)        
END        
        
IF ISNULL(@Mode,'')='1'                
BEGIN        
SET @nMode =1        
SELECT @DocValue = DocValue,@DocId = DocPrefix+CONVERT(NVARCHAR(10),DocValue) FROM dbo.tblDocumentSeries WHERE TransID = 2      
UPDATE tblDocumentSeries SET DocValue = DocValue + 1  WHERE TransID = 2      
IF ISNULL(@udfid,0)>0                                                                              
BEGIN                                                                              
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@udfid                                                                                                      
  
    
      
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId =@udfid                  
END                                                
--Header INSERT                   
INSERT INTO tblTransAutomaticIndentHeader (Date,DocId,TransID,DocValue,BranchID,VendorID,RefNo,Cby,Cdate,[status],UDFId,UDFDocID,UDFDocPrefix,UDFDOcValue,Remarks,Narration)                  
VALUES (@Aidate,@DocId,2,@DocValue,@BranchID,@VendID,@refNo,@cby,GETDATE(),1,@udfid,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@Remarks,@Narration)                         
SET @scopeID = SCOPE_IDENTITY();                                              
END                
ELSE IF ISNULL(@Mode,'')='2'                
BEGIN                
SET @nMode =3              
DECLARE @status INT,@ChkUdfID INT                
SELECT @status=status,@ChkUdfID=UDFId FROM tblTransAutomaticIndentHeader WHERE ID=@IdentID      
IF ISNULL(@status,0) != ISNULL(@ChkStatus,0)                
BEGIN                
RAISERROR('1',16,1);                
END                
UPDATE tblTransAutomaticIndentHeader SET status=2 WHERE ID=@IdentID                
--DECLARE @DocIDemodify NVARCHAR(255), @DocPrefixemodify NVARCHAR(255), @Docvaluemodify NVARCHAR(255)      
SELECT @DocId=DocId,@DocValue=DocValue FROM tblTransAutomaticIndentHeader WHERE ID=@IdentID                
        
IF ISNULL(@udfid,0)>0                                                                                                
BEGIN                            
SELECT @udfDocValue=UDFDOcValue, @udfDocId=UDFDocID,@UdfDocPrefix=UDFDocPrefix    
FROM tblTransAutomaticIndentHeader WHERE ID = @IdentID    
      
IF(@UDFId!=@ChkUdfID)      
BEGIN      
SELECT @udfDocValue=DocValue,@UdfDocPrefix=DocPrefix,@udfDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)      
FROM tblMasterUserDefineNoHeader WHERE UDNId=@udfid      
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@udfid      
END                                                                                                    
END                
    
INSERT INTO tblTransAutomaticIndentHeader (Date,DocId,TransID,DocValue,BranchID,VendorID,RefNo,Cby,Cdate,[status],UDFId,UDFDocID,UDFDocPrefix,UDFDOcValue,Remarks,Narration)                  
VALUES (@Aidate,@DocId,2,@DocValue,@BranchID,@VendID,@refNo,@cby,GETDATE(),3,@udfid,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@Remarks,@Narration)        
    
SET @scopeID = SCOPE_IDENTITY();            
SET @ChkStatus = 3;      
END                  
END                
-----Detail Insert                                              
DECLARE @serial INT, @NCountSerial INT, @ProdId INT, @UOMgpId INT,@UOMId INT,@AvlQty DECIMAL (25,6),@MOH INT,@MOQ INT,      
@AutomaticIndent INT,@PurchasePrice DECIMAL (25,6)        
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpAutomaticIntent)      
SET @serial = 1                        
      
WHILE  @NCountSerial >0                                              
BEGIN                            
SELECT @ProdId=ProdId,@UOMId=UomId,@PurchasePrice=PurchasePrice,@AvlQty=ABSQty,@MOH=MOH,@MOQ=MOQ,@AutomaticIndent=IndentQty                          
from @tvpAutomaticIntent WHERE Serial= @serial                           
        
INSERT INTO tblTransAutomaticIndentDetail (HID,ProdID,UomID,PurchasePrice,ABSQty,MOH,MOQ,IndentValue,Serial)                          
VALUES (@scopeID,@ProdId,@UOMId,@PurchasePrice,@AvlQty,@MOH,@MOQ,@AutomaticIndent,@serial)                          
SET @serial = @serial+1;                                              
SET @NCountSerial = @NCountSerial -1;                                              
END                    
--select ROUND(45.66,0),floor(45.96)
IF ISNULL(@PoId,0)=1                        
BEGIN                        
DECLARE @SumGrossAmount DECIMAL (25,4),@SumTaxAmount DECIMAL (25,4),@RoundOff DECIMAL (25,4),@RNet DECIMAL (25,4)
SELECT @SumGrossAmount = SUM([GrossAmt]),@SumTaxAmount = SUM([TaxAmt]),@SumNetAmount = SUM([NetAmt])  FROM @tvpOrder
set @RNet = floor(@SumNetAmount)
set @RoundOff = @RNet - @SumNetAmount
EXEC uspManagePurchaseOrder @tvpOrder,@nMode,0,@BranchID,@ChkStatus,@Aidate,@VendID,@refNo,@TaxTypeID,@RoundOff,
@SumGrossAmount,@SumTaxAmount,@RNet,0,@Remarks,@Narration,@cBy,0,@scopeID,0,null          
END            
IF(ISNULL(@DraftID,0) > 0)       
BEGIN      
UPDATE tblPurchaseDraftHeader SET Status = 8,MBy = @cby,MDate = GETDATE() WHERE ID = @DraftID      
END      
SELECT @scopeID                            
END TRY                            
BEGIN CATCH                                        
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                                
END CATCH                                             
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndentCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageAutomaticIndentCancel]      
@IdentID INT,@Uid INT,@ChkStatus INT
AS      
BEGIN      
BEGIN TRY      
IF ISNULL(@IdentID,0)!=0 AND ISNULL(@ChkStatus,0)!=0      
BEGIN      
IF ISNULL((SELECT COUNT(ID) FROM tblTransAutomaticIndentHeader WHERE ID = @IdentID AND status = @ChkStatus),0)=0      
BEGIN      
RAISERROR('1',16,1);      
END      
UPDATE tblTransAutomaticIndentHeader SET status=4,ClBy =@Uid,ClDate =GETDATE() WHERE ID=@IdentID      
END      
END TRY                               
BEGIN CATCH                                  
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE()                                   
END CATCH      
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageAutomaticIndentDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageAutomaticIndentDraft]                        
@Mode NVARCHAR(10),@IdentID INT=NULL,@VendID INT,@BranchID int,@Aidate Date,@refNo NVARCHAR(255)=Null,@udfid INT = null,                         
@PoId  INT=null,@cby NVARCHAR(255) =null,@ChkStatus INT=NULL,@SumNetAmount DECIMAL (25,6)=NULL,@Remarks nvarchar(max),@Narration nvarchar(max),     
@DraftID INT = 0,@tvpAutomaticIntent AS [tvpAutomaticIntent] READONLY    
--@tvpOrder AS [tvpPurchaseOrder] READONLY    
AS                                            
BEGIN                         
BEGIN  TRY                         
SET NOCOUNT ON;                                  
SET DATEFORMAT DMY                         
DECLARE @udfDocId NVARCHAR(255)=null, @udfDocValue NVARCHAR(255)=null, @UdfDocPrefix NVARCHAR(255) =null, @DocPrefix NVARCHAR(255)=NULL    
, @DocValue NVARCHAR(255)=null, @DocId NVARCHAR(255)=null, @CDate DATE =NULL, @scopeID INT, @ScopeID_PO INT,@nMode INT,@TaxTypeID INT=1    
IF(ISNULL(@DraftID,0) > 0)
BEGIN
UPDATE tblPurchaseDraftHeader SET Status = 2 WHERE ID = @DraftID
END
INSERT INTO tblPurchaseDraftHeader(Date,DocId,TransID,DocValue,BranchID,VendorID,RefNo,Cby,Cdate,[status],UDFId,UDFDocID,UDFDocPrefix,UDFDOcValue)                
VALUES (@Aidate,@DocId,2,@DocValue,@BranchID,@VendID,@refNo,@cby,GETDATE(),1,@udfid,@UDFDocId,@UDFDocPrefix,@UDFDocValue)                       
SET @scopeID = SCOPE_IDENTITY();         
-----Detail Insert                                            
DECLARE @serial INT, @NCountSerial INT, @ProdId INT, @UOMgpId INT,@UOMId INT,@AvlQty DECIMAL (25,6),@MOH INT,@MOQ INT,    
@AutomaticIndent INT,@PurchasePrice DECIMAL (25,6)      
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpAutomaticIntent)    
SET @serial = 1                      
    
WHILE  @NCountSerial >0                                            
BEGIN                          
SELECT @ProdId=ProdId,@UOMId=UomId,@PurchasePrice=PurchasePrice,@AvlQty=ABSQty,@MOH=MOH,@MOQ=MOQ,@AutomaticIndent=IndentQty                        
from @tvpAutomaticIntent WHERE Serial= @serial                         
      
INSERT INTO tblPurchaseDraftDetail(HID,ProdID,UomID,PurchasePrice,SalePrice,UomFreeQty,UomDamageQty,UomQty,Serial)                        
VALUES (@scopeID,@ProdId,@UOMId,@PurchasePrice,@AvlQty,@MOH,@MOQ,@AutomaticIndent,@serial)                        
SET @serial = @serial+1;                                            
SET @NCountSerial = @NCountSerial -1;                                            
END                  
      
--IF ISNULL(@PoId,0)=1                      
--BEGIN                      
--DECLARE @SumGrossAmount DECIMAL (25,6),@SumTaxAmount DECIMAL (25,6)        
--SELECT @SumGrossAmount = SUM([GrossAmt]),@SumTaxAmount = SUM([TaxAmt]) FROM @tvpOrder          
--EXEC uspPurchaseOrder @tvpOrder,@nMode,@Aidate,@VendID,@refNo,@TaxTypeID,0,@Aidate,@RoundOff,@SumGrossAmount,@SumTaxAmount,@SumNetAmount,    
--0,null,@cBy,1,@ChkStatus,null,null,null,null,null,null,    
--@scopeID    
--END          
SELECT @scopeID                          
END TRY                          
BEGIN CATCH                                      
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                              
END CATCH                                           
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageBankAccount]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageBankAccount]
@Mode INT,@ID SMALLINT = NULL,@AccountNo NVARCHAR(MAX) = NULL,@AccountName NVARCHAR(MAX) = NULL,@BankID SMALLINT = NULL,
@BranchName NVARCHAR(MAX) = NULL,@IFSCCode NVARCHAR(MAX) = NULL,@MICR NVARCHAR(MAX) = NULL,@Active BIT = NULL,@SetDefault BIT = NULL,@CBy smallint = null
as
begin
BEGIN TRY
DECLARE @ActiveCheck NVARCHAR(255), @SUNDRYDEBTORS INT ,@FATYPE INT,@AccID INT ,@ACCOUNTID INT,@CHECKID INT,@cstdate DATE,@ExistCount INT
SELECT @SUNDRYDEBTORS = FAGroup FROM tblFAGroup WHERE AccountGroupName='Bank Accounts'
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterBankAccount WHERE AccountNo = @AccountNo) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@AccountNo
IF(@ExistCount>0)
BEGIN
RAISERROR ('Account Name Already Exists in another master',16,1)
END
IF(ISNULL(@SetDefault,0) = 1)
BEGIN
UPDATE tblMasterBankAccount SET SetDefault = 0
END
set @AccountNo =(select dbo.ProperCase(@AccountNo))
set @AccountName =(select dbo.ProperCase(@AccountName))
set @BranchName = (select dbo.ProperCase(@BranchName))

INSERT INTO tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,CBy,CDate,UserAccount,PANNumber,Active)
VALUES(@AccountNo,@SUNDRYDEBTORS,0,1,@CBy,GETDATE(),0,null,@Active)

SELECT @ACCOUNTID = FAID FROM tblFAAccount WHERE AccountName = @AccountNo

insert into tblMasterBankAccount(AccountNo,AccountName,BankID,BranchName,IFSCCode,MICR,Active,SetDefault,CBy,CDate,FAID)
Values (@AccountNo, @AccountName, @BankID, @BranchName, @IFSCCode, @MICR, @Active, @SetDefault, @CBy, GETDATE(),@ACCOUNTID)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
select @ACCOUNTID = FAID from tblMasterBankAccount where ID = @ID
IF((SELECT count(*) FROM tblMasterBankAccount WHERE AccountNo = @AccountNo AND ID != @ID) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@AccountNo and FAID != @ACCOUNTID
IF(@ExistCount>0)
BEGIN
RAISERROR ('Account Name Already Exists in another master',16,1)
END
IF(ISNULL(@SetDefault,0) = 1)
BEGIN
UPDATE tblMasterBankAccount SET SetDefault = 0
END
set @AccountNo =(select dbo.ProperCase(@AccountNo))
set @AccountName =(select dbo.ProperCase(@AccountName))
set @BranchName = (select dbo.ProperCase(@BranchName))

INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Column5,Column6,Active,Column7,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
(select 22,*, @CBy, GETDATE() from tblMasterBankAccount where ID = @ID)
UPDATE tblFAAccount
SET AccountName=@AccountNo,AccountGroup=@SUNDRYDEBTORS,MBy=@CBy,MDate=GETDATE(),UserAccount=0,PANNumber=null,Active = @Active
WHERE FAID=@ACCOUNTID

UPDATE tblMasterBankAccount SET AccountNo = @AccountNo,AccountName = @AccountName,BankID = @BankID,BranchName = @BranchName,
IFSCCode = @IFSCCode,MICR = @MICR,Active = @Active,SetDefault = @SetDefault,MBy = @CBy ,MDate = GETDATE() WHERE ID = @ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT MBA.ID,MBA.AccountNo,MBA.AccountName,isnull(MBA.BankID,0) BankID,MB.Name BankName,BranchName,MBA.IFSCCode,MBA.MICR,MBA.Active,MBA.SetDefault from tblMasterBankAccount MBA
LEFT JOIN tblMasterBank MB ON MB.ID = MBA.BankID order by AccountName
END
IF(@Mode = 4)
BEGIN
SELECT * from tblMasterBankAccount where @AccountNo = @AccountNo
END
IF(@Mode = 5)
BEGIN
SELECT * from tblMasterBank where Active = 1 order by Name
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageBranchOffice]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageBranchOffice]
@Mode INT,@ID smallint = NULL,@Code nvarchar(255) = NULL,@Name nvarchar(255) = NULL,@Billadd1 nvarchar(max) = NULL,@Billadd2 nvarchar(max) = NULL,
@Billadd3 nvarchar(max) = NULL,@ContactPerson nvarchar(255) = NULL,@Ph1 nvarchar(25) = NULL,@Mob1 nvarchar(25) = NULL,@Email nvarchar(255) = NULL,
@StateID tinyint = NULL,@GSTIN nvarchar(40) = NULL,@FAID int = NULL,@Active bit = NULL,@UserID smallint = NULL
AS
begin
BEGIN TRY
DECLARE @ActiveCheck NVARCHAR(255), @SUNDRYDEBTORS INT ,@FATYPE INT,@AccID INT ,@ACCOUNTID INT,@CHECKID INT,@cstdate DATE,@ExistCount INT
SELECT @SUNDRYDEBTORS = FAGroup FROM tblFAGroup WHERE AccountGroupName='Branch Account'
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterBranchOffice WHERE Code = @Code) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterBranchOffice WHERE Name = @Name) > 0)
BEGIN
RAISERROR('Name',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName',16,1)
END
set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))

INSERT INTO tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,CBy,CDate,UserAccount,PANNumber,Active)
VALUES(@Name,@SUNDRYDEBTORS,0,2,@UserID,GETDATE(),0,null,@Active)

SELECT @FAID = FAID FROM tblFAAccount WHERE AccountName = @Name

insert into tblMasterBranchOffice(Code,Name,Billadd1,Billadd2,Billadd3,ContactPerson,Ph1,Mob1,Email,StateID,
GSTIN,Active,CBy,CDate,FAID) Values (@Code,@Name,@Billadd1,@Billadd2,@Billadd3,@ContactPerson,@Ph1,@Mob1,@Email,@StateID,
@GSTIN,@Active,@UserID, GETDATE(),@FAID)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
select @ACCOUNTID = FAID from tblMasterBranchOffice where ID = @ID
IF((SELECT count(*) FROM tblMasterBranchOffice WHERE Code = @Code AND ID != @ID) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterBranchOffice WHERE Name = @Name AND ID != @ID) > 0)
BEGIN
RAISERROR('Name',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name and FAID != @ACCOUNTID
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName',16,1)
END

INSERT INTO tblMasterHistory (FormID,ID,Column1,Name,Column2,Column3,Column4,Column5,Column6,Column7,Column8,Column9,Column10,Column11,
Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate) (select 21,*,@UserID, GETDATE() from tblMasterBranchOffice where ID = @ID)

set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))

UPDATE tblFAAccount
SET AccountName=@Name,AccountGroup=@SUNDRYDEBTORS,MBy=@UserID,MDate=GETDATE(),UserAccount=0,PANNumber=null,Active = @Active
WHERE FAID=@ACCOUNTID

UPDATE tblMasterBranchOffice SET Code = @Code,Name = @Name,Billadd1 = @Billadd1,Billadd2 = @Billadd2,Billadd3 = @Billadd3,ContactPerson = @ContactPerson,
Ph1 = @Ph1,Mob1 = @Mob1,Email = @Email,StateID = @StateID,GSTIN = @GSTIN,Active = @Active,
MBy = @UserID ,MDate = GETDATE() WHERE ID = @ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT * from tblMasterBranchOffice order by Name
END
IF(@Mode = 4)
BEGIN
SELECT * from tblMasterBranchOffice where ID = @ID
END
IF(@Mode = 5)
BEGIN
SELECT * from tblGSTStateNameandCode WHERE Active = 1 order by StateName
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageChequeBook]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageChequeBook]    
@Mode INT,@ID smallint = NULL,@ChequeBookreferNo nvarchar(50) = null,@StartingChequeNo nvarchar(50) = null,    
@NoofLeaves smallint = null,@BankAccountID smallint = null,@Active bit = null,@CBy smallint = null        
AS        
begin            
BEGIN TRY                
IF(@Mode = 1)            
BEGIN            
IF((SELECT count(*) FROM tblMasterChequeBook WHERE ChequeBookreferNo = @ChequeBookreferNo) > 0)            
BEGIN            
RAISERROR('Code Already Exists',16,1)            
END                
set @ChequeBookreferNo = (select dbo.ProperCase(@ChequeBookreferNo))    
insert into tblMasterChequeBook(ChequeBookreferNo,StartingChequeNo,NoofLeaves,BankAccountID,Active,CBy,CDate) Values     
(@ChequeBookreferNo,@StartingChequeNo,@NoofLeaves,@BankAccountID,@Active,@CBy, GETDATE())            
SELECT SCOPE_IDENTITY()            
END    
IF(@Mode = 3)--DETAIL INSERT    
BEGIN    
if(ISNULL(@NoofLeaves,1) = 0)    
begin    
delete tblMasterChequeBookDetail WHERE ChequeBookID = @ID            
end    
insert into tblMasterChequeBookDetail(ChequeBookID,ChequeNo,Status) Values (@ID,@ChequeBookreferNo,@StartingChequeNo)                   
END    
IF(@Mode = 2)            
BEGIN            
IF((SELECT count(*) FROM tblMasterChequeBook WHERE ChequeBookreferNo = @ChequeBookreferNo AND ChequeBookID != @ID) > 0)            
BEGIN            
RAISERROR('Code Already Exists',16,1)            
END                   
set @ChequeBookreferNo =(select dbo.ProperCase(@ChequeBookreferNo))    
UPDATE tblMasterChequeBook SET ChequeBookreferNo = @ChequeBookreferNo,StartingChequeNo = @StartingChequeNo,NoofLeaves = @NoofLeaves,    
BankAccountID = @BankAccountID,Active = @Active,MBy = @CBy ,MDate = GETDATE() WHERE ChequeBookID = @ID            
SELECT @ID            
END            
IF(@Mode = 4)            
BEGIN                      
UPDATE tblMasterChequeBookDetail SET ChequeNo = @ChequeBookreferNo,Status = @StartingChequeNo WHERE ChequeBookID = @ID            
SELECT @ID            
END    
IF(@Mode = 5)            
BEGIN            
SELECT ChequeBookID,ChequeBookreferNo,StartingChequeNo,NoofLeaves,MC.BankAccountID,MB.AccountNo,MC.Active from tblMasterChequeBook MC    
JOIN tblMasterBankAccount MB ON MB.ID = MC.BankAccountID order by ChequeBookreferNo    
END            
IF(@Mode = 6)            
BEGIN            
SELECT ChequeBookID ID,ChequeNo Name,Status from tblMasterChequeBookDetail where ChequeBookID = @ID         
END      
IF(@Mode = 7)            
BEGIN            
SELECT ID,AccountNo Name,'' Status from tblMasterBankAccount where Active = 1 order by AccountNo    
END    
IF(@Mode = 8)            
BEGIN            
--SELECT 1 ID,'Open' Name,'' Status  union SELECT 4,'Cancel','' Status union SELECT 4,'Close','' Status  
SELECT ID,Description Name,'' Status  FROM TBLSTATUS WHERE ACTIVE = 1 AND ID IN (1,4,5) 
END        
END TRY                  
BEGIN CATCH                  
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]                  
END CATCH                  
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageColorSettings]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageColorSettings]          
@Mode INT,@ThemeID INT = 0,@UID int = 2,@MenuHeader NVARCHAR(100) = NULL,@AddButton NVARCHAR(100) = NULL,@SaveButton NVARCHAR(100) = NULL,@ClearButton NVARCHAR(100) = NULL,          
@CloseButton NVARCHAR(100) = NULL,@PDFButton NVARCHAR(100) = NULL,@PreviewButton NVARCHAR(100) = NULL,@PopupHeader NVARCHAR(100) = NULL,          
@PopupFooter NVARCHAR(100) = NULL,@ConfirmPopupYes NVARCHAR(100) = NULL,@ConfirmPopupNo NVARCHAR(100) = NULL,@SubMenuColor NVARCHAR(100) = NULL,      
@MenuColor NVARCHAR(100) = NULL,@CompanyNameColor NVARCHAR(100) = NULL,@GridHeaderBackGround NVARCHAR(100) = NULL,    
@GridHeaderTextColor NVARCHAR(100) = NULL,@PopupHeaderText NVARCHAR(100) = NULL,@DraftButton NVARCHAR(100) = NULL   
AS          
BEGIN          
IF(@Mode = 1)          
BEGIN          
SELECT MenuHeader,AddButton,SaveButton,ClearButton,CloseButton,PDFButton,PreviewButton,PopupHeader,PopupFooter,ConfirmPopupYes,      
ConfirmPopupNo,SubMenuColor,MenuColor,CompanyNameColor,GridHeaderBackGround,GridHeaderTextColor,PopupHeaderText,DraftButton from(              
SELECT Name,Value FROM tblColorSettings where ThemeID = @ThemeID ) AS Nar              
PIVOT(              
MAX(Value)FOR Name in (MenuHeader,AddButton,SaveButton,ClearButton,CloseButton,PDFButton,PreviewButton,PopupHeader,PopupFooter,      
ConfirmPopupYes,ConfirmPopupNo,SubMenuColor,MenuColor,CompanyNameColor,GridHeaderBackGround,GridHeaderTextColor,PopupHeaderText,DraftButton)              
) AS nk            
END          
IF(@Mode = 2)          
BEGIN       
DECLARE @AllowclrUpdate INT = 0  
IF(@UID = 1 AND @ThemeID = 0)  
BEGIN  
SET @AllowclrUpdate = 1  
END  
ELSE IF(@UID != 1 AND @ThemeID > 0)  
BEGIN  
SET @AllowclrUpdate = 1  
END  
IF(@AllowclrUpdate = 1)  
BEGIN  
UPDATE tblColorSettings SET Value = @MenuHeader where ThemeID = @ThemeID and ID = 1        
UPDATE tblColorSettings SET Value = @AddButton where ThemeID = @ThemeID and ID = 2          
UPDATE tblColorSettings SET Value = @SaveButton where ThemeID = @ThemeID and ID = 3          
UPDATE tblColorSettings SET Value = @ClearButton where ThemeID = @ThemeID and ID = 4          
UPDATE tblColorSettings SET Value = @CloseButton where ThemeID = @ThemeID and ID = 5          
UPDATE tblColorSettings SET Value = @PDFButton where ThemeID = @ThemeID and ID = 6          
UPDATE tblColorSettings SET Value = @PreviewButton where ThemeID = @ThemeID and ID = 7          
UPDATE tblColorSettings SET Value = @PopupHeader where ThemeID = @ThemeID and ID = 8          
UPDATE tblColorSettings SET Value = @PopupFooter where ThemeID = @ThemeID and ID = 9          
UPDATE tblColorSettings SET Value = @ConfirmPopupYes where ThemeID = @ThemeID and ID = 10          
UPDATE tblColorSettings SET Value = @ConfirmPopupNo where ThemeID = @ThemeID and ID = 11          
UPDATE tblColorSettings SET Value = @SubMenuColor where ThemeID = @ThemeID and ID = 12         
UPDATE tblColorSettings SET Value = @MenuColor where ThemeID = @ThemeID and ID = 13      
UPDATE tblColorSettings SET Value = @CompanyNameColor where ThemeID = @ThemeID and ID = 14    
UPDATE tblColorSettings SET Value = @GridHeaderBackGround where ThemeID = @ThemeID and ID = 15     
UPDATE tblColorSettings SET Value = @GridHeaderTextColor where ThemeID = @ThemeID and ID = 16  
UPDATE tblColorSettings SET Value = @PopupHeaderText where ThemeID = @ThemeID and ID = 17  
UPDATE tblColorSettings SET Value = @DraftButton where ThemeID = @ThemeID and ID = 18
END  
UPDATE tblAppConfig SET AppValue = @ThemeID where AppID = 9   
select 'Saved Successful'          
END          
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageCreditDebitNote]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageCreditDebitNote]                                                   
@nMode INT,@ID int=NULL,@TransID NVARCHAR(50),@DocDate DATE,@DocRef NVARCHAR(50),@PartyName NVARCHAR(255),@AccountName NVARCHAR(255),
@Credit DECIMAL (25,4)=NULL,@Debit  DECIMAL (25,4)=NULL,@Remarks NVARCHAR(255)=NULL,@Narration NVARCHAR(255)=NULL,
@UID INT,@Status INT=NULL ,@UDFId INT=NULL,@nCurruntStaus INT = NULL ,@UDNDocID_Import NVARCHAR(255)=NULL,
@ImportStatus INT = 0		
AS              
--IF ISNULL(@Status,0)=0              
  BEGIN TRY              
 BEGIN TRAN              
 Declare @DocValue INT, @JVID INT,@PartyId INT,@AccountID INT
            
 SELECT @PartyId = FAID FROM tblFAAccount WHERE AccountName = @PartyName
 SELECT @AccountID = FAID FROM tblFAAccount WHERE AccountName = @AccountName
  
     Declare @DocId NVARCHAR(50),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255) ,@UDFDocId NVARCHAR(255),@CDUDFID nvarchar(255)                            
     DECLARE @SCOPID INT                                           
     SELECT @DocValue=DocValue from tblDocumentSeries WHERE TransID=@TransID               
     --insert into #temp(Docvalue) values (@DocValue)              
     print @DocValue ----              
     SELECT @DocId=DocPrefix + Convert(nvarchar, DocValue)  from tblDocumentSeries WHERE TransID=@TransID                
                    
     print  @DocId ----              
IF ISNULL(@UDFId,0)>0  --- UserDefine series.              
BEGIN                      
    SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId                         
END                     
        
DECLARE @TempStatus INT ,@TempValue DECIMAL (25,6),@TempBalance DECIMAL (25,6)           
IF(ISNULL(@TransId,0) > 0)        
BEGIN        
SELECT @TempValue = NoteValue,@TempBalance = Balance,@TempStatus = Status FROM tblNoteDetails WHERE ID = @ID        
END             
 IF(@Status = 1 OR @ImportStatus = 4) -- CREATE            
   BEGIN      
   SELECT @DocValue=DocValue from tblDocumentSeries WHERE TransID=@TransID               
   SELECT @DocId=DocPrefix + Convert(nvarchar, DocValue)  from tblDocumentSeries WHERE TransID=@TransID                
   UPDATE tblDocumentSeries SET DocValue =  @DocValue + 1 WHERE TransID=@TransID              
   IF ISNULL(@UDFId,0)>0                      
   BEGIN                   
 SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                         
 FROM tblMasterUserDefineNoHeader                         
 WHERE UDNId=@UDFId          
 UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId =@UDFId                         
   --PUT HERE      
   END        
      ELSE IF ISNULL(@UDFId,0)=0 AND ISNULL(@UDNDocID_Import,'')!=''                 
  BEGIN                 
  DECLARE @SALES_UDFDocValue INT,@SALES_UDFDocPrefix NVARCHAR(255),@SALES_UDNID INT,@SALES_CHKCOUNT INT                 
  SELECT @SALES_UDFDocPrefix = LEFT(@UDNDocID_Import, PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)),                 
  @SALES_UDFDocValue = RIGHT(@UDNDocID_Import, LEN(@UDNDocID_Import) - (PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)))                 
  SET @SALES_CHKCOUNT = (SELECT COUNT(UDNId) FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = @TransID)                 
  SET @SALES_UDNID = (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = @TransID)                 
  IF ISNULL(@SALES_CHKCOUNT,0)=0                 
  BEGIN                 
  INSERT INTO tblMasterUserDefineNoHeader (TransId,DocName,DocPrefix,DocValue,CBy,CDate) VALUES                 
  (@TransID,@SALES_UDFDocPrefix,@SALES_UDFDocPrefix,1,@UID,CONVERT(DATE,GETDATE()))                 
  SET @SALES_UDNID = SCOPE_IDENTITY()                 
  INSERT INTO tblMasterUserDefineNoDetail (UDNId,UserId) VALUES (@SALES_UDNID,@UID)                 
  END                 
  UPDATE tblMasterUserDefineNoHeader SET DocValue = @SALES_UDFDocValue WHERE UDNId = @SALES_UDNID                 
  SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                 
  FROM tblMasterUserDefineNoHeader WHERE UDNId=@SALES_UDNID                 
  SET @UDFId = @SALES_UDNID                 
  END          
      END            
      ELSE -- MODIFY            
      BEGIN        
      IF(@TempStatus != @nCurruntStaus)        
      BEGIN        
       RAISERROR ('3',16,1)        
      END        
      IF(@TempValue != @TempBalance)        
      BEGIN        
       RAISERROR ('4',16,1)        
      END        
      SELECT @DocValue=DocValue,@UDFDocValue=UDFDocValue,@UDFDocId=UDFId,@CDUDFID=UDFId FROM tblNoteDetails WHERE ID = @ID                
      --SELECT * FROM tblNoteDetails WHERE IDENT = 671        
 SELECT @DocId=DocPrefix + CONVERT(NVARCHAR, @DocValue) FROM tblDocumentSeries WHERE TransID=@TransID             
 IF ISNULL(@UDFId,0)>0                             
 BEGIN                             
 IF(@UDFId=@UDFDocId)                             
 BEGIN                             
 SELECT @UDFDocId=DocPrefix + CONVERT(NVARCHAR, @UDFDocValue),@UDFDocPrefix=DocPrefix FROM tblMastERUserDefineNoHeader WHERE UDNId=@UDFId                             
 END                             
 IF(@UDFId!=@CDUDFID)                             
 BEGIN                             
 SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMastERUserDefineNoHeader WHERE UDNId=@UDFId                             
 UPDATE tblMastERUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId              
 END                             
 END              
 UPDATE tblNoteDetails SET Status = 2,MBy=@UID,MDate=GETDATE() WHERE ID = @ID            
     UPDATE tblFAJournal SET Status = 2,MBy=@UID,MDate=GETDATE()WHERE TransId = @ID AND DocPrefix = @TransID                
      END            
 --- Credit not insert and update                       
 DECLARE @ActiveCheck INT                     
 DECLARE @ACTIVEACC INT                                            
 IF @TransID='4'                                                    
 BEGIN                       
          
    INSERT INTO tblNoteDetails(DocId,TransID,DocValue,DocDate,RefNo,PartyId,FAID,NoteValue,Balance,Remark,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,[Status],CDate,Clby,Cldate)                                
    VALUES (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@PartyId,@AccountID, @Credit,@Credit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,    
    ISNULL(@Status,1),GETDATE(),  
    case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end)  
    SET @SCOPID=(SELECT SCOPE_IDENTITY())                     
     --SELECT SCOPE_IDENTITY()                    
     --Posting                  
 SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal                  
 INSERT INTO tblFAJournal                                                       
    (DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,[Status],TransId,JVID,Clby,Cldate,Adjusment)                                        
    VALUES                                                      
    (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@AccountID,@Debit,@Credit,@Credit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@JVID  
    ,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)      
                                                   
                                           
    INSERT INTO tblFAJournal                                                     
    ( DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,[Status],TransId,JVID,Clby,Cldate,Adjusment)                                        
    VALUES                                                      
    (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@PartyId,@Credit,@Debit,@Credit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@JVID  
    ,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)        
                                                     
    print @DocValue+1 ----                                                       
ENd                                                
    ELSE  ---- DeBit not insert and update                                                  
    BEGIN                              
             
     --------------------                            
    INSERT INTO tblNoteDetails(DocId,TransID,DocValue,DocDate,RefNo,PartyId,FAID,NoteValue,Balance,Remark,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,[Status],CDate,Clby,Cldate)                                
    VALUES (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@PartyId,@AccountID, @Debit,@Debit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,ISNULL(@Status,1),GETDATE()  
    ,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end)            
                             
    SET @SCOPID=( SELECT SCOPE_IDENTITY())                      
    --SELECT SCOPE_IDENTITY()                  
    SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal              
                                            
    INSERT INTO tblFAJournal              
    ( DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,[Status],TransId,JVID,Clby,Cldate,Adjusment)                                                       
    VALUES              
    (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@PartyId,@Credit,@Debit,@Debit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@JVID  
    ,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)         
                                                 
                    
    INSERT INTO tblFAJournal              
    (DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,[Status],TransId,JVID,Clby,Cldate,Adjusment)                                                      
    VALUES              
    (@DocID,@TransID,@DocValue,@DocDate,@DocRef,@AccountID,@Debit,@Credit,@Debit,@Remarks,@Narration,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@JVID  
    ,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
  ENd                 
  SELECT @SCOPID                   
COMMIT TRAN    
--drop table #temp              
END TRy    
BEGIN CATCH    
ROLLBACK TRAN    
SELECT ERROR_MESSAGE () MSG,ERROR_PROCEDURE () [PROC],ERROR_LINE () LINE    
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageCreditDebitNoteCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageCreditDebitNoteCancel]                      
@DocPrefix INT,@IdentID INT,@UID INT,@Status INT
AS
BEGIN
BEGIN TRY
BEGIN TRANSACTION        
           
DECLARE @TempStatus INT, @TempValue DECIMAL (25,6), @TempBalance DECIMAL (25,6), @PartyAcc INT, @AccID INT ,@nStatus INT
  
SET @nStatus = (SELECT Status FROM tblNoteDetails WHERE ID = @IdentID)  
IF(@Status != @nStatus)  
BEGIN         
RAISERROR ('Status Changed',16,1);  
END      
SELECT @TempStatus = Status,@TempValue = NoteValue,@TempBalance = Balance,@PartyAcc=PartyId,@AccID=FAID FROM tblNoteDetails WHERE ID = @IdentID                
DECLARE @AccCount INT,@AccountName NVARCHAR(255)
IF @TempStatus=4                
BEGIN                
 RAISERROR('Note Already Cancelled',16,1)                
END                 
ELSE                
BEGIN                
IF @TempBalance=@TempValue                
BEGIN                
UPDATE tblNoteDetails SET [Status]= 4,ClBy=@UID,ClDate=GETDATE() WHERE ID = @IdentID           
UPDATE tblFAJournal SET [Status]= 4 WHERE TransId=@IdentID AND DocPrefix=@DocPrefix      
END                 
ELSE                
BEGIN                
 RAISERROR('Amount Mismatched',16,1)                
END                
END              
COMMIT TRANSACTION                  
END TRY             
BEGIN CATCH             
ROLLBACK TRANSACTION               
SELECT ERROR_MESSAGE(),ERROR_MESSAGE(),ERROR_LINE()                
END CATCH                
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageCustomerMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageCustomerMaster]
@Mode int,@ID int = null,@Code nvarchar(255) = null,@Name nvarchar(255) = null,@Billadd1 nvarchar(MAX) = null,@Billadd2 nvarchar(MAX) = null,
@Billadd3 nvarchar(MAX) = null,@Shipadd1 nvarchar(MAX) = null,@shipadd2 nvarchar(MAX) = null,@Shipadd3 nvarchar(MAX) = null,@Pincode nvarchar(15) = null,
@ContactPerson nvarchar(255) = null,@Ph1 nvarchar(25) = null,@Ph2 nvarchar(25) = null,@Mob1 nvarchar(25) = null,@Mob2 nvarchar(25) = null,@Email nvarchar(255) = null,
@PANNumber nvarchar(25) = null,@AadharNo nvarchar(25) = null,@DLNo20 nvarchar(25) = null,@DLNo21 nvarchar(25) = null,@FSSAINo nvarchar(30) = null,@StateID tinyint = null,
@GSTIN nvarchar(40) = null,@CreditTermID tinyint = null,@PaymentModeID tinyint = null,@TaxTypeID tinyint = null,
@FAID int = null,@OverDueValue decimal(25, 4) = null,@OverDueInvCount smallint = null,@CreditLimitValue decimal(25, 4) = null,@CreditLimitCount smallint = null,
@CreditlimitOS decimal(25, 4) = null,@PriceTypeID tinyint = null,@OwnerName nvarchar(255) = null,@DiscountPern decimal(25, 4) = null,@TrackPoint smallint = null,
@ClosingTrackPoint decimal(25, 4) = null,@TCSTax smallint = null,@Latitude nvarchar(25) = null,@Longtitude nvarchar(25) = null,@Distance smallint = null,
@Remark nvarchar(MAX) = null,@Active smallint = null,@UserID smallint = null,@CustomerType SMALLINT = null,@Rating TINYINT = NULL
AS
BEGIN
BEGIN TRY
DECLARE @ActiveCheck NVARCHAR(255), @SUNDRYDEBTORS INT ,@FATYPE INT,@AccID INT ,@ACCOUNTID INT,@CHECKID INT,@cstdate DATE,@ExistCount INT
SELECT @SUNDRYDEBTORS = FAGroup FROM tblFAGroup WHERE AccountGroupName='Sundry Debtors'
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterCustomer WHERE Code = @Code) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterCustomer WHERE Name = @Name) > 0)
BEGIN
RAISERROR('Name',16,1)
END
--IF((SELECT count(*) FROM tblFAAccount WHERE AccountName = @Name) > 0)
--BEGIN
--RAISERROR('Account Name Already Exists',16,1)
--END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName',16,1)
END
set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))
INSERT INTO tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,CBy,CDate,UserAccount,PANNumber,Active)
VALUES(@name,@SUNDRYDEBTORS,0,1,@UserID,GETDATE(),0,@PANNumber,@Active)
SELECT @FAID = FAID FROM tblFAAccount WHERE AccountName = @Name
INSERT INTO tblMasterCustomer(Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,
DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,TaxTypeID,FAID,OverDueValue,OverDueInvCount,CreditLimitValue,CreditLimitCount,CreditlimitOS,
PriceTypeID,OwnerName,DiscountPern,TrackPoint,ClosingTrackPoint,TCSTax,Latitude,Longtitude,Distance,Remark,Active,CBy,CDate,CustomerType,Rating) VALUES
(@Code,@Name,@Billadd1,@Billadd2,@Billadd3,@Shipadd1,@shipadd2,@Shipadd3,@Pincode,@ContactPerson,@Ph1,@Ph2,@Mob1,@Mob2,@Email,@PANNumber,@AadharNo,@DLNo20,@DLNo21,@FSSAINo,
@StateID,@GSTIN,@CreditTermID,@PaymentModeID,@TaxTypeID,@FAID,@OverDueValue,@OverDueInvCount,@CreditLimitValue,@CreditLimitCount,@CreditlimitOS,
@PriceTypeID,@OwnerName,@DiscountPern,@TrackPoint,@ClosingTrackPoint,@TCSTax,@Latitude,@Longtitude,@Distance,@Remark,@Active,@UserID,GETDATE(),@CustomerType,@Rating)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
select @ACCOUNTID = FAID from tblMasterCustomer where ID = @ID
IF((SELECT count(*) FROM tblMasterCustomer WHERE Code = @Code AND ID != @ID) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterCustomer WHERE Name = @Name AND ID != @ID) > 0)
BEGIN
RAISERROR('Name',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name and FAID != @ACCOUNTID
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName Already Exists',16,1)
END
--IF((SELECT count(*) FROM tblFAAccount WHERE AccountName = @Name AND FAID != @FAID) > 0)
--BEGIN
--RAISERROR('Account Name Already Exists',16,1)
--END --Previous ID data Posting in History table
insert into tblMasterCustomerVendorHistory (FormID,ID,Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,
ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,
TaxTypeID,OSValue,FAID,OverDueValue,OverDueInvCount,CreditLimitValue,CreditLimitCount,CreditlimitOS,PriceTypeWeekCycle,
OwnerName,DiscountPern,TrackPoint,ClosingTrackPoint,TCSTax,Latitude,Longtitude,Distance,Remark,CustomerType,Rating,
Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
select 26,ID,Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,
AadharNo,DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,TaxTypeID,OSValue,FAID,OverDueValue,OverDueInvCount,
CreditLimitValue,CreditLimitCount,CreditlimitOS,PriceTypeID,OwnerName,DiscountPern,TrackPoint,ClosingTrackPoint,TCSTax,
Latitude,Longtitude,Distance,Remark,CustomerType,Rating,Active,CBy,CDate,MBy,MDate,@UserID,GETDATE() from tblMasterCustomer where ID = @ID

set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))

UPDATE tblFAAccount
SET AccountName=@Name,AccountGroup=@SUNDRYDEBTORS,MBy=@UserID,MDate=GETDATE(),UserAccount=0,PANNumber=@PANNumber,Active = @Active
WHERE FAID=@ACCOUNTID

UPDATE tblMasterCustomer SET Code = @Code,Name = @Name,Billadd1 = @Billadd1,Billadd2 = @Billadd2,Billadd3 = @Billadd3,Shipadd1 = @Shipadd1,shipadd2 = @shipadd2,
Shipadd3 = @Shipadd3,Pincode = @Pincode,ContactPerson = @ContactPerson,Ph1 = @Ph1,Ph2 = @Ph2,Mob1 = @Mob1,Mob2 = @Mob2,Email = @Email,PANNumber = @PANNumber,
AadharNo = @AadharNo,DLNo20 = @DLNo20,DLNo21 = @DLNo21,FSSAINo = @FSSAINo,StateID = @StateID,GSTIN = @GSTIN,CreditTermID = @CreditTermID,
PaymentModeID = @PaymentModeID,TaxTypeID = @TaxTypeID,FAID = @FAID,OverDueValue = @OverDueValue,OverDueInvCount = @OverDueInvCount,
CreditLimitValue = @CreditLimitValue,CreditLimitCount = @CreditLimitCount,CreditlimitOS = @CreditlimitOS,PriceTypeID = @PriceTypeID,OwnerName = @OwnerName,
DiscountPern = @DiscountPern,TrackPoint = @TrackPoint,ClosingTrackPoint = @ClosingTrackPoint,TCSTax = @TCSTax,Latitude = @Latitude,Longtitude = @Longtitude,
Distance = @Distance,Remark = @Remark,Active = @Active,MBy = @UserID,MDate = GETDATE(),CustomerType = @CustomerType,Rating = @Rating WHERE ID=@ID

SELECT @ID
END
IF(@Mode = 3)
BEGIN
if(isnull(@Billadd1,1) = 0)
begin
delete from tblBeatSalesmanMapping where CustomerID = @ID
end
declare @BeatID smallint = (select ID from tblMasterBeat where Name = @Code)
declare @SMID smallint = (select ID from tblMasterSalesman where Name = @Name)
INSERT INTO tblBeatSalesmanMapping VALUES (@ID,@BeatID,@SMID)
END
IF(@Mode = 4)
BEGIN
SELECT TC.ID,TC.Code,TC.Name,MCT.Name CustomerType,TC.Mob1 MobNo,TC.GSTIN,RT.RatingName,TC.Active FROM tblMasterCustomer TC
LEFT JOIN tblMasterCustomerType MCT ON MCT.ID = TC.CustomerType
LEFT JOIN tblRatings RT ON RT.ID = TC.Rating
ORDER BY TC.Code,TC.Name
END
IF(@Mode = 5)
BEGIN
SELECT * from tblMasterCustomer WHERE ID = @ID
END
IF(@Mode = 6)
BEGIN
select 1 FType,'Price Type' Form,ID,PriceType Descriptions from tblPriceType WHERE Active = 1 AND ID NOT IN (6)
union
select 2 FType,'Tax Type' Form,TaxTypeID,TaxTypeName Descriptions from tblMasterTaxType WHERE Active = 1
union
select 3 FType,'Payment Mode' Form,ID,PaymentMode Descriptions from tblPaymentMode WHERE Active = 1
union
select 4 FType,'Credit Term' Form,ID,Name Descriptions from tblMasterCreditTerm WHERE Active = 1
union
select 5 FType,'State Names' Form,StateID,StateName Descriptions from tblGSTStateNameandCode WHERE Active = 1
union
select 6 FType,'Rating' Form,ID,RatingName Descriptions from tblRatings WHERE Active = 1
union
select 7 FType,'Customer Type' Form,ID,Name Descriptions from tblMasterCustomerType WHERE Active = 1
union
select 8 FType,'Beat' Form,ID,Name from tblMasterBeat where Active = 1
union
select 9 FType,'Salesman' Form,ID,Name from tblMasterSalesman where Active = 1
order by FType,Descriptions
END
IF(@Mode = 7)
BEGIN
select BSM.CustomerID,MB.Name Beat,SM.Name Salesman from tblBeatSalesmanMapping BSM
JOIN tblMasterBeat MB ON MB.ID = BSM.BeatID
JOIN tblMasterSalesman SM ON SM.ID = BSM.SalesmanID
where CustomerID = @ID
ENd
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(), ERROR_LINE()
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageFAJournal]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageFAJournal]                     
@tvpManageJE AS [tvpManageJE] READONLY ,@tvpAdjNoteInJE AS [tvpAdjNoteInJE] READONLY ,@UDFId INT =NULL,        
@nMode INT = 1,@CurrentStatus SMALLINT = null,@ModJVID INT = null,@ModUID INT = null,@ImportStatus INT = 0      
AS      
BEGIN TRY        
DECLARE @DocValue INT,@DocId VARCHAR(255),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255) ,@UDFDocId NVARCHAR(255),        
@ActiveCheck NVARCHAR(255),@Bal DECIMAL (25,6),@ScopeId INT,@AdjustedAmt DECIMAL(25,6),@RowIndex INT=0,@ChkStatus INT
if(ISNULL(@nMode,0) = 3) -- IF VARIANT SET STATUS TO 1(create)      
BEGIN      
SET @nMode = 1;
END   
IF(@nMode = 1)-- CREATE & VARIANT        
BEGIN        
SELECT @DocValue=DocValue ,@DocId=DocPrefix +CONVERT(NVARCHAR,DocValue) FROM tblDocumentSeries WHERE TransID = 9        
UPDATE tblDocumentSeries SET DocValue =ISNULL(DocValue,0)+1 WHERE TransID = 9       
IF ISNULL(@UDFId,0)>0        
BEGIN        
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                     
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId        
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId        
END        
END        
ELSE -- Modify        
BEGIN        
SELECT @DocValue=DocValue,@DocId=DocID,@UDFDocValue=UDFDocValue,@UDFDocPrefix=UDFDocPrefix,@UDFDocId=UDFDocId,@ChkStatus = Status        
 FROM tblFAJournal WHERE DocPrefix =9 AND JVID =@ModJVID          
UPDATE tblFAJournal SET Status = 2,MBy = @ModUID,MDate=GETDATE() WHERE DocPrefix =9 AND JVID =@ModJVID         
END        
--Get maintaing JV Id                     
DECLARE @JVID INT                     
SELECT @JVID=MAX(ISNULL(JVID,0))+1 FROM tblFAJournal                     
DECLARE @UID INT,@Date DATE ,@DocRef NVARCHAR(255)=NULL,@AccountID INT,@Debit DECIMAL (25,6),@Credit DECIMAL (25,6),                     
@Remarks NVARCHAR(255)=NULL,@Narration NVARCHAR(255)=NULL,@Adjustment NVARCHAR(10)                     
DECLARE cursor_JE CURSOR FOR SELECT * FROM @tvpManageJE                     
OPEN cursor_JE                     
FETCH NEXT FROM cursor_JE INTO @Date,@DocRef,@AccountID,@Adjustment,@Debit,@Credit,@Remarks,@Narration,@UID                     
WHILE @@FETCH_STATUS =0                     
BEGIN                     
                   
IF ISNULL (@Credit,0)<>0                     
BEGIN                     
SET @Bal = @Credit            
END                     
ELSE                     
BEGIN                     
SET @Bal = @Debit                     
END                     
                     
                     
INSERT INTO tblFAJournal(JVID,DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],                     
Adjusment,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,AdjValue,ClBy,ClDate)                     
VALUES(@JVID,@DocId,9,@DocValue,@Date,@DocRef,@AccountID,@Credit,@Debit,@Bal,@Remarks,@Narration,      
CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN CASE WHEN ISNULL(@nMode,1) = 1 THEN 1 ELSE 3 END ELSE @ImportStatus END,      
@Adjustment,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@UID,GETDATE(),@Bal,      
case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end)                     
--Get Scope Id from header table                     
SET @ScopeId=(SELECT SCOPE_IDENTITY ());                     
                     
                     
DECLARE @NoteID INT,@AdjAmt DECIMAL (25,6),@CurrentAmount DECIMAL (25,6),@Status SMALLINT ,@TrnasType NVARCHAR(255),@Balance DECIMAL(25,6)                     
DECLARE cursor_JEAdjNote CURSOR FOR SELECT NoteId,[Balance],[TransType] FROM @tvpAdjNoteInJE WHERE AccID=@AccountID                     
OPEN cursor_JEAdjNote                     
FETCH NEXT FROM cursor_JEAdjNote INTO @NoteID,@AdjAmt ,@TrnasType                     
WHILE @@FETCH_STATUS =0                
BEGIn                     
update tblFAJournal SET TransType = @TrnasType WHERE AccountID=@AccountID                     
IF ISNULL(@TrnasType ,'')='Sales'                   
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranSalesHeader WHERE InvId =@NoteID AND DocPrefix=2                     
END                     
IF ISNULL(@TrnasType ,'')='Sales Return'                     
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranSalesHeader WHERE InvId =@NoteID AND DocPrefix=6                     
END                     
IF ISNULL(@TrnasType,'')='Purchase'                     
BEGIN                     
SELECT @CurrentAmount=Balance,@Status=[Status] FROM tblTransPurchaseHeader WHERE ID=@NoteID AND TransID=1                    
END                     
IF ISNULL(@TrnasType,'')='Purchase Return'                     
BEGIN             
select @TrnasType    
--SELECT @CurrentAmount=Balance,@Status=[Status] FROM tblTranBillHeader WHERE BillID=@NoteID AND DocPrefix=9                     
END                     
IF ISNULL(@TrnasType ,'')='Collection'                     
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranCollectionHeader WHERE ColID =@NoteID AND DocPrefix=5                     
END                     
IF ISNULL(@TrnasType ,'')='Other Collection'                     
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranCollectionHeader WHERE ColID =@NoteID AND DocPrefix=17                     
END                     
IF ISNULL(@TrnasType ,'')='Payment'                     
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranPaymentHeader WHERE PYID =@NoteID AND PYPrefix=10                     
END                     
IF ISNULL(@TrnasType ,'')='Other Payment'                     
BEGIN             
select @TrnasType    
--SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranPaymentHeader WHERE PYID =@NoteID AND PYPrefix=18                     
END                     
IF ISNULL(@TrnasType ,'')='Payable Voucher'                     
BEGIN                     
SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranPRVoucher WHERE ID =@NoteID AND TransID=6                    
END                     
IF ISNULL(@TrnasType ,'')='Receivable Voucher'                     
BEGIN                     
SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblTranPRVoucher WHERE ID =@NoteID AND TransID=7                     
END                     
IF ISNULL(@TrnasType ,'')='Contra'                     
BEGIN                     
SELECT @CurrentAmount =Balance,@Status= Status FROM tblTranContra WHERE ID =@NoteID              
END                     
IF ISNULL(@TrnasType ,'')='Credit Note' OR ISNULL(@TrnasType ,'')='Debit Note'                     
BEGIN                     
SELECT @CurrentAmount =Balance,@Status=[Status] FROM tblNoteDetails WHERE ID =@NoteID              
END                    
IF ISNULL(@TrnasType ,'')='Service Bill' OR ISNULL(@TrnasType ,'')='Service Invoice'                    
BEGIN                     
select @TrnasType    
--SELECT @CurrentAmount=Balance,@Status=[Status] FROM tblTranServiceHeader WHERE ServiceID=@NoteID                    
END                    
IF ISNULL(@TrnasType ,'')='Service Bill' OR ISNULL(@TrnasType ,'')='Service Invoice'                    
BEGIN           
select @TrnasType    
--SELECT @CurrentAmount=Balance,@Status=[Status] FROM tblTranServiceHeader WHERE ServiceID=@NoteID                    
END                   
                                  
ELSE                     
BEGIN                     
IF ISNULL(@TrnasType,'')='Sales'                     
BEGIN                     
select @TrnasType       
--UPDATE tblTranSalesHeader  SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE InvId =@NoteID AND DocPrefix=2            
END                     
IF ISNULL(@TrnasType,'')='Sales Return'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranSalesHeader  SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE InvId =@NoteID AND DocPrefix=6            
END                     
IF ISNULL(@TrnasType,'')='Purchase'                     
BEGIN            
    
UPDATE tblTransPurchaseHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE ID=@NoteID AND TransID=7              
--select * from tblTranBillHeader where DocValue = 509            
END                     
IF ISNULL(@TrnasType,'')='Purchase Return'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranBillHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE BillID=@NoteID AND DocPrefix=9             
END                     
IF ISNULL(@TrnasType,'')='Collection'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranCollectionHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE ColID=@NoteID AND DocPrefix=5            
END                     
IF ISNULL(@TrnasType,'')='Other Collection'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranCollectionHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE ColID=@NoteID AND DocPrefix=17            
END                     
IF ISNULL(@TrnasType,'')='Payment'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranPaymentHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE PYID=@NoteID AND PYPrefix = 10            
END                     
IF ISNULL(@TrnasType,'')='Other Payment'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranPaymentHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE PYID=@NoteID AND PYPrefix = 18            
END                     
IF ISNULL(@TrnasType ,'')='Payable Voucher'                     
BEGIN                     
select @TrnasType    
UPDATE tblTranPRVoucher SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE ID =@NoteID AND TransID=15             
END                     
IF ISNULL(@TrnasType ,'')='Receivable Voucher'                     
BEGIN                     
--UPDATE tblTranPRVoucher SET [Status]=5,Balance=0.00 WHERE PRVID =@NoteID AND DocPrefix=16              
UPDATE tblTranPRVoucher SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance= (Balance - @AdjAmt) WHERE ID =@NoteID AND TransID=16            
END                     
IF ISNULL(@TrnasType ,'')='Contra'                     
BEGIN                     
--UPDATE tblTranContra SET [Status]=5,Balance=0.00 WHERE ContraID =@NoteID            
UPDATE tblTranContra SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance = (Balance - @AdjAmt) WHERE ID=@NoteID            
--select * from tblTranContra where DocValue = 135            
END                     
IF ISNULL(@TrnasType ,'')='Credit Note' OR ISNULL(@TrnasType ,'')='Debit Note'        
BEGIN                     
UPDATE tblNoteDetails SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance = (Balance - @AdjAmt) WHERE ID=@NoteID            
            
END                    
IF ISNULL(@TrnasType ,'')='Service Bill' OR ISNULL(@TrnasType ,'')='Service Invoice'                     
BEGIN                     
select @TrnasType    
--UPDATE tblTranServiceHeader SET Status = (CASE WHEN @CurrentAmount = @AdjAmt THEN 5 ELSE @Status END),Balance = (Balance - @AdjAmt) WHERE ServiceID=@NoteID            
END                    
                     
END                     
FETCH NEXT FROM cursor_JEAdjNote INTO @NoteID,@AdjAmt,@TrnasType             
END                     
CLOSE cursor_JEAdjNote                     
DEALLOCATE cursor_JEAdjNote                     
SET @RowIndex= @RowIndex+1                     
FETCH NEXT FROM cursor_JE INTO @Date,@DocRef,@AccountID,@Adjustment,@Debit,@Credit,@Remarks,@Narration,@UID                     
END                     
CLOSE cursor_JE                     
DEALLOCATE cursor_JE                     
                     
DECLARE @FASerial INT=1,@FAnCount INT=(SELECT COUNT(*) FROM @tvpAdjNoteInJE)                     
CREATE TABLE #TEMP1 (SNO INT IDENTITY,ACCid INT,NoteID INT,Balance DECIMAL(25,9),Docdate DATE,TransType NVARCHAR(255))                   
WHILE @FAnCount>0                     
BEGIN                     
INSERT INTO #TEMP1 SELECT * FROM @tvpAdjNoteInJE                     
SELECT @AccountID=ACCid,@DocValue=NoteID,@TrnasType=TransType,@Balance=Balance FROM #TEMP1 WHERE SNO =@FASerial                     
INSERT INTO tblFAJournelCancel(JVID,Adjustment,AccountID,Status,NoteID,TransTpe)                     
VALUES (@JVID,@Balance,@AccountID,1,@DocValue,@TrnasType)        
SET @FAnCount =@FAnCount-1                     
SET @FASerial =@FASerial+1                     
END                     
SELECT @ScopeId;                     
                     
END TRY                     
BEGIN CATCH                     
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE() ,ERROR_LINE(),@RowIndex ;                     
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageFAJournalCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageFAJournalCancel]               
@nMode INT,@CurrentStatus SMALLINT,@DocValue INT,@UID INT,@TransType NVarchar(255)=NULL,@JEID INT  
--@tvpCheckStatusIdentity dbo.tvpCheckStatusIdentity READONLY
AS    
begin tran    
BEGIN TRY               
DECLARE @CurrentAmount DECIMAL (25,6),@Balance DECIMAL (25,6),@Status INT ,@DocPrefix INT               
SELECT @Status=([Status]) FROM tblFAJournal WHERE DocPrefix =9 AND JVID =@DocValue        
--SELECT * FROM tblFAJournal WHERE JVID = 31656           
SELECT @CurrentAmount=SUM(Credit)+SUM(Debit),@Balance=SUM(Balance) FROM tblFAJournal WHERE DocPrefix =9 AND JVID =@DocValue               
IF @CurrentStatus !=ISNULL(@Status,0)               
BEGIN               
RAISERROR('Status Already Changed',16,1)               
END  
IF @CurrentAmount !=@Balance               
BEGIN               
RAISERROR('Amount Miss Matched',16,1)               
END               
-- revert adj documents             
--DECLARE @Serial INT=1,@NoCount INT=1,@NoteID INT,@AdjBalance DECIMAL(25,6),@DocIDCount INT              
--CREATE TABLE #Temp(Serial INT IDENTITY,NoteID INT,TransType NVARCHAR(255),Balance DECIMAL(25,6))               
--SELECT @JEID =JVID FROM tblFAJournal WHERE NoteID= @JEID               
--INSERT INTO #Temp SELECT NoteID,TransTpe,Adjustment FROM tblFAJournelCancel WHERE JVID=@JEID      
-----SELECT * FROM tblFAJournelCancel WHERE NoteID  = 81755             
--DECLARE @nCount INT =(SELECT COUNT(*) FROM #Temp)               
--WHILE @nCount>0               
--BEGIN               
--SELECT @TransType=Transtype,@NoteID=NoteID,@AdjBalance=Balance FROM #Temp WHERE Serial=@Serial            
            
--SET @DocPrefix = (CASE 
--WHEN @TransType='Sales' THEN 2 WHEN @TransType='Sales Return' THEN 6 WHEN @TransType='Purchase' THEN 7 WHEN @TransType='Purchase Return' THEN 9
--WHEN @TransType='Collection' THEN 5 WHEN @TransType='Other Collection' THEN 17 WHEN @TransType='Payment' THEN 10 WHEN @TransType='Other Payment' THEN 18
--WHEN @TransType='Contra' THEN 13 WHEN @TransType='Payable Voucher' THEN 15 WHEN @TransType='Receivable Voucher' THEN 16 WHEN @TransType='Credit Note' THEN 3
--WHEN @TransType='Debit Note' THEN 4 WHEN @TransType='Service Bill' THEN 28 WHEN @TransType='Service Invoice' THEN 29 ELSE 0 END)            
            
--IF ISNULL(@DocPrefix,0)=2               
--BEGIN              
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranSalesHeader              
--WHERE DocId IN (SELECT DocId FROM tblTranSalesHeader WHERE InvId=@NoteID)           
--AND (InvDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))              
              
--UPDATE ND SET ND.[Status]= (CASE WHEN ISNULL(@DocIDCount,0)=1 THEN 1 ELSE 3 END),              
--Balance += @AdjBalance FROM tblTranSalesHeader ND              
--JOIN tblFAJournelCancel AS FAC      
--ON FAC.NoteID =ND.InvId      
--WHERE ND.DocPrefix=2 AND ND.InvId =@NoteID      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=6      
--BEGIN      
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranSalesHeader      
--WHERE DocId IN (SELECT DocId FROM tblTranSalesHeader WHERE InvId=@NoteID)      
--AND (InvDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))      
      
--UPDATE ND SET ND.[Status]=(CASE WHEN ISNULL(@DocIDCount,0)=1 THEN (CASE WHEN TransactionType=2 THEN 6 ELSE 7 END) ELSE 3 END),Balance+=@AdjBalance               
--FROM tblTranSalesHeader ND      
--JOIN tblFAJournelCancel AS FAC      
--ON FAC.NoteID =ND.InvId      
--WHERE ND.DocPrefix=6 AND ND.InvId =@NoteID      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=7      
--BEGIN      
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranBillHeader      
--WHERE DocID IN (SELECT DocID FROM tblTranBillHeader WHERE BillID=@NoteID)      
--AND (BillDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))      
      
--UPDATE ND SET ND.[Status]=(CASE WHEN ISNULL(@DocIDCount,0)=1 THEN 1 ELSE 3 END),      
--Balance += @AdjBalance FROM tblTranBillHeader ND      
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.BillID      
--WHERE ND.DocPrefix=7 AND ND.BillID=@NoteID      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=9      
--BEGIN      
--UPDATE ND SET ND.[Status]=6,Balance += @AdjBalance FROM tblTranBillHeader ND      
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.BillID      
--WHERE ND.DocPrefix=9 AND ND.BillID=@NoteID      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=5 OR ISNULL(@DocPrefix,0)=17      
--BEGIN       UPDATE ND SET ND.[Status]=1,Balance += @AdjBalance FROM tblTranCollectionHeader ND      
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.ColID      
--WHERE ND.DocPrefix=@DocPrefix AND ND.ColID =@NoteID      
--AND ND.DocPrefix=@DocPrefix      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=10 OR ISNULL(@DocPrefix,0)=18      
--BEGIN      
--UPDATE ND SET ND.[Status]=1,Balance += @AdjBalance FROM tblTranPaymentHeader ND      
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.PYID      
--WHERE ND.PYID=@NoteID AND ND.PYPrefix=@DocPrefix      
--END      
--ELSE IF ISNULL(@DocPrefix,0)=15 OR ISNULL(@DocPrefix,0)=16      
--BEGIN      
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranPRVoucher      
--WHERE DocID IN (SELECT DocID FROM tblTranPRVoucher WHERE PRVID=@NoteID)      
--AND (DocDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))      
      
--UPDATE ND SET ND.[Status]=(CASE WHEN ISNULL(@DocIDCount,0)=1 THEN 1 ELSE 3 END),              
--Balance += @AdjBalance FROM tblTranPRVoucher ND               
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.PRVID               
--WHERE ND.PRVID=@NoteID AND ND.DocPrefix=@DocPrefix               
--END               
--ELSE IF ISNULL(@DocPrefix,0)=13               
--BEGIN            
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranContra              
--WHERE DocID IN (SELECT DocID FROM tblTranContra WHERE ContraID=@NoteID)          
--AND (DocDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))              
               
--UPDATE ND SET ND.[Status]=(CASE WHEN ISNULL(@DocIDCount,0)=1 THEN 1 ELSE 3 END),              
--Balance += @AdjBalance FROM tblTranContra ND               
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.ContraID               
--WHERE ND.ContraID=@NoteID AND ND.DocPrefix=@DocPrefix               
--END               
--ELSE IF ISNULL(@DocPrefix,0)=3 OR ISNULL(@DocPrefix,0)=4               
--BEGIN               
--UPDATE ND SET ND.[Status]=1,Balance += @AdjBalance FROM tblNoteDetails ND               
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.Ident               
--WHERE ND.Ident=@NoteID AND ND.DocPrefix=@DocPrefix               
--END               
--ELSE IF ISNULL(@DocPrefix,0)=28 OR ISNULL(@DocPrefix,0)=29            
--BEGIN             
--SET @DocIDCount = (SELECT COUNT(*) FROM tblTranServiceHeader              
--WHERE DocID IN (SELECT DocID FROM tblTranServiceHeader WHERE ServiceID=@NoteID)          
--AND (ServiceDate BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration)))              
              
--UPDATE ND SET ND.[Status]= (CASE WHEN ISNULL(@DocIDCount,0)=1 THEN 1 ELSE 3 END),Balance += @AdjBalance     
--FROM tblTranServiceHeader ND              
--JOIN tblFAJournelCancel AS FAC ON FAC.NoteID =ND.ServiceID            
--WHERE ND.ServiceID =@NoteID               
--END            
               
--SET @Serial=@Serial+1               
--SET @nCount=@nCount-1               
--END               
IF(@nMode = 4)  
BEGIN  
UPDATE FA SET FA.[Status]=4,ClBy =@UID ,ClDate =GETDATE () FROM tblFAJournal FA WHERE FA.DocPrefix =9 AND FA.JVID =@DocValue               
END  
commit tran    
END TRY               
BEGIN CATCH               
rollback tran    
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE();               
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManageFinancialAccount]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspManageFinancialAccount 3
CREATE PROC [dbo].[uspManageFinancialAccount]
@Mode INT,@FAID int = null,@AccountName nvarchar(MAX) = null,@AccountGroup nvarchar(MAX) = null,@OpeningBalance decimal(25, 4) = null,@SACCode nvarchar(25) = null,@PANNumber nvarchar(25) = null,
@FATypeID tinyint = null,@UserAccount tinyint = null,@Active bit = null,@CBy smallint = null
as
begin
BEGIN TRY
DECLARE @AccGrpID SMALLINT
IF(@Mode = 1)
BEGIn
IF((SELECT count(*) FROM tblFAAccount WHERE AccountName = @AccountName) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @AccGrpID = FAGroup FROM tblFAGroup WHERE AccountGroupName = @AccountGroup
if(ISNULL(@AccGrpID,0) = 0)
BEGIN
RAISERROR('Account Group does not Exists',16,1)
END
set @AccountName = (select dbo.ProperCase(@AccountName))
insert into tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,UserAccount,SACCode,PANNumber,Active,CBy,CDate)
Values (@AccountName,@AccGrpID,@OpeningBalance,@FATypeID,@UserAccount,@SACCode,@PANNumber,@Active,@CBy, GETDATE())
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIn
IF((SELECT count(*) FROM tblFAAccount WHERE AccountName = @AccountName AND FAID != @FAID) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @AccGrpID = FAGroup FROM tblFAGroup WHERE AccountGroupName = @AccountGroup
if(ISNULL(@AccGrpID,0) = 0)
BEGIN
RAISERROR('Account Group does not Exists',16,1)
END

INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Column5,Column6,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
(select 24,*,@CBy, GETDATE() from tblFAAccount where FAID = @FAID)

set @AccountName = (select dbo.ProperCase(@AccountName))
UPDATE tblFAAccount SET AccountName = @AccountName,AccountGroup = @AccGrpID,OpeningBalance = @OpeningBalance,FATypeID = @FATypeID,
UserAccount = @UserAccount,SACCode = @SACCode,PANNumber = @PANNumber,Active = @Active,MBy = @CBy ,MDate = GETDATE() WHERE FAID = @FAID
SELECT @FAID
END
IF(@Mode = 3)
BEGIN
SELECT MBA.FAID,MBA.AccountName,MB.AccountGroupName,OpeningBalance,SACCode,PANNumber,FATypeID,MBA.Active from tblFAAccount MBA
JOIN tblFAGroup MB ON MB.FAGroup = MBA.AccountGroup order by AccountName
END
IF(@Mode = 4)
BEGIN
SELECT * from tblFAAccount where @AccountName = @AccountName
END
IF(@Mode = 5)
BEGIN
SELECT * from tblFAGroup where Active = 1 order by AccountGroupName
END
IF(@Mode = 6)
BEGIN
declare @strqry nvarchar(max)= '',@i int =1,@count int = 25
while(@count >= @i)
begin
set @strqry += 'SELECT MBA.AccountName,MB.AccountGroupName,OpeningBalance,SACCode,PANNumber,MBA.Active from tblFAAccount MBA
LEFT JOIN tblFAGroup MB ON MB.FAGroup = MBA.AccountGroup '
if(@count != @i)
begin
set @strqry += ' union all '
end
set @i +=1;
end
exec(@strqry)
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageFinancialAccountGroup]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageFinancialAccountGroup]
@Mode INT,@ID int = null,@AccountGroupName nvarchar(MAX) = null,@ParentGroup nvarchar(MAX) = null,@TypeID tinyint = null,
@UserGroup tinyint = null,@LevelID tinyint = null,@Active bit = null,@CBy int = null
as
begin
BEGIN TRY
DECLARE @AccGrpParID SMALLINT = 0
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblFAGroup WHERE AccountGroupName = @AccountGroupName) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
IF(ISNULL(@ParentGroup,'') != '')
BEGIN
SELECT @AccGrpParID = FAGroup FROM tblFAGroup WHERE AccountGroupName = @ParentGroup and TypeID = @TypeID
if(ISNULL(@AccGrpParID,0) = 0)
BEGIN
RAISERROR('Parent Group does not Exists',16,1)
END
END
set @AccountGroupName = (select dbo.ProperCase(@AccountGroupName))
insert into tblFAGroup(AccountGroupName,ParentGroup,TypeID,UserGroup,LevelID,Active,CBy,CDate)
Values (@AccountGroupName,@AccGrpParID,@TypeID,@UserGroup,@LevelID,@Active,@CBy, GETDATE())
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
IF((SELECT count(*) FROM tblFAGroup WHERE AccountGroupName = @AccountGroupName AND FAGroup != @ID) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
IF(ISNULL(@ParentGroup,'') != '')
BEGIN
SELECT @AccGrpParID = FAGroup FROM tblFAGroup WHERE AccountGroupName = @ParentGroup and TypeID = @TypeID
if(ISNULL(@AccGrpParID,0) = 0)
BEGIN
RAISERROR('Parent Group does not Exists',16,1)
END
END
INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
(select 25,*,@CBy, GETDATE() from tblFAGroup where FAGroup = @ID)
set @AccountGroupName = (select dbo.ProperCase(@AccountGroupName))
UPDATE tblFAGroup SET AccountGroupName = @AccountGroupName,ParentGroup = @AccGrpParID,TypeID = @TypeID,UserGroup = @UserGroup,
LevelID = @LevelID,Active = @Active,MBy = @CBy ,MDate = GETDATE() WHERE FAGroup = @ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT FAG.FAGroup,FAG.AccountGroupName,FAG.TypeID,ACT.TypeName,FAGPAR.AccountGroupName ParentGrp,FAG.Active from tblFAGroup FAG
JOIN tblAccountType ACT ON ACT.TypeID = FAG.TypeID
LEFT JOIN tblFAGroup FAGPAR ON FAGPAR.FAGroup = FAG.ParentGroup order by FAG.AccountGroupName
END
IF(@Mode = 4)
BEGIN
SELECT * from tblFAGroup where AccountGroupName = @AccountGroupName
END
IF(@Mode = 5)
BEGIN
SELECT * from tblAccountType where Active = 1 order by TypeName
END
IF(@Mode = 6)
BEGIN
SELECT * from tblFAGroup where TypeID = @AccountGroupName order by AccountGroupName

END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageFullColl]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageFullColl]
@DocPrefix INT,@UDFId INT=NULL,@Header dbo.tvpCollHeader READONLY,@Detail dbo.tvpCollDetail READONLY,
@Mop dbo.tvpCollMop READONLY,@IsImplicit INT=NULL,@BeatID INT=NULL,@SalesManID INT=NULL,@nAllowNegativeBal INT=NULL,
@tvpSaveDenomination dbo.tvpSaveDenomination READONLY,@nStatus INT = NULL,@nCollID INT = NULL,@CurruntStatus INT = NULL,
@BTMode INT = 0,@Remarks NVARCHAR(MAX)=NULL,@Narration NVARCHAR(MAX) = NULL
AS
BEGIN
BEGIN TRY
SET DATEFORMAT dmy;
DECLARE @ScopeIdent INT
--To Count Header TempTable Rows Count
DECLARE @TempHeader TABLE(HeaderIdent INT IDENTITY(1,1),[DATE] DATE,[CollPYType] INT,RefNo NVARCHAR(255),AccID INT,
ColAmt DECIMAL (25,6),Balance DECIMAL (25,6),ColMode NVARCHAR(50),[Status] INT,ExAccID INT,[UID] INT,[Type] INT,[SerialNo] INT,
VisaPern DECIMAL (25,6),VisaAmt DECIMAL (25,6));--Create Table Variable
DECLARE @PaymentStatusChange INT
CREATE TABLE #TempDetail (DetailIdent INT IDENTITY(1,1),AccID INT,DocPrefix INT,DocValue INT,DocID INT,DocDate NVARCHAR(50),
Balance DECIMAL (25,6),ColValue DECIMAL (25,6),AdjAmt DECIMAL (25,6),DiscPerc NVARCHAR(50),DiscAmt DECIMAL (25,6),
FullyAdj INT,FullyAdjAmt DECIMAL (25,6),TotalAmtAdj DECIMAL (25,6),[SerialNo] INT);--Create Table Variable

INSERT INTO @TempHeader SELECT [DATE],[CoLLPYType],RefNo,AccId,ColAmt,Balance,ColMode,[Status],ExAccId,[UID],[Type],[SerialNo],[VisaPern],[VisaAmt]
FROM @Header ORDER BY AccId,[SerialNo]
--Declare TempVariable
DECLARE @HeaderCount INT ,@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255) ,@UDFDocId NVARCHAR(255),@CheckUDFId INT
SET @HeaderCount=(SELECT COUNT(*) FROM @TempHeader)
DECLARE @TempHeaderRowCount INT = 1


--Checking Rows Count IN Header TempTable
WHILE(@TempHeaderRowCount<=@HeaderCount)
BEGIn
--Declaration Parat
DECLARE @DocValue int,@WriteOffAmt DECIMAL (25,6),@AddAdjAmt DECIMAL (25,6),@AddDisAmt DECIMAL (25,6)
DECLARE @DocID NVARCHAR(50),@ColDate DATE,@ColModeId INT,@CollPYType INT,@PreviousTranDate DATE
DECLARE @CollAmt DECIMAL (25,6),@AccId INT ,@ExpanceAccID INT,@DocRefNo NVARCHAR(255),@SerialNo INT,@UID INT,@VisaPern DECIMAL (25,6), @VisaAmt DECIMAL (25,6)
SELECT @UID=[UID] FROM @TempHeader WHERE HeaderIdent=@TempHeaderRowCount
IF(ISNULL(@nStatus,1) = 1)
BEGIN
--Get The DocValue From tblDocumentSeries
SET @DocValue=(SELECT DocValue FROM tblDocumentSeries WHERE TransID=@DocPrefix)
--Get The DocID From Concatination
SET @DocID=(SELECT DocPrefix+CONVERT(NVARCHAR(50), DocValue) FROM tblDocumentSeries WHERE TransID=@DocPrefix)
--Update tblDocumentSeries
UPDATE tblDocumentSeries SET DocValue=DocValue+1 WHERE TransID=@DocPrefix
--User Defin Number Doc Serise
IF ISNULL(@UDFId,0)>0
BEGIN
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId
END
END
ELSE
BEGIN
DECLARE @CollPayStatus INT
IF @DocPrefix=50 OR @DocPrefix=10
BEGIn
SELECT @CollPayStatus = Status FROM tblTranCollectionHeader WHERE DocPrefix =@DocPrefix AND ColID =@nCollID
IF(@CollPayStatus != @CurruntStatus)
BEGIN
RAISERROR('DocumentStatus',16,1)
END
-- check DD,CHEQUE,BANK TRANSFER,VISA STATUS
SET @PaymentStatusChange = (SELECT COUNT(*) from tblCollPMDetails where ColID = @nCollID and PaymentTermID in (2,3,4,5) and Status NOT IN (1,3))
IF(@PaymentStatusChange > 0)
BEGIN
RAISERROR('PaymentStatus',16,1)
END

UPDATE tblTranCollectionHeader SET Status = 2,MBy = @UID,MDate = GETDATE()WHERE DocPrefix =@DocPrefix AND ColID =@nCollID
UPDATE tblCollPMDetails SET Status = 2 WHERE ColID =@nCollID
SELECT @DocValue= SH.DocValue,@DocId=DocId,@PreviousTranDate=ColDate,@UDFDocValue=UDFDocValue,@CheckUDFId=UDFId
FROM tblTranCollectionHeader SH WHERE SH .DocPrefix =@DocPrefix AND SH.ColID =@nCollID
END
ELSE
BEGIN
SELECT @CollPayStatus = Status FROM tblTranPaymentHeader WHERE PYPrefix =@DocPrefix AND PYID =@nCollID
IF(@CollPayStatus != @CurruntStatus)
BEGIN
RAISERROR('DocumentStatus',16,1)
END
-- check DD,CHEQUE,BANK TRANSFER,VISA STATUS
SET @PaymentStatusChange = (select COUNT(*) StatusChanges from tblPaymentPMDetail where PYID = @nCollID and PaymentTermID in (2,3,4,5) and Status NOT IN (1,3))
IF(@PaymentStatusChange > 0)
BEGIN
RAISERROR('PaymentStatus',16,1)
END


UPDATE tblTranPaymentHeader SET Status = 2,MBy = @UID,MDate = GETDATE()WHERE PYPrefix =@DocPrefix AND PYID =@nCollID
UPDATE tblPaymentPMDetail SET Status = 2 WHERE PYID = @nCollID
SELECT @DocValue= SH.DocValue,@DocId=DocId,@PreviousTranDate=PYDATE,@UDFDocValue=UDFDocValue,@CheckUDFId=UDFId
FROM tblTranPaymentHeader SH WHERE SH .PYPrefix =@DocPrefix AND SH.PYID =@nCollID
END
update tblFAJournal set Status = 2 ,MBy = @UID,MDate = GETDATE()WHERE DocPrefix =@DocPrefix AND TransId = @nCollID

--User Document and if Changes made
IF ISNULL(@UDFId,0)>0
BEGIN
IF(@UDFId=@CheckUDFId)
BEGIN
SELECT @UDFDocId=DocPrefix + CONVERT(NVARCHAR, @UDFDocValue),@UDFDocPrefix=DocPrefix FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId
END
IF(@UDFId!=@CheckUDFId)
BEGIN
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId
END
END
ENd
-- Get Values From Temp Table
SELECT @ColDate=[Date],@CollPYType=[CoLLPYType],@ColModeId=ColMode,@DocRefNo=RefNo,
@UID=[UID],@AccId=AccID,@ExpanceAccID=ExAccID,@CollAmt=ColAmt,@SerialNo=SerialNo, @VisaPern = VisaPern, @VisaAmt = VisaAmt
FROM @TempHeader WHERE HeaderIdent=@TempHeaderRowCount

-- Check Accounts Are Active Are NOt
DECLARE @IsActive INT
IF ISNULL(@AccID,0)!=0
BEGIN
SELECT @IsActive=Active FROM tblFAAccount WHERE FAID=@AccId
IF @IsActive=0
BEGIN
RAISERROR('Acc',16,1)
END
END
IF ISNULL(@ExpanceAccID,0)!=0
BEGIN
SET @IsActive=0
SELECT @IsActive=Active FROM tblFAAccount WHERE FAID=@ExpanceAccID
IF @IsActive=0
BEGIN
RAISERROR('ExAcc',16,1)
END
END
DECLARE @RevCheqPrefix NVARCHAR(255),@RevCheqPostFix NVARCHAR(255),@RevCheqbookID INT
IF((@DocPrefix = 10 OR @DocPrefix=11) AND @nCollID > 0)
BEGIn
--SELECT * FROM tblPaymentPMDetail ORDER BY 1 DESC
SELECT @RevCheqPrefix= LEFT(ChequeRefNoWithChequeNo,CHARINDEX('-',ChequeRefNoWithChequeNo) - 2),
@RevCheqPostFix = [Cheque/DD Number] FROM tblPaymentPMDetail WHERE PYID = @nCollID AND PaymentTermID = 2
IF(ISNULL(@RevCheqPrefix,'') != '' AND ISNULL(@RevCheqPostFix,'') != '' )
BEGIN
--SELECT ChequebookId FROM tblMastChequeBook WHERE ChequeBookreferNo = 'IOB1'
SELECT @RevCheqbookID = ChequebookId FROM tblMasterChequeBook WHERE ChequeBookreferNo = @RevCheqPrefix
IF(@RevCheqbookID > 0)
BEGIN
--SELECT * FROM tblMastChequeBookDetail WHERE ChequebookId=88 AND ChequeNo = '100006' ORDER BY 1 DESC
UPDATE tblMasterChequeBookDetail SET Status = 1 WHERE ChequebookId = @RevCheqbookID AND ChequeNo = @RevCheqPostFix
--,MBy = @UID,MDate = GETDATE()
END
END
END
--Check Cash Acc Balance Only For Payments
DECLARE @ModeAmt DECIMAL (25,6),@FAType NVARCHAR(10)
DECLARE @OutputValue TABLE (Amt DECIMAL(18,9),FAType NVARCHAR(10))
IF @DocPrefix=10 OR @DocPrefix=11
BEGIN
IF @ColModeId=1
BEGIN
DECLARE @CashAccID INT = (SELECT FAID FROM tblFAAccount WHERE AccountName='cash')
--INSERT INTO @OutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@CashAccID,@ColDate
---- Get Value From Result
--SELECT @ModeAmt=Amt,@FAType=FAType FROM @OutputValue
-- Check Cash < Collected Amount
IF ISNULL(@nAllowNegativeBal,0)=0
BEGIN
IF @FAType='Cr' OR @ModeAmt<@CollAmt
BEGIN
RAISERROR('CASH',16,1)
END
END
END
END


IF @DocPrefix=50 OR @DocPrefix=10
BEGIN
INSERT INTO tblTranCollectionHeader(ColDate,DocPrefix,DocID,DocValue,COLLType,ColDocRefNo,AccID,ColAmt,Balance,ColMode,
[Status],ExpanceAcc,CBy,CDate,[Type],UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,VisaPern,VisaAmt,BTMode,Remarks,Narration)
(SELECT @ColDate,@DocPrefix,@DocID,@DocValue,@CollPYType,@DocRefNo,@AccId,@CollAmt,Balance,@ColModeId,ISNULL(@nStatus,1),
ExAccID,UID,GETDATE(),[Type],@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@VisaPern,@VisaAmt,@BTMode,@Remarks,@Narration
FROM @TempHeader AS H WHERE H.HeaderIdent=@TempHeaderRowCount)
-- Scope Identity for Insert Beat and Salesman
DECLARE @ScopeIDBS INT
SET @ScopeIDBS = (SELECT SCOPE_IDENTITY())
UPDATE tblTranCollectionHeader SET BeatID=@BeatID,SalesManID=@SalesManID WHERE ColID=@ScopeIDBS
END
IF @DocPrefix=100 OR @DocPrefix=11
BEGIN
INSERT INTO tblTranPaymentHeader(PYDate,PYPrefix,DocID,DocValue,PYType,PYDocRefNo,AccID,PYAmt,Balance,PYMode,
[Status],ExpanseAcc,CBy,CDate,[Type],UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,VisaPern,VisaAmt,BTMode,Remarks,Narration)
(SELECT @ColDate,@DocPrefix,@DocID,@DocValue,@CollPYType,@DocRefNo,@AccId,@CollAmt,Balance,@ColModeId,ISNULL(@nStatus,1),
ExAccID,UID,GETDATE(),[Type],@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@VisaPern,@VisaAmt,@BTMode,@Remarks,@Narration
FROM @TempHeader AS H WHERE H.HeaderIdent=@TempHeaderRowCount)
END
SET @ScopeIdent=(SELECT SCOPE_IDENTITY())

IF ISNULL(@ColModeId,0)=6
BEGIN
DECLARE @tempDeno AS TABLE (ID INT IDENTITY(1,1), d_ID INT,d_Name INT,tot_Coupons INT,entered_Count INT,Amount DECIMAL(25,6))
INSERT INTO @tempDeno SELECT d_ID,d_Name,tot_Coupons,entered_Count,Amount FROM @tvpSaveDenomination

IF ISNULL(@DocPrefix,0)=50 OR ISNULL(@DocPrefix,0)=10
BEGIN
DECLARE @tempSNo INT = 1,@tempCount INT = (SELECT COUNT(*) FROM @tempDeno)
WHILE @tempCount > 0
BEGIN
DECLARE @d_ID INT,@d_Name INT,@entered_Count INT,@Amount DECIMAL(25,6)
SELECT @d_ID = d_ID,@d_Name = d_Name,@entered_Count = entered_Count,@Amount = Amount FROM @tempDeno WHERE ID=@tempSNo

--INSERT INTO tblmastdenominationPMDetails
--(DenoID,Denomination,Dcount,Amount,FormDocPrefix,TransID,cdate,cby,status,SettlementCount,TransDate)
--VALUES
--(@d_ID,@d_Name,@entered_Count,@Amount,@DocPrefix,@ScopeIdent,GETDATE(),@UID,1,@entered_Count,@ColDate)
SET @tempCount = @tempCount - 1
SET @tempSNo = @tempSNo + 1
END
END
ELSE
BEGIN
DECLARE @RtnMsg NVARCHAR(20)='TRUE'
--DECLARE @tvpCouponforStlmt tvpCouponforStlmt
--INSERT INTO @tvpCouponforStlmt SELECT d_ID,entered_Count,ID FROM @tempDeno

--EXEC uspSaveCouponDetailsforStlmt @tvpCouponforStlmt,@ScopeIdent,@DocPrefix,@RtnMsg OUT
END
END

-- MOP Detail
DECLARE @BankAccID INT,@FABankAccID INT
DECLARE @ModeDate DATE,@MopColMode INT

--Get Payment Date
IF ISNULL(@AccId,0)=0
BEGIN
SET @ModeDate =(SELECT top 1 PMDate FROM @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @ModeDate =(SELECT top 1 PMDate FROM @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END

-- Get Payment Mode
IF ISNULL(@AccId,0)=0
BEGIN
SET @MopColMode=(SELECT top 1 [PayMode] FROM @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @MopColMode=(SELECT top 1 [PayMode] FROM @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END

IF ISNULL(@MopColMode,0)=5
BEGIN
SET @ModeDate = CAST(GETDATE() AS DATE)
END

-- Collection And OtherCollection Payment Details
IF @DocPrefix=50 OR @DocPrefix=10
BEGIn
IF @MopColMode=4 OR @MopColMode=5
BEGIN
IF ISNULL(@AccId,0)!=0
BEGIN
SET @BankAccID=(SELECT BankAccID FROM @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @BankAccID=(SELECT BankAccID FROM @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END

SET @FABankAccID=(SELECT FAID FROM tblMasterBankAccount WHERE ID=@BankAccID)
-- Check Bank Acc Active Or Not
IF ISNULL(@FABankAccID,0)!=0
BEGIN SET @IsActive=0
SELECT @IsActive=Active FROM tblFAAccount WHERE FAID=@FABankAccID
IF @IsActive=0
BEGIN
RAISERROR('BankAcc',16,1)
END
END
END
IF ISNULL(@AccId,0)=0
BEGIN

INSERT INTO tblCollPMDetails(ColID,[Date],AccId,PaymentTermID,CollAmt,[Cheque/DD Number],NeftID, PayAt,IfscCode,BankName,BranchName,AmtRecd,BankAccID,Status)
SELECT @ScopeIdent,@ModeDate,@ExpanceAccID,@MopColMode,@CollAmt
,[Cheque/DD Number],NeftID,PayAt,IfscCode,Bank,Branch,isnull(Balance,0),@FABankAccID,ISNULL(@nStatus,1) FROM @Mop
WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo
END
ELSE
BEGIN
INSERT INTO tblCollPMDetails(ColID,[Date],AccId,PaymentTermID,CollAmt,[Cheque/DD Number],NeftID, PayAt,IfscCode,BankName,BranchName,AmtRecd,BankAccID,Status)
SELECT @ScopeIdent,@ModeDate,@AccId,@MopColMode,@CollAmt
,[Cheque/DD Number],NeftID,PayAt,IfscCode,Bank,Branch,isnull(Balance,0),@FABankAccID,ISNULL(@nStatus,1) FROM @Mop
WHERE AccId=@AccId AND SerialNo=@SerialNo
END
END
-- Payment And Other Payment Details
IF @DocPrefix=100 OR @DocPrefix=11
BEGIN
IF @MopColMode=4 OR @MopColMode=2 OR @MopColMode=3 OR @MopColMode=5
BEGIN
IF ISNULL(@AccId,0)!=0
BEGIN
SET @BankAccID=(SELECT BankAccID FROM @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @BankAccID=(SELECT BankAccID FROM @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END

--SELECT * FROM tblPaymentPMDetail ORDER BY 1 DESC
--SELECT * FROM tblTranPaymentHeader ORDER BY 1 DESC
--SET @FABankAccID=(SELECT AccountID FROM tblMasterBankAccount WHERE BankACName=(SELECT AccountName FROM tblFAAccount WHERE AccountID = @BankAccID))

--SET @FABankAccID=@BankAccID
SET @FABankAccID=(SELECT FAID FROM tblMasterBankAccount WHERE ID=@BankAccID)
-- Check Bank Acc Active Or Not
IF ISNULL(@FABankAccID,0)!=0
BEGIn
SET @IsActive=0
SELECT @IsActive=Active FROM tblFAAccount WHERE FAID=@FABankAccID
IF @IsActive=0
BEGIN
RAISERROR('BankAcc',16,1)
END
END
DECLARE @PYModeAmt DECIMAL (25,6),@PYFAType NVARCHAR(10)
DECLARE @PYOutputValue TABLE (Amt DECIMAL(18,9),FAType NVARCHAR(10))
--CHEQUEBOOK REVERT

--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@FABankAccID,@ColDate
---- Get Value From Result
--SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue
-- Check Balance < Collected Amount
IF ISNULL(@nAllowNegativeBal,0)=0
BEGIN
IF @PYFAType='Cr' OR @PYModeAmt<@CollAmt
BEGIN
RAISERROR('Balance' ,16,1)
END
END
END
IF @MopColMode=2
BEGIN
DECLARE @ChequeRefWithNo NVARCHAR(255),@ChequeNo INT,@ChequeBookID INT,@RefNo NVARCHAR(255),@ChequeStatus INT
IF ISNULL(@AccId,0)=0
BEGIN
SET @ChequeRefWithNo=(SELECT [ChequeBookRefNo] FROm @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @ChequeRefWithNo=(SELECT [ChequeBookRefNo] FROm @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END
SET @RefNo=LEFT(@ChequeRefWithNo,CHARINDEX('-',@ChequeRefWithNo)-1)
SET @ChequeBookID=(SELECT ChequebookId FROM tblMasterChequeBook WHERE ChequeBookreferNo=@RefNo )
IF ISNULL(@ChequeBookID,0)!=0
BEGIN
SET @IsActive=0
SELECT @IsActive=Active FROM tblMasterChequeBook WHERE ChequebookId=@ChequeBookID
IF @IsActive=0
BEGIN
RAISERROR('Cheque',16,1)
END
END
IF ISNULL(@AccId,0)=0
BEGIN
SET @ChequeNo=(SELECT [Cheque/DD Number] FROm @Mop WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo)
END
ELSE
BEGIN
SET @ChequeNo=(SELECT [Cheque/DD Number] FROm @Mop WHERE AccId=@AccId AND SerialNo=@SerialNo)
END

SET @ChequeStatus=(SELECT [Status] FROM tblMasterChequeBookDetail WHERE ChequebookId=@ChequeBookID AND ChequeNo=@ChequeNo)

IF @ChequeStatus=1 OR @ChequeStatus=5
BEGIN
UPDATE tblMasterChequeBookDetail SET [Status]=5 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@ChequeNo
END
--ELSE IF @ChequeStatus=5
--BEGIN
--UPDATE tblMastChequeBookDetail SET [Status]=1 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@ChequeNo
--END
ELSE
BEGIN
RAISERROR('ChequeStatus',16,1)
END
END

-- Insert The Record In Payment Detail Table
IF ISNULL(@AccId,0)=0
BEGIN
INSERT INTO tblPaymentPMDetail(PYID,[Date],BankAccID,PaymentTermID,PYAmt,ChequeRefNoWithChequeNo,[Cheque/DD Number],NeftID, PayAt,IfscCode,BankName,BranchName,AmtRecd,Status)
SELECT @ScopeIdent,@ModeDate,@FABankAccID,@MopColMode,@CollAmt,[ChequeBookRefNo],[Cheque/DD Number],NeftID,PayAt,IfscCode,Bank,Branch,@CollAmt,ISNULL(@nStatus,1) FROM @Mop
WHERE AccId=@ExpanceAccID AND SerialNo=@SerialNo
END
ELSE
BEGIN
INSERT INTO tblPaymentPMDetail(PYID,[Date],BankAccID,PaymentTermID,PYAmt,ChequeRefNoWithChequeNo,[Cheque/DD Number],NeftID, PayAt,IfscCode,BankName,BranchName,AmtRecd,Status)
SELECT @ScopeIdent,@ModeDate,@FABankAccID,@MopColMode,@CollAmt,[ChequeBookRefNo],[Cheque/DD Number],NeftID,PayAt,IfscCode,Bank,Branch,@CollAmt,ISNULL(@nStatus,1) FROM @Mop
WHERE AccId=@AccId AND SerialNo=@SerialNo
END
END
--Detail Insert
INSERT INTO #TempDetail SELECT AccId,DocPrefix,DocValue, DocID,DocDate,Balance,ColValue,AdjAmt,DiscPer,DiscAmt,FullyAdj,FullyAdjAmt,
TotalAmtAdj,[SerialNo] FROM @Detail AS Detail WHERE Detail.AccId=@AccId AND Detail.[SerialNo]=@SerialNo ORDER BY Detail.[SerialNo]
--Get The Rows Count
DECLARE @DetailRowsCount INT
SET @DetailRowsCount=(SELECT COUNT(*) FROM #TempDetail)
DECLARE @TempDetailCount INT=1

-- Iterate Detail Rows
WHILE(@TempDetailCount<=@DetailRowsCount)
BEGIN
PRINT CONVERT(NVARCHAR,@TempDetailCount)
DECLARE @TempBalance DECIMAL (25,6)=0,@OriginalBalance DECIMAL (25,6)=0,@TempDocID INT=0,@TempDocPrefix INT=0,@TempStatus INT=0,
@UpdateStatus INT,@TotAdjAmt DECIMAL (25,6)=0

--Move Data To Temp Variables
SELECT @TempDocID=DocID,@TempDocPrefix=DocPrefix,@TempBalance=Balance,@TotAdjAmt = TotalAmtAdj FROM #TempDetail WHERE DetailIdent=@TempDetailCount

-- Take Original Balance A.nd Original Status
-- Sales And SalesReturn
IF(@TempDocPrefix=2 OR @TempDocPrefix=6)
BEGIN
print 'Sales And SalesReturn'
--IF(ISNULL(@nStatus,1) != 1)
--BEGIN
--SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTranSalesHeader WHERE DocValue IN (SELECT DocValue FROM tblTranSalesHeader WHERE InvId = @TempDocID and DocPrefix = @TempDocPrefix))
--UPDATE tblTranSalesHeader SET Balance = @TempBalance,
--Status = (CASE WHEN @UpdateStatus = 1 THEN (CASE WHEN @TempDocPrefix = 2 THEN 1 ELSE 6 END) ELSE 3 END),CDate = GETDATE() WHERE InvId = @TempDocID
--END
--SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblTranSalesHeader WHERE InvId=@TempDocID
END
-- Bill ANd Purchase Return
ELSE IF(@TempDocPrefix=1 OR @TempDocPrefix=9)
BEGIN
IF(ISNULL(@nStatus,1) != 1)
BEGIN
SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTransPurchaseHeader WHERE DocValue IN (SELECT DocValue FROM tblTransPurchaseHeader WHERE ID = @TempDocID and TransID = @TempDocPrefix))
UPDATE tblTransPurchaseHeader SET Balance = @TempBalance,
Status = (CASE WHEN @UpdateStatus = 1 THEN (CASE WHEN @TempDocPrefix = 1 THEN 1 ELSE 6 END) ELSE 3 END),CDate = GETDATE() WHERE ID=@TempDocID
END
SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblTransPurchaseHeader WHERE ID=@TempDocID
END
-- Service Bill and Invoice
IF(@TempDocPrefix=28 OR @TempDocPrefix=29)
BEGIN
print 'Service Bill and Invoice '
--IF(ISNULL(@nStatus,1) != 1)
--BEGIN
--SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTranServiceHeader WHERE DocValue IN (SELECT DocValue FROM tblTranServiceHeader WHERE ServiceID = @TempDocID and DocPrefix = @TempDocPrefix))
--UPDATE tblTranServiceHeader SET Balance = @TempBalance,Status = (CASE WHEN @UpdateStatus = 1 THEN 1 ELSE 3 END),CDate = GETDATE() WHERE ServiceID = @TempDocID
--END
--SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblTranServiceHeader WHERE ServiceID=@TempDocID
END
-- Credit And DebitNote
ELSE IF(@TempDocPrefix=4 OR @TempDocPrefix=5)
BEGIN
IF(ISNULL(@nStatus,1) != 1)
BEGIN
SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblNoteDetails WHERE DocValue IN (SELECT DocValue FROM tblNoteDetails WHERE ID = @TempDocID and TransID = @TempDocPrefix))
UPDATE tblNoteDetails SET Balance = @TempBalance,Status = (CASE WHEN @UpdateStatus = 1 THEN 1 ELSE 3 END),CDate = GETDATE() WHERE ID = @TempDocID
END
SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblNoteDetails WHERE ID=@TempDocID
END

-- Collection And Other Collection
ELSE IF(@TempDocPrefix=5 OR @TempDocPrefix=10)
BEGIN
IF(ISNULL(@nStatus,1) != 1)
BEGIN
SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTranCollectionHeader WHERE DocValue IN (SELECT DocValue FROM tblTranCollectionHeader WHERE ColID = @TempDocID and DocPrefix = @TempDocPrefix))
UPDATE tblTranCollectionHeader SET Balance = @TempBalance,Status = (CASE WHEN @UpdateStatus = 1 THEN 1 ELSE 3 END) WHERE ColID = @TempDocID
END
SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblTranCollectionHeader WHERE ColID=@TempDocID
END

--Payment ANd Other Payment
ELSE IF(@TempDocPrefix=100 OR @TempDocPrefix=11)
BEGIN
IF(ISNULL(@nStatus,1) != 1)
BEGIN
SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTranPaymentHeader WHERE DocValue IN (SELECT DocValue FROM tblTranPaymentHeader WHERE PYID = @TempDocID and PYPrefix = @TempDocPrefix))
UPDATE tblTranPaymentHeader SET Balance = @TempBalance,Status = (CASE WHEN @UpdateStatus = 1 THEN 1 ELSE 3 END) WHERE PYID = @TempDocID
END
SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM dbo.tblTranPaymentHeader WHERE PYID=@TempDocID
END
--SELECT * FROM tblTranBillHeader ORDER BY 1 DESC
-- Payable And Receivable Voucher
ELSE IF(@TempDocPrefix=6 OR @TempDocPrefix=7)
BEGIN
IF(ISNULL(@nStatus,1) != 1)
BEGIN
SET @UpdateStatus = (SELECT COUNT(DocValue) FROM tblTranPRVoucher WHERE DocValue IN (SELECT DocValue FROM tblTranPRVoucher WHERE ID = @TempDocID and TransID = @TempDocPrefix))
UPDATE tblTranPRVoucher SET Balance = @TempBalance,Status = (CASE WHEN @UpdateStatus = 1 THEN 1 ELSE 3 END),CDate = GETDATE() WHERE ID = @TempDocID
END
SELECT @OriginalBalance=Balance,@TempStatus=[Status] FROM tblTranPRVoucher WHERE ID=@TempDocID
END
--SELECT *FROM tblTranPRVoucher WHERE PRVID=1025
-- Check Status
IF @TempStatus=1 OR @TempStatus=3 OR @TempStatus=6 OR @TempStatus=7
BEGIN
IF(@OriginalBalance=@TempBalance)-----
BEGIN
SELECT @AddAdjAmt=AdjAmt,@AddDisAmt=DiscAmt,@WriteOffAmt=FullyAdjAmt FROM #TempDetail WHERE DetailIdent=@TempDetailCount
-- Collection Detail Table Add
IF @DocPrefix=50 OR @DocPrefix=10
BEGIN
INSERT INTO tblTranCollectionDetail (ColID,DocPrefix,DocValue,DocID,[Date],ColValue,
AdjAmt,DiscPercentage,DiscAmt,FullyAdj,FullyAdjAmt,TotalAmtAdj)
SELECT @ScopeIdent,DocPrefix,DocValue,DocID,DocDate,ColValue,AdjAmt,DiscPerc,DiscAmt,FullyAdj,FullyAdjAmt,TotalAmtAdj FROM #TempDetail
WHERE DetailIdent=@TempDetailCount
END

-- Payment Detail Table Add
IF @DocPrefix=100 OR @DocPrefix=11
BEGIN
INSERT INTO dbo.tblTranPaymentDetail ( PYID,DocPrefix,DocValue,DocID,[Date],BillPYValue,
AdjAmt,DiscPercentage,DiscAmt,FullyAdj,FullyAdjAmt,TotalAmtAdj)
SELECT @ScopeIdent,DocPrefix,DocValue,DocID,DocDate,ColValue,AdjAmt,DiscPerc,DiscAmt,FullyAdj,FullyAdjAmt,TotalAmtAdj
FROM #TempDetail WHERE DetailIdent=@TempDetailCount
END
DECLARE @TotalAmtAdj DECIMAL (25,6),@Balance DECIMAL (25,6)
SET @TotalAmtAdj=(SELECT TotalAmtAdj FROM #TempDetail WHERE DetailIdent=@TempDetailCount)
-- Change Adjusted Document Status
--Sales And SalesReturn
--IF(@TempDocPrefix=2 OR @TempDocPrefix=6)
--BEGIN
--UPDATE tblTranSalesHeader SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE InvId=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"

--SELECT @Balance=Balance FROM tblTranSalesHeader WHERE InvId=@TempDocID
--IF(@Balance=0.00)
--BEGIN
--UPDATE tblTranSalesHeader SET [STATUS]=5 WHERE InvId=@TempDocID
--END
--END

-- Bill AND Purchase Return
IF(@TempDocPrefix=1 OR @TempDocPrefix=19)
BEGIN
UPDATE tblTransPurchaseHeader SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE ID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"
SELECT @Balance=Balance FROM tblTransPurchaseHeader WHERE ID=@TempDocID
IF(@Balance=0.00)
BEGIN
UPDATE tblTransPurchaseHeader SET [STATUS]=5 WHERE ID=@TempDocID
END
END

--Service Bill and Invoice
IF(@TempDocPrefix=28 OR @TempDocPrefix=29)
BEGIN
PRINT 'Service Bill and Invoice '
--UPDATE tblTranServiceHeader SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE ServiceID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"

--SELECT @Balance=Balance FROM tblTranServiceHeader WHERE ServiceID=@TempDocID
--IF(@Balance=0.00)
--BEGIN
--UPDATE tblTranServiceHeader SET [STATUS]=5 WHERE ServiceID=@TempDocID
--END
END

--CreditNote ANd DebitNtote
IF(@TempDocPrefix=4 OR @TempDocPrefix=5)
BEGIN
UPDATE tblNoteDetails SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE ID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"
SELECT @Balance=Balance FROM tblNoteDetails WHERE ID=@TempDocID
IF(@Balance=0.00)
BEGIN
UPDATE tblNoteDetails SET [STATUS]=5 WHERE ID=@TempDocID
UPDATE tblFAJournal SET [Status]=5 Where NoteID=@TempDocID AND DocPrefix=@TempDocPrefix
END
END

-- Collection And OtherCollection
IF(@TempDocPrefix=50 OR @TempDocPrefix=10)
BEGIN
UPDATE tblTranCollectionHeader SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE ColID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"
SELECT @Balance=Balance FROM tblTranCollectionHeader WHERE ColID=@TempDocID
IF(@Balance=0.00)
BEGIN
UPDATE tblTranCollectionHeader SET [STATUS]=5 WHERE ColID=@TempDocID
END
END

--Payment And OtherPaymetn
IF(@TempDocPrefix=100 OR @TempDocPrefix=11)
BEGIN
UPDATE dbo.tblTranPaymentHeader SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE PYID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"
SELECT @Balance=Balance FROM tblTranPaymentHeader WHERE PYID=@TempDocID
IF(@Balance=0.00)
BEGIN
UPDATE tblTranPaymentHeader SET [STATUS]=5 WHERE PYID=@TempDocID
END
END
--Payable Voucher And Receivable Voucher
IF(@TempDocPrefix=6 OR @TempDocPrefix=7)
BEGIN
UPDATE tblTranPRVoucher SET Balance=Balance-@TotalAmtAdj,CDate = GETDATE() WHERE ID=@TempDocID --Alter by SRIRAM ",MBy=@UID,MDate=GETDATE()"
SELECT @Balance=Balance FROM tblTranPRVoucher WHERE ID=@TempDocID
IF(@Balance=0.00)
BEGIN
UPDATE tblTranPRVoucher SET [STATUS]=5 WHERE ID=@TempDocID
END
END
END
ELSE
BEGIN
DECLARE @II1 INT = CONVERT(INT,@OriginalBalance)
DECLARE @II2 INT = CONVERT(INT,@TempBalance)
RAISERROR('DocumentAmount $ %d $%d OB -%d TC -%d',16,1,@TempDocPrefix,@TempDocID,@II1,@II2) --,@OriginalBalance,@TempBalance
END END

ELSE
BEGIN
RAISERROR('DocumentStatus $ %d $%d',16,1,@TempDocPrefix,@TempDocID)
END
SET @TempDetailCount+=1
END

---------------------------------------------------------- Posting ------------------------------------------------------------------
SET @AddAdjAmt = (SELECT SUM([AdjAmt]) FROM #TempDetail)
set @AddDisAmt = (SELECT SUM(DiscAmt) FROM #TempDetail)
DECLARE @ChequeNoWithRefColl NVARCHAR(255),@DocDateColl DATE,@strIFSC_CodeColl NVARCHAR(50),@ChequeInfoColl nvarchar(100)

DECLARE @DiscAcc INT
DECLARE @OtherAccId INT
-- Cash Acc Posting
DECLARE @JVID INT
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
IF @ColModeId=1 OR @ColModeId =6
begin
IF @ColModeId=1
BEGIN
SET @OtherAccId=(SELECT FAID FROM tblFAAccount WHERE AccountName='Cash')
END
IF @ColModeId=6
BEGIN
SET @OtherAccId=(SELECT FAID FROM tblFAAccount WHERE AccountName='Coupon')
END
--Collection Or Other Collection
IF @DocPrefix=500 OR @DocPrefix=10
BEGIn
--Cash Acc
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES (@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@OtherAccId,0.00,@CollAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

-- PartyAcc
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,
[Status],CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,@CollAmt,0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,
[Status],CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,@CollAmt,0.00,0.00,'','Only Expanse',
ISNULL(@nStatus,1),@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
END
--Payment Or Other Payment
IF @DocPrefix=100 OR @DocPrefix=11
BEGIn
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES (@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@CollAmt,0.00,'','Only Expense',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
--Cash Acc
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@OtherAccId,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ENd
-- Other Mode Posting
ELSE IF @ColModeId=2 OR @ColModeId=3 OR @MopColMode=4 OR @MopColMode=5
BEGIn
--Get Other AccID
SET @OtherAccId=(SELECT FAID FROM tblFAAccount WHERE AccountName='Cheque in Hand')
--select * from tblPaymentMode
--Collection Other Collection
IF @DocPrefix=50 OR @DocPrefix=10
BEGIN
--cheque info for coll

IF @ColModeId=2 OR @ColModeId=3
BEGIn
SELECT @ChequeNoWithRefColl=[Cheque/DD Number],@DocDateColl=PMDate,@strIFSC_CodeColl=IfscCode FROM @Mop WHERE SerialNo=@SerialNo
SET @ChequeInfoColl = @ChequeNoWithRefColl+', '+CONVERT(NVARCHAR,@DocDateColl,103)+(CASE WHEN ISNULL(@strIFSC_CodeColl,'')='' THEN '' ELSE ' - '+@strIFSC_CodeColl END)

--Cheque In Hand Acc
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@OtherAccId,0.00,@CollAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,@CollAmt,0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,@CollAmt,0.00,0.00,'','ExpanceAcc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
END

END
IF @ColModeId=4
BEGIn
SELECT @ChequeNoWithRefColl=NeftID,@DocDateColl=PMDate,@strIFSC_CodeColl=IfscCode FROM @Mop WHERE SerialNo=@SerialNo
SET @ChequeInfoColl = @ChequeNoWithRefColl+', '+CONVERT(NVARCHAR,@DocDateColl,103)+(CASE WHEN ISNULL(@strIFSC_CodeColl,'')='' THEN '' ELSE ' - '+@strIFSC_CodeColl END)

--Cheque In Hand Acc
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@FABankAccID,0.00,@CollAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,@CollAmt,0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,@CollAmt,0.00,0.00,'','ExpanceAcc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)
END
END
--if @ColModeId = 5
--begin
--SELECT @ChequeNoWithRefColl=NeftID,@DocDateColl=PMDate,@strIFSC_CodeColl=IfscCode FROM @Mop WHERE SerialNo=@SerialNo
--SET @ChequeInfoColl = @ChequeNoWithRefColl+', '+CONVERT(NVARCHAR,@DocDateColl,103)+(CASE WHEN ISNULL(@strIFSC_CodeColl,'')='' THEN '' ELSE ' - '+@strIFSC_CodeColl END)
--end
END
IF @DocPrefix=100 OR @DocPrefix=11
BEGIn
IF @ColModeId=1 OR @ColModeId=2 OR @ColModeId=3 OR @ColModeId=4
BEGIN
DECLARE @ChequeInfo NVARCHAR(255)
IF ISNULL(@ColModeId,0)=2
BEGIN
DECLARE @ChequeNoWithRef NVARCHAR(255),@DocDate DATE,@strIFSC_Code NVARCHAR(50)
SELECT @ChequeNoWithRef=ChequeBookRefNo,@DocDate=PMDate,@strIFSC_Code=IfscCode FROM @Mop WHERE SerialNo=@SerialNo
SET @ChequeInfo = @ChequeNoWithRef+', '+CONVERT(NVARCHAR,@DocDate,103)+(CASE WHEN ISNULL(@strIFSC_Code,'')='' THEN '' ELSE ' - '+@strIFSC_Code END)
END

IF ISNULL(@AccId,0)!=0
BEGIN
IF @ColModeId=2 OR @ColModeId=3 OR @ColModeId=4
BEGIN
IF ISNULL(@ModeDate,'')<>''
BEGIN
IF @ModeDate =@ColDate
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
---PARTY ACCOUNT POSTING----
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
--BANK ACCOUNT POSTING---
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@FABankAccID,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
END
ELSE
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
---PARTY ACCOUNT POSTING----
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
--- PARTY POSTED CHEQUE POSTING--
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,67,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
--BANK ACCOUNT POSTING---
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,67,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
--BANK ACCOUNT POSTED CHEQUE POSTING--
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,@FABankAccID,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
END
END
END
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@CollAmt,0.00,'','ExpanceAcc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
--IF @ModeDate =@ColDate
--BEGIN
-- INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
-- CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
-- VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@CollAmt,0.00,'','ExpanceAcc',ISNULL(@nStatus,1),
-- @UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
-- END
-- ELSE
-- BEGIN
-- --EXP ACC
-- INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
-- CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
-- VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@CollAmt,0.00,'','ExpanceAcc',ISNULL(@nStatus,1),
-- @UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
-- --BANK ACCOUNT POSTING---
-- INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
-- CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
-- VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,67,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
-- @UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
-- --BANK ACCOUNT POSTED CHEQUE POSTING--
-- INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
-- CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
-- VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,@FABankAccID,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
-- @UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
-- END
END

IF @DocPrefix=11
BEGIN
IF ISNULL(@CollPYType,0)=2
BEGIN
IF @ColModeId=2 OR @ColModeId=3 OR @ColModeId=4
BEGIN
IF ISNULL(@ModeDate,'')<>''
BEGIN
IF @ModeDate <> @ColDate
BEGIN
--- EXPANCE ACCOUNT POSTED DATED CHEQUE POSTING --
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,67,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
-- BANK ACCOUNT POST DATED CHEQUE POSTING ---
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,67,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
-- BANK ACCOUNT POSTING --
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ModeDate,@DocRefNo,@FABankAccID,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@FABankAccID,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo)
END
END
END
END
END
END
END
--
END
-- Start Adjustment Posting
IF @DocPrefix=10 OR @DocPrefix=11
BEGIN
-- Additional Adjustment Posting
IF ISNULL(@AddAdjAmt,0)<0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,ABS(@AddAdjAmt),0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,ABS(@AddAdjAmt),0.00,'','Other Charge',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END

SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Other Charges')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,ABS(@AddAdjAmt),0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

END
ELSE IF ISNULL(@AddAdjAmt,0)>0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Other Charges')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,0.00,@AddAdjAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,ABS(@AddAdjAmt),0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,ABS(@AddAdjAmt),0.00,0.00,'','Other Charge',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
END
IF ISNULL(@AddDisAmt,0)>0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal

IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,ABS(@AddDisAmt),0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,ABS(@AddDisAmt),0.00,'','Disc Acc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END

SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Discount Account')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,@AddDisAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

END
-- WriteOff Amount
IF ISNULL(@WriteOffAmt,0)>0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal

IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@WriteOffAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@WriteOffAmt,0.00,'','Disc Acc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
--SET @DiscAcc=(SELECT AccountId FROM tblFAAccount WHERE AccountName='Discount Account')
SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Writeoff Account')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,ABS(@WriteOffAmt),0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
--ARAVINDAN VISA POSTING--
IF isnull(@ColModeId,0) = 5
BEGIN
Declare @VisapernAmt DECIMAL (25,6)
set @VisapernAmt = @VisaAmt - @CollAmt
declare @AccountID int
SET @AccountID = @AccId
if @DocPrefix=11
BEGIn
if isnull(@AccId,0) = 0
BEGIN
SET @AccountID = @ExpanceAccID
END
END

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,26,@VisaAmt,0.00,0.00,'','Visa/Master',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccountID,0.00,@VisaAmt,0.00,'','Visa/Master',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

IF isnull(@VisapernAmt,0 ) > 0
BEGIN

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccountID,@VisapernAmt,0.00,0.00,'','CC Commision',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,27,0.00,@VisapernAmt,0.00,'','CC Commision',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

END
END


END
IF @DocPrefix=5 OR @DocPrefix=10
BEGIN
-- Additional Adjustment Posting
IF ISNULL(@AddAdjAmt,0)<0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal

SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Other Charges')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,0.00,ABS(@AddAdjAmt),0.00,'','Other Charge',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,ABS(@AddAdjAmt),0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,ABS(@AddAdjAmt),0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END

END
ELSE IF ISNULL(@AddAdjAmt,0)>0 BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@AddAdjAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@AddAdjAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Other Charges')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,ABS(@AddAdjAmt),0.00,0.00,'','Other Charge',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
IF ISNULL(@AddDisAmt,0)>0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Discount Account')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,0.00,@AddDisAmt,0.00,'','Collection',ISNULL(@nStatus,1),--Payment
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,ABS(@AddDisAmt),0.00,0.00,'','Collection',ISNULL(@nStatus,1),--Payment
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,ABS(@AddDisAmt),0.00,0.00,'','Disc Acc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
END
-- WriteOff Amount
IF ISNULL(@WriteOffAmt,0)>0
BEGIn
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
SET @DiscAcc=(SELECT FAID FROM tblFAAccount WHERE AccountName='Writeoff Account')
--SET @DiscAcc=(SELECT AccountId FROM tblFAAccount WHERE AccountName='Discount Account')
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@DiscAcc,0.00,@WriteOffAmt,0.00,'','Collection',ISNULL(@nStatus,1),--Payment
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
IF ISNULL(@AccId,0)!=0
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,@WriteOffAmt,0.00,0.00,'','Collection',ISNULL(@nStatus,1),--Payment
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
ELSE
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,ABS(@WriteOffAmt),0.00,0.00,'','Disc Acc',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
END
--ARAVINDAN
IF isnull(@ColModeId,0) = 5
BEGIn
Declare @VisapernAmtColl DECIMAL (25,6)
set @VisapernAmtColl = @VisaAmt - @CollAmt
declare @AccountIDColl int
SET @AccountIDColl = @AccId
if @DocPrefix=10
BEGIN
if ISNULL(@Accid,0) = 0
BEGIN
SET @AccountIDColl = @ExpanceAccID
END
END
SELECT @ChequeNoWithRefColl=NeftID,@DocDateColl=PMDate,@strIFSC_CodeColl=IfscCode FROM @Mop WHERE SerialNo=@SerialNo
SET @ChequeInfoColl = @ChequeNoWithRefColl+', '+CONVERT(NVARCHAR,@DocDateColl,103)+(CASE WHEN ISNULL(@strIFSC_CodeColl,'')='' THEN '' ELSE ' - '+@strIFSC_CodeColl END)

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,26,0.00,@VisaAmt,0.00,'','Visa/Master',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl) --visa cheq info

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccountIDColl,@VisaAmt,0.00,0.00,'','Visa/Master',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfoColl)

IF isnull(@VisapernAmtColl,0 ) > 0
BEGIN

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccountIDColl,0.00,@VisapernAmtColl,0.00,'','CC Commision',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,27,@VisapernAmtColl,0.00,0.00,'','CC Commision',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

END
ENd

END
-- End Adjustment Posting
IF ISNULL(@ExpanceAccID,0)>0 AND ISNULL(@AccId,0)>0
BEGIN
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal
IF @DocPrefix=5 OR @DocPrefix=10
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,0.00,@CollAmt,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,@CollAmt,0.00,0.00,'','Collection',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
IF @DocPrefix=10 OR @DocPrefix=11
BEGIN
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@ExpanceAccID,0.00,@CollAmt,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,[Status],
CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES(@DocID,@DocPrefix,@DocValue,@ColDate,@DocRefNo,@AccId,@CollAmt,0.00,0.00,'','Payment',ISNULL(@nStatus,1),
@UID,GETDATE(),@ScopeIdent,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)

END
END
DELETE FROM #TempDetail
DBCC CHECKIDENT('#TempDetail',RESEED,0)
SET @TempHeaderRowCount=@TempHeaderRowCount+1;
END
DROP TABLE #TempDetail
--Only Return Scope ID IF Collection Perform By That Own Form
IF ISNULL(@IsImplicit,0)=0
BEGIN
SELECT @ScopeIdent
ENd
END TRy
BEGIN CATCH
Select ERROR_MESSAGE() as ErrorMessage,ERROR_PROCEDURE() as ErrorProcedure,ERROR_LINE() as ErrorLine
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageInventoryAdjustmentDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageInventoryAdjustmentDetail]
@Transaction NVARCHAR(255),@TransDate DATE,@ScopIdentID INT,@ProdID INT,@InvQty DECIMAL(25, 9),@InvFreeQty DECIMAL(25, 9),@InvDmgQty DECIMAL(25, 9),@InvPurPrice DECIMAL (25,6),@PurchasePrice DECIMAL (25,6),
@ActualQty DECIMAL(25, 9),@ActualFreeQty DECIMAL(25, 9),@ActualDmgQty DECIMAL(25, 9),@GrossAmt DECIMAL (25,6), @InvId INT,@UOMID INT , @IYesNo INT,@BYesNO INT ,@PKDYesNo INT,@SerialYesNO INT,
@Batch NVARCHAR(255)=NULL,@PkdDate DATE=NULL,@ExpireDate DATE=NULL,@SellingPrice DECIMAL (25,6)=NULL,@ECP DECIMAL (25,6)=NULL,@MRP DECIMAL (25,6)=NULL,@SPLPrice DECIMAL (25,6)=NULL,@ReturnPrice DECIMAL (25,6)=NULL,
@TaxId INT =NULL,@TaxTypeId INT =NULL,@InclusiveYesNo INT =NULL,@TaxValue DECIMAL (25,6)=NULL,@ReasonId INT =NULL,@CBy SMALLINT = NULL,
@BranchID smallint = null
AS
BEGIN TRY
SET NOCOUNT ON;
SET DATEFORMAT DMY;
DECLARE @ActiveCheck NVARCHAR(255),@TempUomGrpID INT,@TempUOMID INT , @TempIYesNo INT,@TempBYesNO INT ,@TempPKDYesNo INT,@TempSerialYesNO INT,
@AQty DECIMAL(25, 9),@AFreeQty DECIMAL(25, 9),@ADmgQty DECIMAL(25, 9),@DocValue INT ,@ScopeInvId INT

--Validate Product Classification
SELECT @TempUOMID =BaseUomID,@TempIYesNo=TrackInventory ,@TempBYesNO=TrackBatch,@TempPKDYesNo=TrackPDK ,@TempSerialYesNO=TrackSerial
FROM dbo.tblMasterProduct WHERE ID =@ProdId
--Changes Made From UOM Level
IF (ISNULL( @TempUOMID,0)!=ISNULL( @UOMID,0) OR ISNULL( @TempIYesNo,0)!=ISNULL( @IYesNo,0)
OR ISNULL( @TempBYesNO,0)!=ISNULL( @BYesNO,0) OR ISNULL( @TempPKDYesNo,0)!=ISNULL( @PKDYesNo,0) OR ISNULL( @TempSerialYesNO,0)!=ISNULL( @SerialYesNO,0))
BEGIN
RAISERROR('2',16,1)
END

--Get Doc Value from Header Table
SELECT @DocValue=DocValue FROM tblInventoryHeader WHERE InventoryID =@ScopIdentID
--Get Inventory Detail
SELECT @AQty=ActualQty,@AFreeQty=ActualFreeQty,@ADmgQty=ActualDmgQty FROM tblProductInventory WHERE InventoryId= @InvId
IF ISNULL(@Transaction,'')='123'--stock Dectruction
BEGIN/* Only Stock Dectruction Transaction */
IF @InvDmgQty !=@ADmgQty
BEGIN
RAISERROR('5',16,1)
END
UPDATE tblProductInventory SET ActualDmgQty= ISNULL(ActualDmgQty,0)-ISNULL(@ActualDmgQty,0) WHERE InventoryId=@InvId
--Insert Inventory adjustment in Table
INSERT INTO dbo.tblInventoryDetail (InventoryID,ProdID,UpdatedBatchID,OrgPurPrice,OrgDmgQty,ActualPurPrice,ActualDmgQty,GrossAmt,AdjType,ReasonId)
VALUES(@ScopIdentID,@ProdID,@InvId,@InvPurPrice,@InvDmgQty,@PurchasePrice,@ActualDmgQty,@GrossAmt,3,@ReasonId)
END
IF ISNULL(@Transaction,'')='13'
BEGIN/* Only Inventory Adjustment Transaction */
IF (@InvId>0)
BEGIn
IF ISNULL(@InvQty,0) != ISNULL(@AQty,0) OR ISNULL(@InvFreeQty ,0) !=ISNULL(@AFreeQty,0) OR ISNULL(@InvDmgQty,0) !=ISNULL(@ADmgQty,0)
BEGIN
RAISERROR('5',16,1)
PRINT '5'
END
UPDATE tblProductInventory SET ActualQty=0 ,ActualFreeQty =0 ,ActualDmgQty=0 WHERE InventoryId=@InvId
--IF ISNULL(@ActualQty,0)>0 OR ISNULL(@ActualFreeQty,0)>0 OR ISNULL(@ActualDmgQty,0)>0
--BEGIN
EXEC uspInsertInventory 'INSERT',@Transaction,@TransDate,@DocValue,@ProdId,0,@UOMID,0,0 ,0,@ActualQty,@ActualFreeQty,@ActualDmgQty,0,0,0,
NULL ,NULL,NULL,@PurchasePrice,0,0,0,0,0,0 ,0 ,0,@InvId ,@ScopeInvId OUT,1 ,@InclusiveYesNo,@CBy,@BranchID--1 for Price Update only Adjustment
--END
END
IF (ISNULL(@InvId,0)=0)
BEGIN --Insert new Batch Detail

EXEC uspInsertInventory 'INSERT',@Transaction,@TransDate,@DocValue,@ProdId,0,@UOMID,0,0 ,0,@ActualQty,@ActualFreeQty,@ActualDmgQty,0,0,0,
@Batch ,@PkdDate,@ExpireDate,@PurchasePrice,@SellingPrice,@ECP,@SPLPrice,@MRP,@ReturnPrice,@TaxId ,@TaxTypeId,@TaxValue,NULL ,@ScopeInvId OUT,0,
@InclusiveYesNo,@CBy,@BranchID
END
--Insert Inventory adjustment in Table
INSERT INTO dbo.tblInventoryDetail (InventoryID,ProdID,NewBatchID,UpdatedBatchID,OrgPurPrice,OrgQty,OrgFreeQty,OrgDmgQty,ActualPurPrice,
ActualQty,ActualFreeQty,ActualDmgQty,GrossAmt,ReasonId)
VALUES(@ScopIdentID,@ProdID,ISNULL(@ScopeInvId,0),@InvId, @InvPurPrice,@InvQty,@InvFreeQty,@InvDmgQty,@PurchasePrice,
@ActualQty,@ActualFreeQty,@ActualDmgQty ,@GrossAmt,@ReasonId)
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE (),ERROR_LINE ();
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageInventoryAdjustmentHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageInventoryAdjustmentHeader]                  
@BranchID int,@InvAdjDate DATE,@TotalAmt DECIMAL (25,6),@UID INT,@DocPrefix INT,@UDFId INT =NULL,@Remarks NVARCHAR(MAX) = NULL,
@Narration NVARCHAR(MAX) = NULL,@RefNo NVARCHAR(MAX) = NULL
AS                    
BEGIN                    
DECLARE @DocValue NVARCHAR(50),@DOCID NVARCHAR(50),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255) ,@UDFDocId NVARCHAR(255)                     
SET @DOCID=(SELECT DocPrefix+CONVERT (NVARCHAR,DocValue) FROM tblDocumentSeries WHERE TransID=@DocPrefix)                  
SET @DocValue=(SELECT DocValue FROM tblDocumentSeries WHERE TransID = @DocPrefix)               
IF ISNULL(@UDFId,0)>0            
BEGIN            
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId               
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId =@UDFId                                 
END                    
BEGIN                      
INSERT INTO tblInventoryHeader(BranchID,InventoryDate,DocID,TransID,DocValue,InventoryType,TotalAmt,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,
RefNo,Remarks,Narration)                      
VALUES(@BranchID,@InvAdjDate,@DOCID,@DocPrefix,@DocValue,(CASE WHEN @DocPrefix =13 THEN 7 ELSE 8 END),@TotalAmt,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,
@UID,GETDATE(),@RefNo,@Remarks,@Narration)
UPDATE tblDocumentSeries SET DocValue=1+ISNULL(DocValue,0) WHERE TransID =@DocPrefix                 
END                    
SELECT SCOPE_IDENTITY();                   
DECLARE @ScopeID INT                
SELECT @ScopeID =SCOPE_IDENTITY();    
--Insert Back date transaction table        
--EXEC uspCreateBackTran 1,@ScopeID,0,@DocPrefix,@DocValue ,@InvAdjDate,NULL        
RETURN @ScopeID     
    
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageMenuOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageMenuOrder]  
@Mode INT,@MenuID INT = NULL,@Order INT = NULL  
AS  
BEGIN  
IF ISNULL(@Mode,0)=1                    
BEGIN                    
SELECT MenuId,MenuName,MenuTree FROM tblMenus WHERE MenuParentId = 0 and MenuTree != 7 ORDER BY MenuTree,DisplayIndex ASC  
END   
IF ISNULL(@Mode,0)=2                    
BEGIN   
SELECT MenuId,MenuName,DisplayIndex FROM tblMenus WHERE MenuParentId = @MenuID and IsMenu = 1 
ORDER BY DisplayIndex,MenuName  
END  
IF ISNULL(@Mode,0)=3                    
BEGIN   
UPDATE tblMenus SET DisplayIndex = @Order WHERE MenuId = @MenuID  
update tblMenus SET DisplayIndex = @Order WHERE MenuParentId = @MenuID  
END  
END
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePRDetail]        
@Date DATE,@PRId INT=NULL,@ProdId INT=NULL,@UomId INT=NULL,        
@UomQty DECIMAL(25,6)=NULL,@UomFreeQty DECIMAL(25,6)=NULL,@UomDmgQty DECIMAL(25,6)=NULL,@Batch NVARCHAR(255)=NULL,@PKDDate DATE=NULL,@ExpiryDate DATE =NULL,        
@InvPrice DECIMAL (25,6)=NULL,@InvMRP DECIMAL (25,6) =NULL,@InvTax DECIMAL (25,6)=NULL,@UomPrice DECIMAL (25,6) =NULL,@TaxPern DECIMAL (25,6) =NULL,        
@GoodsAmt DECIMAL (25,6) =NULL,@ProdDisc DECIMAL (25,6) =NULL,@GAmt DECIMAL (25,6) =NULL,@TAmt DECIMAL (25,6) =NULL,@NAmt DECIMAL (25,6) =NULL,@TaxId INT=NULL,        
@TaxTypeId INT=NULL,@ReasonId INT=NULL,@Serial INT =NULL,@InvTaxId INT,@InvTaxTypeId INT,@IRow INT,@TradeDiscAmt DECIMAL(25,6)=NULL,        
@AddnlDiscAmt DECIMAL(25,6)=NULL,@ImportStatus INT = 1,@BranchID int = 0      
AS        
BEGIN TRY        
SET DATEFORMAT dmy        
SET NOCOUNT ON;        
declare @pr nvarchar(255)=''        
DECLARE @TrackInventory INT,@TrackBatch INT,@TrackPkd INT ,@AppPriceId INT ,@cursor_Inventory CURSOR ,@InventoryId INT,@InventoryQty DECIMAL(25,6),
@InventoryFQty DECIMAL(25,6) ,@InventoryDQty DECIMAL(25,6) ,@SaleUomCRate DECIMAL (25,6),@ActiveCheck NVARCHAR(255)        
declare @ApplyReturnprice int = (select count(*) from tblRolePermissions where Role = 2 and PermissionFormId = 129)--
SELECT @TrackInventory= TrackInventory,@TrackBatch =TrackBatch ,@TrackPkd =TrackPDK,@SaleUomCRate = PurchaseCR FROM tblMasterProduct WHERE ID =@ProdId        
--SELECT @SaleUomCRate=ConversionRate FROM tblMastUomGroupDetail WHERE UOMGroupID =@UomGroupId AND UOMMastID =@UomId        
set @SaleUomCRate = 1;        
DECLARE @Qty DECIMAL(25,6) ,@FreeQty DECIMAL(25,6),@DmgQty DECIMAL(25,6)        
SET @Qty=@SaleUomCRate*@UomQty        
SET @FreeQty =@SaleUomCRate*@UomFreeQty        
SET @DmgQty =@SaleUomCRate*@UomDmgQty        
SET @InvPrice =(@InvPrice /@SaleUomCRate)        
IF(ISNULL(@TrackPkd,0) =0)        
BEGIN        
SET @PKDDate =NULL        
SET @ExpiryDate=NULL        
END        
CREATE TABLE #ProdClassificationQtyDetail (Ident INT IDENTITY ,TempInvId INT ,TempQty DECIMAL(25,6) ,TempFQty DECIMAL(25,6),TempDQty DECIMAL(25,6))        
IF ISNULL(@TrackInventory,0)<>0 AND ISNULL(@TrackBatch,0)=0 AND ISNULL(@TrackPkd,0)=0        
BEGIN        
INSERT INTO #ProdClassificationQtyDetail        
SELECT InventoryId ,ISNULL(ActualQty,0),ISNULL(ActualFreeQty,0),ISNULL(ActualDmgQty,0) FROM tblProductInventory        
WHERE (ActualQty>0 OR ActualFreeQty>0 OR ActualDmgQty>0) AND (case when @ApplyReturnprice = 1 then ReturnPrice else PurchasePrice end) = @InvPrice 
AND MRPONPrice =@InvMRP AND ProdId=@ProdId AND TransDate <=@Date        
END        
IF ISNULL(@TrackInventory,0)<>0 AND ISNULL(@TrackBatch,0)<>0 AND ISNULL(@TrackPkd,0)=0        
BEGIN        
INSERT INTO #ProdClassificationQtyDetail     
SELECT InventoryId ,ISNULL(ActualQty,0),ISNULL(ActualFreeQty,0),ISNULL(ActualDmgQty,0) FROM tblProductInventory        
WHERE (ActualQty>0 OR ActualFreeQty>0 OR ActualDmgQty>0)   AND ISNULL(BatchNumber,'') = ISNULL(@Batch,'') AND 
(case when @ApplyReturnprice = 1 then ReturnPrice else PurchasePrice end) =@InvPrice AND MRPONPrice =@InvMRP     
AND ProdId=@ProdId AND TransDate <=@Date        
END        
IF ISNULL(@TrackInventory,0)<>0 AND ISNULL(@TrackBatch,0)<>0 AND ISNULL(@TrackPkd,0)<>0        
BEGIN        
INSERT INTO #ProdClassificationQtyDetail     
SELECT InventoryId ,ISNULL(ActualQty,0),ISNULL(ActualFreeQty,0),ISNULL(ActualDmgQty,0) FROM tblProductInventory        
WHERE (ActualQty>0 OR ActualFreeQty>0 OR ActualDmgQty>0) AND ISNULL(BatchNumber,'') = ISNULL(@Batch,'') AND ISNULL(PKDDate,'') = ISNULL(@PKDDate,'') AND ISNULL(ExpiryDate,'') =ISNULL(@ExpiryDate,'')        
AND (case when @ApplyReturnprice = 1 then ReturnPrice else PurchasePrice end) = @InvPrice AND MRPONPrice =@InvMRP AND ProdId=@ProdId AND TransDate <=@Date        
ORDER BY ExpiryDate DESC        
END        
IF ISNULL(@TrackInventory,0)<>0 AND ISNULL(@TrackBatch,0)=0 AND ISNULL(@TrackPkd,0)<>0        
BEGIN        
INSERT INTO #ProdClassificationQtyDetail     
SELECT InventoryId ,ISNULL(ActualQty,0),ISNULL(ActualFreeQty,0),ISNULL(ActualDmgQty,0) FROM tblProductInventory        
WHERE (ActualQty>0 OR ActualFreeQty>0 OR ActualDmgQty>0) AND ISNULL(PKDDate,'') = ISNULL(@PKDDate,'') AND ISNULL(ExpiryDate,'') =ISNULL(@ExpiryDate,'')    
AND (case when @ApplyReturnprice = 1 then ReturnPrice else PurchasePrice end) =@InvPrice AND MRPONPrice =@InvMRP AND ProdId=@ProdId AND TransDate <=@Date        
ORDER BY ExpiryDate DESC        
END        
set @pr += 'RTNPrice : '+convert(nvarchar,@InvPrice)+',MRP : '+convert(nvarchar,@InvMRP)+', ProdID : '+convert(nvarchar,@ProdId)+' | '        
--set @pr += 'Qty : '+convert(nvarchar,@Qty)+',InvQty : '+convert(nvarchar,@InventoryQty)+', InvID : '+convert(nvarchar,@InventoryId)+' | '        
set @pr += 'Count : '+convert(nvarchar,(SELECT count(*) FROM #ProdClassificationQtyDetail))        
CREATE TABLE #InvQtyDetail (TempInvId INT,TempQty DECIMAL(25,6),TempFQty DECIMAL(25,6),TempDQty DECIMAL(25,6))        
DECLARE cursor_Inventory CURSOR        
FOR (SELECT TempInvId,ISNULL(TempQty,0),ISNULL(TempFQty,0),ISNULL(TempDQty,0) FROM #ProdClassificationQtyDetail )        
OPEN cursor_Inventory        
FETCH NEXT FROM cursor_Inventory INTO @InventoryId,@InventoryQty,@InventoryFQty ,@InventoryDQty        
WHILE @@FETCH_STATUS =0        
BEGIn        
        
--IF(ISNULL(@ImportStatus,1) = 1)        
--BEGIN        
IF(ISNULL(@Qty,0) >0 AND ISNULL(@InventoryQty,0)>0)        
BEGIN --Actual Qty        
IF ISNULL(@Qty,0) >ISNULL(@InventoryQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualQty =ISNULL(ActualQty,0)-ISNULL(@InventoryQty,0) WHERE InventoryId =@InventoryId        
SET @Qty =@Qty -@InventoryQty        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty ) VALUES (@InventoryId,@InventoryQty,0,0)        
END        
ELSE IF ISNULL(@Qty,0) <ISNULL(@InventoryQty,0)        
BEGIN        
        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualQty =ISNULL(@InventoryQty,0)-ISNULL(@Qty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty ) VALUES (@InventoryId,@Qty,0,0)        
SET @Qty =0        
END        
ELSE IF ISNULL(@Qty,0)=ISNULL(@InventoryQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualQty =ISNULL(@InventoryQty,0)-ISNULL(@Qty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty ) VALUES (@InventoryId,@Qty,0,0)        
SET @Qty =0        
END        
END        
IF(ISNULL(@FreeQty,0)>0 AND ISNULL(@InventoryFQty,0)>0)        
BEGIN --Actual Free Qty        
IF ISNULL(@FreeQty,0)>ISNULL(@InventoryFQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualFreeQty =ISNULL(ActualFreeQty,0)-ISNULL(@InventoryFQty,0) WHERE InventoryId =@InventoryId        
END        
SET @FreeQty =@FreeQty -@InventoryFQty        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,@InventoryFQty,0)        
END        
ELSE IF ISNULL(@FreeQty ,0)<ISNULL(@InventoryFQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualFreeQty =ISNULL(@InventoryFQty,0)-ISNULL(@FreeQty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,@FreeQty,0)        
SET @FreeQty =0        
END        
ELSE IF ISNULL(@FreeQty,0)=ISNULL(@InventoryFQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualFreeQty =ISNULL(@InventoryFQty,0)-ISNULL(@FreeQty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,@FreeQty,0)        
SET @FreeQty =0        
END        
END        
IF(ISNULL(@DmgQty,0) >0 AND ISNULL(@InventoryDQty,0)>0 )        
BEGIN--Actual Dmg Qty        
IF ISNULL(@DmgQty,0) >ISNULL(@InventoryDQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualDmgQty =ISNULL(ActualDmgQty,0)-ISNULL(@InventoryDQty,0) WHERE InventoryId =@InventoryId        
END        
SET @DmgQty =@DmgQty -@InventoryDQty        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,0,@InventoryDQty)        
END        
ELSE IF ISNULL(@DmgQty,0) <ISNULL(@InventoryDQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualDmgQty =ISNULL(@InventoryDQty,0)-ISNULL(@DmgQty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,0,@DmgQty)        
SET @DmgQty =0        
END        
ELSE IF ISNULL(@DmgQty,0)=ISNULL(@InventoryDQty,0)        
BEGIN        
IF(ISNULL(@ImportStatus,1) = 1)        
BEGIN        
UPDATE tblProductInventory SET ActualDmgQty =ISNULL(@InventoryDQty,0)-ISNULL(@DmgQty,0) WHERE InventoryId =@InventoryId        
END        
INSERT INTO #InvQtyDetail(TempInvId ,TempQty,TempFQty ,TempDQty )VALUES (@InventoryId,0,0,@DmgQty)        
SET @DmgQty =0        
END        
END        
--END        
FETCH NEXT FROM cursor_Inventory INTO @InventoryId,@InventoryQty,@InventoryFQty ,@InventoryDQty        
END        
IF((ISNULL(@Qty,0)<>0 OR ISNULL(@FreeQty,0)<>0 OR ISNULL(@DmgQty,0) <>0) AND ISNULL(@ImportStatus,1) = 1)        
BEGIN        
DECLARE @ERROR NVARCHAR(255) = convert(nvarchar(255),@Qty)        
RAISERROR('5 - QTY : %s',16,1,@pr);        
END        
CREATE TABLE #tblSave (IdentId INT IDENTITY ,TempInvId INT,TempQty DECIMAL(25,6),TempFQty DECIMAL(25,6),TempDQty DECIMAL(25,6))        
INSERT INTO #tblSave SELECT TempInvId ,SUM(TempQty ),SUM(TempFQty),SUM(TempDQty) FROM #InvQtyDetail GROUP BY TempInvId        
--SELECT COUNT(*) FROM #tblSave        
DECLARE @Count INT,@Index INT        
SET @Count =(SELECT COUNT(*) FROM #tblSave)        
SET @Index =1        
WHILE(ISNULL(@Count,0) >0)        
BEGIN --Finally Stored in Table        
--Only one row should be act as header        
IF ISNULL(@Index,0)! = 1        
BEGIN        
SET @UomId =0;SET @UomQty=0 ;SET @UomFreeQty =0;SET @UomDmgQty =0;        
SET @GoodsAmt =0;SET @AddnlDiscAmt=0;SET @TradeDiscAmt=0;        
SET @GAmt =0;SET @TAmt=0;SET @NAmt =0; --;SET @ProdDisc =NULL        
END        
INSERT INTO tblTransPurchaseDetail        
(HID,[ProdID],[InventoryId],[UomID],[UomQty],[UomFreeQty] ,[UomDamageQty] ,[AdjQty],[AdjFreeQty] ,[AdjDmgQty],ReturnPrice,[UomReturnPrice],[TaxID] ,        
[TaxTypeID],[Tax%],[GoodsAmt] ,[ProdDisc%],[GrossAmt],[TaxAmt],[NetAmt],ReasonId,[Serial],[TradeDisc%],[AddnlDisc%],UomPurchasePrice)        
VALUES( @PRId ,@ProdId,(SELECT TempInvId FROM #tblSave WHERE IdentId=@Index),@UomId  ,@UomQty ,@UomFreeQty ,@UomDmgQty ,(SELECT TempQty FROM #tblSave WHERE IdentId=@Index) ,        
(SELECT TempFQty FROM #tblSave WHERE IdentId=@Index) ,(SELECT TempDQty FROM #tblSave WHERE IdentId=@Index),@InvPrice ,@UomPrice ,@TaxId ,@TaxTypeId ,@TaxPern ,@GoodsAmt ,@ProdDisc ,@GAmt ,        
@TAmt ,@NAmt,@ReasonId,@Serial,@TradeDiscAmt,@AddnlDiscAmt,0)        
SET @IRow=@IRow+1;        
SET @Count =@Count-1;        
SET @Index =@Index+1;        
END        
DROP TABLE #ProdClassificationQtyDetail,#tblSave,#InvQtyDetail        
END TRY        
BEGIN CATCH        
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE();        
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDraftDetail]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePRDraftDetail]
@Date DATE,@PRId INT=NULL,@ProdId INT=NULL,@UomId INT=NULL,
@UomQty DECIMAL(25,6)=NULL,@UomFreeQty DECIMAL(25,6)=NULL,@UomDmgQty DECIMAL(25,6)=NULL,@Batch NVARCHAR(255)=NULL,@PKDDate DATE=NULL,@ExpiryDate DATE =NULL,
@InvPrice DECIMAL (25,6)=NULL,@InvMRP DECIMAL (25,6) =NULL,@InvTax DECIMAL (25,6)=NULL,@UomPrice DECIMAL (25,6) =NULL,@TaxPern DECIMAL (25,6) =NULL,
@GoodsAmt DECIMAL (25,6) =NULL,@ProdDisc DECIMAL (25,6) =NULL,@GAmt DECIMAL (25,6) =NULL,@TAmt DECIMAL (25,6) =NULL,@NAmt DECIMAL (25,6) =NULL,@TaxId INT=NULL,
@TaxTypeId INT=NULL,@ReasonId INT=NULL,@Serial INT =NULL,@InvTaxId INT,@InvTaxTypeId INT,@IRow INT,@TradeDiscAmt DECIMAL(25,6)=NULL,
@AddnlDiscAmt DECIMAL(25,6)=NULL,@ImportStatus INT = 1
AS
BEGIN TRY
SET DATEFORMAT dmy
SET NOCOUNT ON;
INSERT INTO tblPurchaseDraftDetail
(HID,[ProdID],[UomID],[UomQty],[UomFreeQty] ,[UomDamageQty],UomPurchasePrice,[UomReturnPrice],[TaxID] ,
TaxPern,[GoodsAmt] ,ProdDiscPern,[GrossAmt],[TaxAmt],[NetAmt],ReasonId,[Serial],TradeDiscPern,AddnlDiscPern)
VALUES( @PRId ,@ProdId,@UomId  ,@UomQty ,@UomFreeQty ,@UomDmgQty ,@UomPrice ,@UomPrice ,@TaxId  ,@TaxPern ,@GoodsAmt ,@ProdDisc ,@GAmt ,
@TAmt ,@NAmt,@ReasonId,@Serial,@TradeDiscAmt,@AddnlDiscAmt)
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE();
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRDraftHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePRDraftHeader]
@Mode INT,@Status INT,@UID INT,@PRId INT =NULL,@BranchID int = null,@VendorID INT=NULL,@PRDate DATE=NULL,@TotalProdDiscAmt DECIMAL (25,6)=NULL,
@GrossAmt DECIMAL (25,6)=NULL,@TotalTaxAmt DECIMAL (25,6)=NULL,@NetAmt DECIMAL (25,6)=NULL,@DocRef NVARCHAR(255)=NULL,@PaumentModeId INT=NULL,@PGroupID INT=NULL,
@TaxTypeID INT=NULL,@VehicleNo NVARCHAR(255)=NULL ,@TradeDisc DECIMAL(25,6)=NULL,@TotalTradeDiscAmt DECIMAL(25,6)=NULL,@AddnlDisc DECIMAL(25,6)=NULL,
@TotalAddnlDiscAmt DECIMAL(25,6)=NULL,@Frieght DECIMAL (25,6)=NULL,@OtherCharge DECIMAL(25,6)=NULL,@OtherChargeAmt DECIMAL (25,6)=NULL,
@WrightOffAmt DECIMAL (25,6)=NULL ,@RoundOffAmt DECIMAL (25,6)=NULL,@UDFId INT =NULL,@ReturnType INT=NULL,@CurrentStatus int = NULL,
@PR_IMPORTDOCID NVARCHAR(255)=NULL,@TCSPern DECIMAL(25,6) = NULL,@TCSAmt DECIMAL(25,6) = NULL,@ImportStatus INT = 1,@Remarks NVARCHAR(MAX)=NULL,
@Narration NVARCHAR(MAX)=NULL,@DraftID int =NULL
AS
BEGIN TRY
SET DATEFORMAT dmy
SET NOCOUNT ON;
DECLARE @ScopeID INT
IF(ISNULL(@DraftID,0) > 0)
BEGIN
UPDATE tblPurchaseDraftHeader SET Status = 2 WHERE ID = @DraftID
END
INSERT INTO tblPurchaseDraftHeader(Date ,TransID ,VendorID ,[Status] ,TotalProdDiscAmt ,GrossAmt ,TaxAmt ,NetAmt ,RefNo ,ProdGroupID
,PaymentModeId ,TaxTypeID ,VehicleNo , TradeDiscPern ,TotalTradeDiscAmt ,AddnlDiscPern ,TotalAddnlDiscAmt ,Frieght
,OtherChargePern ,OtherChargeAmt ,WriteOffAmt ,RoundOffAmt ,Balance ,Cby ,Cdate,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ReturnType,
TCSTaxPern,TCSTaxAmt,Remarks,Narration)
VALUES
(@PRDate  ,12  ,@VendorID ,case when ISNULL(@ImportStatus,1) = 1 THEN @Status ELSE @ImportStatus END ,@TotalProdDiscAmt ,@GrossAmt,
@TotalTaxAmt ,@NetAmt ,@DocRef ,@PGroupID ,@PaumentModeId,@TaxTypeID ,@VehicleNo ,@TradeDisc ,@TotalTradeDiscAmt ,@AddnlDisc ,@TotalAddnlDiscAmt ,@Frieght ,
@OtherCharge,@OtherChargeAmt ,@WrightOffAmt ,@RoundOffAmt ,@NetAmt ,@UID ,GETDATE (),@UDFId,0,NULL,NULL,@ReturnType,
ISNULL(@TCSPern,0),ISNULL(@TCSAmt,0),@Remarks,@Narration)
SET @ScopeID=(SELECT SCOPE_IDENTITY())
SELECT @ScopeID
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRHeader]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePRHeader]
@Mode INT,@Status INT,@UID INT,@PRId INT =NULL,@BranchID int = null,@VendorID INT=NULL,@PRDate DATE=NULL,@TotalProdDiscAmt DECIMAL (25,6)=NULL,
@GrossAmt DECIMAL (25,6)=NULL,@TotalTaxAmt DECIMAL (25,6)=NULL,@NetAmt DECIMAL (25,6)=NULL,@DocRef NVARCHAR(255)=NULL,@PaumentModeId INT=NULL,@PGroupID INT=NULL,
@TaxTypeID INT=NULL,@VehicleNo NVARCHAR(255)=NULL ,@TradeDisc DECIMAL(25,6)=NULL,@TotalTradeDiscAmt DECIMAL(25,6)=NULL,@AddnlDisc DECIMAL(25,6)=NULL,
@TotalAddnlDiscAmt DECIMAL(25,6)=NULL,@Frieght DECIMAL (25,6)=NULL,@OtherCharge DECIMAL(25,6)=NULL,@OtherChargeAmt DECIMAL (25,6)=NULL,
@WrightOffAmt DECIMAL (25,6)=NULL ,@RoundOffAmt DECIMAL (25,6)=NULL,@UDFId INT =NULL,@ReturnType INT=NULL,@CurrentStatus int = NULL,
@PR_IMPORTDOCID NVARCHAR(255)=NULL,@TCSPern DECIMAL(25,6) = NULL,@TCSAmt DECIMAL(25,6) = NULL,@ImportStatus INT = 1,@Remarks NVARCHAR(MAX)=NULL,
@Narration NVARCHAR(MAX)=NULL,@DraftID int =NULL
AS
BEGIN TRY
DECLARE @DocId NVARCHAR(255),@DocValue INT,@CheckedStatus INT,@UDFDocId NVARCHAR(255),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255),
@CheckUDFId INT,@AccId INT,@ScopeID INT,@ActiveCheck NVARCHAR(255), @TempNetAmt DECIMAL (25,6),@TempBalance DECIMAL (25,6),@TempDate DATE
DECLARE @F_SD DATE = (SELECT F_SD FROM tblCompanyRegistration WHERE CompanyId = 1)
DECLARE @F_ED DATE = (SELECT F_ED FROM tblCompanyRegistration WHERE CompanyId = 1)
IF(@Mode = 4 OR @Mode = 2)
BEGIn --Purchase Return Cancel
SELECT @CheckedStatus=[Status],@TempDate=Date,@DocValue =DocValue,@TempNetAmt=NetAmt ,@TempBalance=Balance
FROM tblTransPurchaseHeader WHERE ID = @PRId
--SELECT * FROM tblTransPurchaseHeader WHERE ID = 26712
IF ISNULL(@CheckedStatus,0)!=6 AND ISNULL(@CheckedStatus,0)!=3
BEGIN
RAISERROR('2',16,1);
END
IF ISNULL(@TempBalance,0) != ISNULL(@TempNetAmt,0)
BEGIN
RAISERROR('3',16,1);
END
--Back Dated PR Cancel Entry Fill Back Dated Transaction Table
--IF(@Mode = 4)
--BEGIN
--EXEC uspCreateBackTran 3,@PRId,@PRId,12,@PRId ,@TempDate,NULL -- @DocValue = @PRId
--END
--Update Status Cancel(4) in Journal Table
UPDATE tblFAJournal SET [Status]= @Mode,ClBy =@UID ,ClDate =GETDATE () WHERE DocPrefix =12 AND TransId=@PRId
--Qty Return Update Inventory Table
UPDATE tblProductInventory SET ActualQty =ISNULL(ActualQty ,0)+ ISNULL(GRND .AdjQty,0),ActualFreeQty =ISNULL(ActualFreeQty ,0)+ISNULL(GRND .AdjFreeQty ,0),
ActualDmgQty =ISNULL(ActualDmgQty ,0)+ISNULL (AdjDmgQty,0)
FROM tblProductInventory IP, tblTransPurchaseDetail GRND
WHERE IP.InventoryId =GRND .InventoryId AND GRND.HID = @PRId
--Status Changed In Header Table
IF(@Mode = 4)
BEGIN
UPDATE tblTransPurchaseHeader SET [Status] = 4, Clby= @UID , Cldate = GETDATE ()
WHERE ID = @PRId
END
ENd
--Back Dated PR Cancel Entry Fill Back Dated Transaction Table
--IF((@Mode = 4 AND @Status = 4) OR @Mode = 2)
--BEGIN
--DECLARE @TEMPDOC INT
--SELECT @TEMPDOC =DocValue FROM tblTransPurchaseHeader WHERE ID = @PRId
--EXEC uspCreateBackTran 3,@PRId,@PRId,12,@TEMPDOC ,@PRDate,NULL
--END
IF(@Status = 6 or @Status = 3)
BEGIN --Create Purchase Return OR MODIFY PR
IF(@Status = 6)
BEGIN
--Get Current Docvalue
SELECT @DocValue=Doc .DocValue FROM tblDocumentSeries Doc WHERE Doc.TransID =12
--Docvalue and Docprefix Concetination
SELECT @DocId = Doc .DocPrefix+CONVERT(NVARCHAR,Doc .DocValue) FROM tblDocumentSeries Doc WHERE Doc.TransID =12
--Increment Docvalue+1
UPDATE tblDocumentSeries SET DocValue =ISNULL(DocValue,0)+1 WHERE TransID = 12
END
ELSE
BEGIN
DECLARE @NAmt DECIMAL(25,6) = NULL,@Bal DECIMAL(25,6) = NULL,@nCurSts INT
SET @nCurSts = (select Status from tblTransPurchaseHeader where ID = @PRId)
IF(@nCurSts != @CurrentStatus)
BEGIN
RAISERROR('3',16,1);
END
--SELECT * FROM tblTransPurchaseHeader ORDER BY 1 DESC
SELECT @NAmt = NetAmt,@Bal=Balance FROM tblTransPurchaseHeader WHERE ID = @PRId
IF(ISNULL(@NAmt,0) = ISNULL(@Bal,0))
BEGIN
UPDATE tblTransPurchaseHeader SET Status = 2,MBy=@UID,MDate = GETDATE() WHERE ID =@PRId
SELECT @DocValue=BH.DocValue,@DocId=DocId FROM tblTransPurchaseHeader BH
WHERE BH.TransID =12 AND BH.ID =@PRId
END
ELSE
BEGIN
RAISERROR('2',16,1);
END
END
--User Define Document
IF ISNULL(@PR_IMPORTDOCID,'')!='' AND ISNULL(@UDFId,0)=0
BEGIN
DECLARE @PR_UDFDocValue INT,@PR_UDFDocPrefix NVARCHAR(255),@PR_UDNID INT,@PR_CHKCOUNT INT
SELECT @PR_UDFDocPrefix = LEFT(@PR_IMPORTDOCID, PATINDEX('%[A-Z][^A-Z]%', @PR_IMPORTDOCID)),
@PR_UDFDocValue = RIGHT(@PR_IMPORTDOCID, LEN(@PR_IMPORTDOCID) - (PATINDEX('%[A-Z][^A-Z]%', @PR_IMPORTDOCID)))
SET @PR_CHKCOUNT = (SELECT COUNT(UDNId) FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @PR_UDFDocPrefix AND TransId = 12)
SET @PR_UDNID = (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @PR_UDFDocPrefix AND TransId = 12)
IF ISNULL(@PR_CHKCOUNT,0)=0
BEGIN
INSERT INTO tblMasterUserDefineNoHeader (TransId,DocName,DocPrefix,DocValue,CBy,CDate) VALUES
(7,@PR_UDFDocPrefix,@PR_UDFDocPrefix,1,@UID,CONVERT(DATE,GETDATE()))
SET @PR_UDNID = SCOPE_IDENTITY()
INSERT INTO tblMasterUserDefineNoDetail (UDNId,UserId) VALUES (@PR_UDNID,@UID)
END
UPDATE tblMasterUserDefineNoHeader SET DocValue = @PR_UDFDocValue WHERE UDNId = @PR_UDNID
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)
FROM tblMasterUserDefineNoHeader WHERE UDNId=@PR_UDNID
SET @UDFId = @PR_UDNID
END
ELSE
BEGIN
IF(@Status = 6)
BEGIN
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId
END
ELSE IF(@Status = 3)
BEGIN
--SELECT * FROM tblMasterUserDefineNoHeader WHERE UDNId = 60
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId
END
END
IF(@Mode = 1 OR @Mode = 2)
BEGIN
IF((SELECT COUNT(DocValue) FROM tblTransPurchaseHeader WHERE DocValue = @DocValue and Date BETWEEN @F_SD AND @F_ED and Status in (3,4,5,6) and TransID = 12) != 0)
BEGIN
RAISERROR('UDocId',16,1)
END
ENd
--Insert Header Table
INSERT INTO tblTransPurchaseHeader (Date ,DocId ,TransID ,DocValue,BranchID ,VendorID ,[Status] ,TotalProdDiscAmt ,GrossAmt ,TaxAmt ,NetAmt ,RefNo ,ProdGroupID
,PaymentModeId ,TaxTypeID ,VehicleNo , [TradeDisc%] ,TotalTradeDiscAmt ,[AddnlDisc%] ,TotalAddnlDiscAmt ,Frieght
,[OtherCharge%] ,OtherChargeAmt ,WriteOffAmt ,RoundOffAmt ,Balance ,Cby ,Cdate,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ReturnType,
TCSTaxPern,TCSTaxAmt,Remarks,Narration)
VALUES
(@PRDate ,@DocID ,12 ,@DocValue,@BranchID ,@VendorID ,case when ISNULL(@ImportStatus,1) = 1 THEN @Status ELSE @ImportStatus END ,@TotalProdDiscAmt ,@GrossAmt,
@TotalTaxAmt ,@NetAmt ,@DocRef ,@PGroupID ,@PaumentModeId,@TaxTypeID ,@VehicleNo ,@TradeDisc ,@TotalTradeDiscAmt ,@AddnlDisc ,@TotalAddnlDiscAmt ,@Frieght ,
@OtherCharge,@OtherChargeAmt ,@WrightOffAmt ,@RoundOffAmt ,@NetAmt ,@UID ,GETDATE (),@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@ReturnType,
ISNULL(@TCSPern,0),ISNULL(@TCSAmt,0),@Remarks,@Narration)
SET @ScopeID=(SELECT SCOPE_IDENTITY())
--Back Dated Transaction Stored In Initial Table(tblBackDateTran)
--EXEC uspCreateBackTran 1,@ScopeID,0,12,@DocValue ,@PRDate,NULL
--Vendor Account Id
SELECT @Accid=FAID FROM tblMasterVendor WHERE id =@VendorId
--Purchase Return Podting
DECLARE @JVID INT
SELECT @JVID=MAX(ISNULL(JVID,0))+1 FROM tblFAJournal
SET @Status = (case when ISNULL(@ImportStatus,1) = 1 THEN @Status ELSE @ImportStatus END)
--Net Amt Posting Vendor Account
--SELECT * FROM tblFAJournal WHERE DocPrefix = 12 ORDER BY 1 DESC
IF ISNULL(@NetAmt,0)>0
BEGIN
DECLARE @RAmt DECIMAL (25,6)
SET @RAmt =-1*ISNULL(@RoundOffAmt,0)
--SET @RAmt = (CASE WHEN ISNULL(@RoundOffAmt,0) > 0 THEN -1*ISNULL(@RoundOffAmt,0) ELSE -1*ISNULL(@RoundOffAmt,0) END)
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES (@JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,@Accid,0,@NetAmt+ISNULL(@RAmt,0), 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
--Tax Amt Posting
IF ISNULL(@TotalTaxAmt,0)>0
BEGIN
--VAT Receivable (Input Tax Credit)
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,113,@TotalTaxAmt,0, 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
--Gross Amt Posting with Wright Off Amount
IF ISNULL(@GrossAmt,0)>0
BEGIN
--Purchase Return
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,78,ISNULL(@GrossAmt,0)+ISNULL(@WrightOffAmt,0),0, 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
--+ISNULL(@WrightOffAmt,0)
END
--IF ISNULL(@WrightOffAmt,0)>0 -- Writeoff Amount Gives Positive (+)
--BEGIN
--INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
--VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,117,ISNULL(@WrightOffAmt,0),0, 0,@Remarks,'Purchase Return',1,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
--END
--IF ISNULL(@WrightOffAmt,0)<0 -- Writeoff Amount Gives Negative (-)
--BEGIN
--INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
--VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,117,ISNULL(-@WrightOffAmt,0),0, 0,@Remarks,'Purchase Return',1,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
--END
--Freight Inwards
IF ISNULL(@Frieght,0)>0
BEGIN
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,312,ISNULL(@Frieght,0),0,0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
IF ISNULL(@TCSAmt,0)>0
BEGIN --TCS Amt Posting
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID)
VALUES ( @DocId, 12, @DocValue,@PRDate ,@DocRef ,57,@TCSAmt,0, 0,'','Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,
@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID)
END
--Other Charges
IF ISNULL(@OtherChargeAmt,0)>0
BEGIN
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,61,ISNULL(@OtherChargeAmt,0),0,0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
ELSE IF ISNULL(@OtherChargeAmt,0)<0
BEGIN
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,61,0,ISNULL(-(@OtherChargeAmt),0),0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
--Discount Posting
IF(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0))>0
BEGIN
SET @JVID=@JVID+1;
--Purchase Return
SELECT @Accid=FAID FROM tblMasterVendor WHERE id =@VendorId
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,78,(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0)),0,0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate ,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,31,0,(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0)),0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
--Round Off Amt Posting
IF ISNULL(@RoundOffAmt,0)<>0
BEGIN
SET @JVID=@JVID+1;
IF ISNULL(@RoundOffAmt,0)>0
BEGIN--Amt Is Positive
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,@Accid,0,@RoundOffAmt,0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate,@DocRef ,82,@RoundOffAmt,0, 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
ELSE IF ISNULL(@RoundOffAmt,0)<0
BEGIN --Amt Is Negative
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate ,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId,12, @DocValue,@PRDate ,@DocRef ,82,0,ABS(@RoundOffAmt), 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue)
VALUES ( @JVID,@DocId, 12, @DocValue,@PRDate ,@DocRef ,@Accid,ABS(@RoundOffAmt),0, 0,@Remarks,'Purchase Return',@Status,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue)
END
END
--Finally Return For Scope Id for Printing
IF(ISNULL(@DraftID,0) > 0)
BEGIN
UPDATE tblPurchaseDraftHeader SET Status = 8 WHERE ID = @DraftID
END
SELECT @ScopeID
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageProductMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspManageProductMaster 4,1
CREATE proc [dbo].[uspManageProductMaster]
@Mode int,@ID int = null,@Code nvarchar(MAX) = null,@Name nvarchar(MAX) = null,@EAN nvarchar(MAX) = null,@MfrID nvarchar(MAX) = null,@BrandID nvarchar(MAX) = null,
@CategoryID nvarchar(MAX) = null,@HSNCode nvarchar(30) = null,@ProductDiscPerc decimal(25, 4) = null,@BaseUomID smallint = null,@BaseCR decimal(25, 4) = null,
@PurchaseUomID smallint = null,@PurchaseCR decimal(25, 4) = null,@SalesUomID smallint = null,@SalesCR decimal(25, 4) = null,@ReportingUomID smallint = null,
@ReportingCR decimal(25, 4) = null,@ReportingQty decimal(25, 4) = null,@PurchaseTaxID tinyint = null,@SalesTaxID tinyint = null,@PurchasePrice decimal(25, 4) = null,
@SalesPrice decimal(25, 4) = null,@ECP decimal(25, 4) = null,@SPLPrice decimal(25, 4) = null,@MRP decimal(25, 4) = null,@ReturnPrice decimal(25, 4) = null,
@TrackInventory tinyint = null,@TrackBatch tinyint = null,@TrackSerial tinyint = null,@TrackPDK tinyint = null,@DateFormat tinyint = null,@BarcodeUomID smallint = null,
@BarcodePriceID smallint = null,@VendorID nvarchar(MAX) = null,@MOH int = null,@MOQ int = null,@Remarks nvarchar(MAX) = null,@Active tinyint = null,@CBy smallint = null ,@LocationID nvarchar(MAX) = null
as

BEGIN TRY
DECLARE @IDMFR SMALLINT,@IDBRAND SMALLINT,@IDCAT SMALLINT,@IDVend INT,@Location SMALLINT
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterProduct WHERE Code = @Code) > 0)
BEGIN
RAISERROR('Code Already Exists',16,1)
END
IF((SELECT count(*) FROM tblMasterProduct WHERE Name = @Name) > 0)
BEGIN
RAISERROR('Name Already Exists',16,1)
END
IF((SELECT count(*) FROM tblMasterProduct WHERE EAN = @EAN) > 0)
BEGIN
RAISERROR('EAN Already Exists',16,1)
END
select @IDMFR = ID from tblMasterManufacturer where Name = @MfrID
select @IDBRAND = ID from tblMasterBrand where Name = @BrandID
select @IDCAT = ID from tblMasterCategory where Name = @CategoryID
select @IDVend = ID from tblMasterVendor where Name = @VendorID
select @Location = ID from tblMasterLocation where Name = @LocationID

set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))

INSERT INTO tblMasterProduct(Code,Name,EAN,MfrID,BrandID,CategoryID,HSNCode,ProductDiscPerc,BaseUomID,BaseCR,PurchaseUomID,PurchaseCR,SalesUomID,SalesCR,ReportingUomID,
ReportingCR,ReportingQty,PurchaseTaxID,SalesTaxID,PurchasePrice,SalesPrice,ECP,SPLPrice,MRP,ReturnPrice,TrackInventory,TrackBatch,TrackSerial,TrackPDK,DateFormat,BarcodeUomID,
BarcodePriceID,VendorID,MOH,MOQ,Remarks,Active,CBy,CDate,LocationID) VALUES
(@Code,@Name,@EAN,ISNULL(@IDMFR,0),ISNULL(@IDBRAND,0),ISNULL(@IDCAT,0),@HSNCode,@ProductDiscPerc,
@BaseUomID,@BaseCR,@PurchaseUomID,@PurchaseCR,@SalesUomID,
@SalesCR,@ReportingUomID,@ReportingCR,
@ReportingQty,@PurchaseTaxID,@SalesTaxID,@PurchasePrice,@SalesPrice,@ECP,@SPLPrice,@MRP,@ReturnPrice,@TrackInventory,@TrackBatch,@TrackSerial,@TrackPDK,
@DateFormat,@BarcodeUomID,@BarcodePriceID,ISNULL(@IDVend,0),@MOH,@MOQ,@Remarks,@Active,@CBy,GETDATE(),@Location)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
IF((SELECT count(*) FROM tblMasterProduct WHERE Code = @Code AND ID != @ID) > 0)
BEGIN
RAISERROR('Code Already Exists',16,1)
END
IF((SELECT count(*) FROM tblMasterProduct WHERE Name = @Name AND ID != @ID) > 0)
BEGIN
RAISERROR('Name Already Exists',16,1)
END
IF((SELECT count(*) FROM tblMasterProduct WHERE EAN = @EAN AND ID != @ID) > 0)
BEGIN
RAISERROR('EAN Already Exists',16,1)
END
set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))
select @IDMFR = ID from tblMasterManufacturer where Name = @MfrID
select @IDBRAND = ID from tblMasterBrand where Name = @BrandID
select @IDCAT = ID from tblMasterCategory where Name = @CategoryID
select @IDVend = ID from tblMasterVendor where Name = @VendorID
select @Location = ID from tblMasterLocation where Name = @LocationID
--Previous ID data Posting in History table
insert into tblMasterProductHistory
select 28,*,@CBy,GETDATE() from tblMasterProduct where ID=@ID

UPDATE tblMasterProduct SET Code = @Code,Name = @Name,EAN = @EAN,MfrID = ISNULL(@IDMFR,0),BrandID = ISNULL(@IDBRAND,0),
CategoryID = ISNULL(@IDCAT,0),HSNCode = @HSNCode,ProductDiscPerc = @ProductDiscPerc,BaseUomID = @BaseUomID,BaseCR = @BaseCR,
PurchaseUomID = @PurchaseUomID,PurchaseCR = @PurchaseCR,SalesUomID = @SalesUomID,SalesCR = @SalesCR,
ReportingUomID = @ReportingUomID,ReportingCR = @ReportingCR,ReportingQty = @ReportingQty,PurchaseTaxID = @PurchaseTaxID,
SalesTaxID = @SalesTaxID,PurchasePrice = @PurchasePrice,SalesPrice = @SalesPrice,ECP = @ECP,SPLPrice = @SPLPrice,MRP = @MRP,
ReturnPrice = @ReturnPrice,TrackInventory = @TrackInventory,TrackBatch = @TrackBatch,TrackSerial = @TrackSerial,TrackPDK = @TrackPDK,
DateFormat = @DateFormat,BarcodeUomID = @BarcodeUomID,BarcodePriceID = @BarcodePriceID,VendorID = ISNULL(@IDVend,0),MOH = @MOH,
MOQ = @MOQ,Remarks = @Remarks,Active = @Active,MDate = GETDATE(),LocationID = @Location WHERE ID=@ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT TC.ID,TC.Code,TC.Name,TC.EAN,MF.Name Manuf,MB.Name Brand,MC.Name Category,TC.Active FROM tblMasterProduct TC
JOIN tblMasterManufacturer MF ON MF.ID = TC.MfrID
JOIN tblMasterBrand MB ON MB.ID = TC.BrandID
JOIN tblMasterCategory MC ON MC.ID = TC.CategoryID
ORDER BY TC.Code,TC.Name
END
IF(@Mode = 4)
BEGIN
SELECT MP.*,MF.Name MfrName,MB.Name BrandName,MC.Name CategoryName,MV.Name VendorName,ML.Name Location
from tblMasterProduct MP
JOIN tblMasterManufacturer MF ON MF.ID = MP.MfrID
JOIN tblMasterBrand MB ON MB.ID = MP.BrandID
JOIN tblMasterCategory MC ON MC.ID = MP.CategoryID
left JOIN tblMasterVendor MV ON MV.ID = MP.VendorID
left JOIN tblMasterLocation ML ON ML.ID = MP.LocationID
WHERE MP.ID = @ID
END
IF(@Mode = 5)
BEGIN
select 1 FType,'Manuf Name' Form,ID,Name Descriptions,'' Value from tblMasterManufacturer WHERE Active = 1
union
select 2 FType,'Brand Name' Form,ID,Name Descriptions,'' from tblMasterBrand WHERE Active = 1
union
select 3 FType,'Category Name' Form,ID,Name Descriptions,'' from tblMasterCategory WHERE Active = 1
union
select 4 FType,'UOM' Form,ID,Name Descriptions,'' from tblMasterUOM WHERE Active = 1
union
select 5 FType,'Tax' Form,TaxID,TaxName Descriptions,convert(nvarchar,GST) from tblMasterTax WHERE Active = 1
union
select 6 FType,'Price Type' Form,ID,PriceType Descriptions,'' from tblPriceType WHERE Active = 1
union
select 7 FType,'Vendor' Form,ID,Name Descriptions,'' from tblMasterVendor WHERE Active = 1
union
select 8 FType,'Location' Form,ID,Name Descriptions,'' from tblMasterLocation WHERE Active = 1
order by FType,Descriptions
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManagePRVoucher]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePRVoucher]                         
@Status INT,@FormMode INT,@ID INT,@DocDate DATE,@ReferNo NVARCHAR(255)=NULL,@PartyName NVARCHAR(255),@FAAccountName NVARCHAR(255),  
@Amount DECIMAL (25,6),@Discount DECIMAL (25,6),@TaxID INT=NULL,@TaxPern DECIMAL(25,6)=NULL,@GrossAmt DECIMAL(25,6)=NULL,  
@TaxAmt DECIMAL(25,6)=NULL,@NetAmount DECIMAL (25,6),@Remarks NVARCHAR(255),@Narration NVARCHAR(255),@UID INT,                      
@Type INT,@UDFId INT=NULL,@InternalTransId INT =NULL,@Cond INT=NULL,@HSNorSACCode NVARCHAR(15)=NULL,                         
@TDSAmount DECIMAL(25,6)=NULL,@nStatus INT = null,@UDNDocID_Import NVARCHAR(255)=NULL,@ImportStatus int = 0    
AS                         
BEGIN TRY                         
SET NOCOUNT ON;                         
SET DATEFORMAT DMY;                         
DECLARE @DocValue INT,@SCOPID INT,@DocId NVARCHAR(50),@TempStatus INT,@TempBalance DECIMAL (25,6),@UDFDocValue INT,              
@UDFDocPrefix NVARCHAR(255) ,@UDFDocId NVARCHAR(255) ,@CheckUDFId INT,@ActiveCheck NVARCHAR(255),@TempNetAmt DECIMAL(25,6),  
@PartyID INT,@FAAccountID INT  
select @PartyID = FAID from tblFAAccount where AccountName = @PartyName  
select @FAAccountID = FAID from tblFAAccount where AccountName = @FAAccountName  
if(ISNULL(@Status,0) = 3) -- IF VARIANT SET STATUS TO 1(create)
BEGIN
SET @Status = 1
END
--Verify Balance Modify and Cancel for Asset Transaction                         
IF(ISNULL(@Status,0) !=1 and @ImportStatus != 4)                         
BEGIn                         
SET @TempStatus=(SELECT [Status] FROM tblTranPRVoucher WHERE ID=@ID)                         
SET @TempBalance = (SELECT (ISNULL(Balance,0)+ISNULL(TDSAmount,0)) FROM tblTranPRVoucher WHERE ID=@ID)              
SET @TempNetAmt = (SELECT ISNULL(NetAmount,0) FROM tblTranPRVoucher WHERE ID=@ID)              
END              
                        
--Status Verify Exist Data                
IF((ISNULL(@Status,0) =2) OR (ISNULL(@Status,0) =4) and @ImportStatus != 4)    
--IF(ISNULL(@Status,0) =4)            
BEGIn            
IF(@nStatus != @TempStatus)            
BEGIN                         
RAISERROR('4',16,1)  
end            
IF @TempBalance!=@TempNetAmt                         
BEGIN                         
RAISERROR('3',16,1)                         
END                         
IF @TempStatus != 1 AND @TempStatus != 3                         
BEGIN                         
RAISERROR('4',16,1);                         
END                         
END                         
                       
--Transaction Doc Series UpDate && User Define DocSeries Update                         
IF(ISNULL(@Status,0) =1  or @ImportStatus = 4)                         
BEGIN                         
SELECT @DocValue=DocValue FROM tblDocumentSeries WHERE TransID=@FormMode                         
SELECT @DocId=DocPrefix + CONVERT(NVARCHAR, @DocValue) FROM tblDocumentSeries WHERE TransID=@FormMode                    
UPDATE tblDocumentSeries SET DocValue=ISNULL(DocValue,0)+1 WHERE TransID=@FormMode                         
IF ISNULL(@UDFId,0)>0                         
BEGIN                       
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                         
FROM tblMasterUserDefineNoHeader                         
WHERE UDNId=@UDFId                         
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId                         
END          
ELSE IF ISNULL(@UDFId,0)=0 AND ISNULL(@UDNDocID_Import,'')!=''                   
BEGIN                     
                   
DECLARE @SALES_UDFDocValue INT,@SALES_UDFDocPrefix NVARCHAR(255),@SALES_UDNID INT,@SALES_CHKCOUNT INT                   
SELECT @SALES_UDFDocPrefix = LEFT(@UDNDocID_Import, PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)),                   
@SALES_UDFDocValue = RIGHT(@UDNDocID_Import, LEN(@UDNDocID_Import) - (PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)))                   
SET @SALES_CHKCOUNT = (SELECT COUNT(UDNId) FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = @FormMode)                   
SET @SALES_UDNID = (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = @FormMode)                   
IF ISNULL(@SALES_CHKCOUNT,0)=0                   
BEGIN                   
INSERT INTO tblMasterUserDefineNoHeader (TransId,DocName,DocPrefix,DocValue,CBy,CDate) VALUES                   
(@FormMode,@SALES_UDFDocPrefix,@SALES_UDFDocPrefix,1,@UID,CONVERT(DATE,GETDATE()))                   
SET @SALES_UDNID = SCOPE_IDENTITY()                   
INSERT INTO tblMasterUserDefineNoDetail (UDNId,UserId) VALUES (@SALES_UDNID,@UID)                   
END                   
UPDATE tblMasterUserDefineNoHeader SET DocValue = @SALES_UDFDocValue WHERE UDNId = @SALES_UDNID                   
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                   
FROM tblMasterUserDefineNoHeader WHERE UDNId=@SALES_UDNID                   
SET @UDFId = @SALES_UDNID                   
END               
END                         
--Get Transaction Doc Series && User Define DocSeries                         
ELSE IF(ISNULL(@Status,0) =2)                         
BEGIn                         
SELECT @DocValue=DocValue,@UDFDocValue=UDFDocValue,@CheckUDFId=UDFId FROM tblTranPRVoucher WHERE ID =@ID                         
SELECT @DocId=DocPrefix + CONVERT(NVARCHAR, @DocValue) FROM tblDocumentSeries WHERE TransID=@FormMode                         
IF ISNULL(@UDFId,0)>0                         
BEGIN                         
IF(@UDFId=@CheckUDFId)                         
BEGIN                         
SELECT @UDFDocId=DocPrefix + CONVERT(NVARCHAR, @UDFDocValue),@UDFDocPrefix=DocPrefix FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId                         
END                         
IF(@UDFId!=@CheckUDFId)                         
BEGIN                         
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId                         
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId                         
END                         
END                         
--Update Status Existing Amended (2) and Revert Posting                         
UPDATE tblTranPRVoucher SET [Status]=@Status,MBy =@UID ,MDate =GETDATE(),[Type]=@Type WHERE ID =@ID AND TransID =@FormMode                         
UPDATE tblFAJournal SET [Status] =@Status,MBy =@UID ,MDate =GETDATE() WHERE TransId =@ID AND DocPrefix =@FormMode                         
SET @Status =@Status +1;                         
END                         
--Creation Mode                         
IF(ISNULL(@Status,0) =1) OR (ISNULL(@Status,0) =3  OR ISNULL(@ImportStatus,0) =4)    
BEGIN                         
INSERT INTO tblTranPRVoucher (DocDate,PartyID,RefNo,FAID,Amount,DiscAmt,NetAmount,Narration,Remarks,CBy,[Status],                         
TransID,DocID,DocValue,Balance,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CDate,[Type],DiscPern,SACorHSNCode,                         
GrossAmount,TaxID,TaxPern,TaxtAmount,TDSAmount,Clby,Cldate)                         
VALUES (@DocDate,@PartyID,@ReferNo,@FAAccountID,@Amount,@Discount,@NetAmount,@Narration,@Remarks,@UID,@Status,                         
@FormMode,@DocId,@DocValue,(@NetAmount - ISNULL(@TDSAmount,0)),@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,GETDATE(),@Type,((@Discount/@Amount)*100),                         
@HSNorSACCode,@GrossAmt,@TaxID,@TaxPern,@TaxAmt,@TDSAmount,    
case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end)                         
SET @SCOPID=(SELECT SCOPE_IDENTITY())                        
                        
--Bounce Internal Reciable Voucher Create                         
--IF @Type =3                         
--BEGIN                         
--IF ISNULL(@Cond,0)=1                         
--BEGIN                         
----Cheque Amount Reciable Voucher                         
--UPDATE dbo.tblTranChequeDeposit SET ChaqueVoucherId=@SCOPID                         
--WHERE DepositID=@InternalTransId                         
--END                         
--IF ISNULL(@Cond,0)=2                         
--BEGIN                         
----Bank Charges Reciable Voucher                         
--UPDATE dbo.tblTranChequeDeposit SET ChargesVoucherId=@SCOPID                         
--WHERE DepositID=@InternalTransId                         
--END                        
--END                        
--IF ISNULL(@InternalTransId,0)>0 AND @Type=1                         
--BEGIN                        
--UPDATE tblTranAssetRegister SET VoucherId=@SCOPID WHERE AssetId=@InternalTransId                         
--END                         
DECLARE @JVID INT                         
SELECT @JVID=MAX(ISNULL(JVID,0))+1 FROM tblFAJournal                         
--PAYABLE VOUCHER ACCOUNT POSTING                         
IF ISNULL(@FormMode,0)=6  
BEGIN                         
IF ISNULL(@Amount,0)>0                         
BEGIN--Net Amount                         
--Internal Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                     
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@FAAccountID,0,ISNULL(@Amount,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)                         
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@PartyID,ISNULL(@Amount,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                  
--TAX Payable                  
IF ISNULL(@TaxAmt,0)>0                         
BEGIN                         
-- 'Discount Account'                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,112,0,ISNULL(@TaxAmt,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo,@PartyID,ISNULL(@TaxAmt,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                         
--TDS Amount                      
IF ISNULL(@TDSAmount,0)>0                         
BEGIN                         
-- 'Discount Account'     
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)    
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,107,ISNULL(@TDSAmount,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                     
    
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@PartyID,0,ISNULL(@TDSAmount,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                  
--Discount                         
IF ISNULL(@Discount,0)>0                         
BEGIN                         
SET @JVID=@JVID+1;                         
-- 'Discount Account'                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,30,ISNULL(@Discount,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@PartyID,0,ISNULL(@Discount,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                  
END                         
--RECIVABLE VOUCHER ACCOUNT POSTING                         
ELSE IF ISNULL(@FormMode,0)=7                         
BEGIN                         
IF ISNULL(@Amount,0)>0 OR ISNULL(@NetAmount,0)>0                        
BEGIN                         
--Internal Cheque Create PR Voucher 2 Entries               
IF @Type =3 AND ISNULL(@Cond,0)=1           
BEGIN                         
--Party Account @PartyID                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo , @PartyID,0,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Internal Account @FAAccountID                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,16,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                         
--Internal Bank Charger Create PR Voucher 4 Entries                         
ELSE IF @Type =3 AND ISNULL(@Cond,0)=2                         
BEGIN                         
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo , @PartyID,0,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Internal Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@FAAccountID ,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Verify                         
DECLARE @DepositAccID INT                         
--SELECT @DepositAccID=DepositAccountId FROM tblTranChequeDeposit WHERE DepositID=@InternalTransId                         
                       
SET @JVID=@JVID+1;                         
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@FAAccountID,0,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Internal Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@DepositAccID,(ISNULL(@NetAmount,0)+ISNULL(@Discount,0)),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                         
--Noraml Reciable Voucher                         
ELSE                         
BEGIN                        
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                       
  
VALUES (@JVID,@DocId,@FormMode,@DocValue,@DocDate,@ReferNo,@PartyID,0,ISNULL(@Amount,0),0,NULL,@Narration,@Status,@UID,GETDATE(),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Internal Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                       
  
VALUES (@JVID,@DocId,@FormMode,@DocValue,@DocDate,@ReferNo,@FAAccountID,ISNULL(@Amount,0),0,0,NULL,@Narration,@Status,@UID,GETDATE(),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                  
--TAX Receivable Amount                      
IF ISNULL(@TaxAmt,0)>0                         
BEGIN                         
-- 'Discount Account'                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate,@ReferNo,113,ISNULL(@TaxAmt,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate,@ReferNo,@PartyID,0,ISNULL(@TaxAmt,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                  
--TDS Amount                      
IF ISNULL(@TDSAmount,0)>0                         
BEGIN                         
-- 'Discount Account'                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,12,0,ISNULL(@TDSAmount,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@PartyID,ISNULL(@TDSAmount,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                      
--Noraml Reciable Voucher Discount Amount                         
IF ISNULL(@Discount,0)>0                         
BEGIN                         
SET @JVID=@JVID+1;                         
--Discount Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                    
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,30,0,ISNULL(@Discount,0),0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
--Party Account                         
INSERT INTO tblFAJournal([JVID],[DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,ClBy,ClDate,Adjusment)                      
   
VALUES ( @JVID,@DocId, @FormMode, @DocValue,@DocDate ,@ReferNo ,@PartyID,ISNULL(@Discount,0),0,0,NULL,@Narration,@Status,@UID ,GETDATE (),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue    
,case when isnull(@ImportStatus,0) = 0 then null else @UID end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,0)    
END                         
END                  
END                         
ENd                         
--Cancel mode                         
ELSE IF(ISNULL(@Status,0) =4)                         
BEGIN                         
--Update Status Cancel (4) and Revert Posting                         
UPDATE tblTranPRVoucher SET [Status]=@Status,ClBy =@UID ,ClDate =GETDATE(),[Type]=@Type WHERE ID =@ID AND TransID =@FormMode                         
UPDATE tblFAJournal SET [Status] =@Status,ClBy =@UID ,ClDate =GETDATE() WHERE TransId =@ID AND DocPrefix =@FormMode                         
SELECT @ID  
END                         
--Normal Voucher Create and Modify Time Get Transaction Id                         
IF ((ISNULL(@Type,0)=0 AND ISNULL(@Status,0) <>4) OR isnull(@ImportStatus,0) = 4)    
BEGIN                         
SELECT @SCOPID                         
END    
    
END TRY                         
BEGIN CATCH                         
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                         
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseCancel]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManagePurchaseCancel]                      
@PurchaseMode INT,@purchaseid INT,@Uid INT,@CurrentStatus SMALLINT                        
AS                        
BEGIN TRY                   
 --Purchase Cancel                     
 DECLARE @CheckStatus SMALLINT,@DocValue INT, @PreviousTranDate DATE                    
 SELECT @CheckStatus = [Status],@DocValue=DocValue,@PreviousTranDate=DocDate From tblPurchaseOrderHeader Where ID = @purchaseid                             
 IF(@CheckStatus != @CurrentStatus)                                  
 BEGIN                                  
  RAISERROR('Status Already Changed',16,1)                                 
 END                                  
 DECLARE @Qty INT                  
 -- Status to Change Cancel(4) Status                      
 UPDATE tblPurchaseOrderHeader SET [Status] =4,Clby =@UId ,Cldate =GETDATE()                       
 WHERE ID =@purchaseid        
         
  --Checking Purchase Order ID present in Automatic Indent        
 DECLARE @AiIDCount INT = (Select COUNT(*) from tblTransAutomaticIndentHeader where docValue IN    
 (SELECT DocValue FROM tblTransAutomaticIndentHeader WHERE PoID=@purchaseid)  
 --AND (Date BETWEEN (SELECT F_SD FROM tblCompanyRegistration) AND (SELECT F_ED FROM tblCompanyRegistration))
 )    

 UPDATE tblTransAutomaticIndentHeader SET [Status]= (CASE WHEN @AiIDCount = 1 THEN 1 else 3 END) WHERE PoID=@purchaseid    
                 
END TRY                      
BEGIN  CATCH                      
 SELECT ERROR_MESSAGE (),ERROR_PROCEDURE (),ERROR_LINE ();                      
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManagePurchaseDraft]--2000                                                   
(@Mode INT,@BillId INT = NULL,@BranchID INT = NULL,@nCurrStatus int,@BillDate DATE,@VendorId INT,@TotalGrossAmt DECIMAL (25,6),    
@TotalTaxAmt DECIMAL (25,6),@TotalNetAmt DECIMAL (25,6),@GRNRefNo NVARCHAR(255)=NULL,@PGroupID INT=NULL,@TaxTypeID INT,    
@PaymentTermId INT=NULL,@paymentDate NVARCHAR(25)=NULL,@PaymentModeId INT=NULL ,@vehicleno NVARCHAR(255)=NULL,    
@Frieght DECIMAL (25,6)= NULL,@OtherCharge DECIMAL(25,6)=NULL,@OtherChargeamt DECIMAL (25,6)=NULL,@ProdDisc DECIMAL(25,6)=NULL,          
@TradeDisc DECIMAL(25,6)=NULL,@AddnlDisc DECIMAL(25,6)=NULL,@TotalProdDiscAmt DECIMAL (25,6)= NULL,@TotalTradeDiscAmt DECIMAL (25,6)= NULL,    
@TotalAddnlDiscAmt DECIMAL (25,6)= NULL,@WrightOffAmt DECIMAL (25,6)= NULL,@UID INT,@RoundOffAmt DECIMAL (25,6)= NULL,    
@tvpTranBillDetail AS [tvpTranBillDetail] READONLY,@tvpTranBillMop AS [tvpTranBillMop] READONLY,@UDFId INT =NULL ,@IFBIll SMALLINT=1,    
@nAllowNegativeBal INT=NULL,@IS_IMPORT INT=NULL,@DateBill DATE=NULL,@TCSPern DECIMAL(25,6) = NULL,@TCSAmt DECIMAL(25,6) = NULL,    
@TDSAmt DECIMAL(25,6) = NULL,@ImportStatus INT = 0,@Remarks NVARCHAR(25)=NULL,@Narration NVARCHAR(25)=NULL,@DraftID INT = 0 )            
AS                                                   
BEGIN TRY                                                   
SET DATEFORMAT dmy;    
SET NOCOUNT ON;    
DECLARE @AccId INT,@ScopeID INT          
DECLARE @docvalue INT ,@Status INT,@DocID NVARCHAR(255),@GRNDocID NVARCHAR(255),@UDFDocId NVARCHAR(255),@UDFDocValue INT,    
@UDFDocPrefix NVARCHAR(255),@CheckUDFId INT    
DECLARE @CheckStatus INT,@DrDetbitNote DECIMAL(25,6)          
IF(ISNULL(@DraftID,0) > 0)    
BEGIN    
UPDATE tblPurchaseDraftHeader SET Status = 2 WHERE ID = @DraftID    
END 
-----TDSamount value for Balance                                           
Declare @TDSBalance decimal(25,4)    
IF ISNULL(@Mode,0)=1 OR ISNULL(@Mode,0)=2    
BEGIN    
Set @TDSBalance=(@TotalNetAmt-@TDSAmt)    
END                  
SET @TotalNetAmt = (ISNULL(@TotalNetAmt,0) )                                                  
--Insert bill header    
INSERT INTO tblPurchaseDraftHeader(Date,DocID,TransID,BranchID,DocValue,VENDorID,[Status],GrossAmt,TaxAmt,NetAmt,RefNo,ProdGroupID,TaxTypeID,PaymentTermID,PaymentDate,    
PaymentModeId, VehicleNo,Frieght,[OtherChargePern],OtherChargeAmt,[ProdDiscPern],[TradeDiscPern],[AddnlDiscPern],TotalProdDiscAmt,TotalTradeDiscAmt,    
TotalAddnlDiscAmt,WriteOffAmt,RoundOffAmt, Balance,OrgId,Cby,Cdate,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,TCSTaxPern,TCSTaxAmt,TDSAmount,Remarks,Narration)    
VALUES(@BillDate, @DocID,1 ,@BranchID,@docvalue,@VendorId,1,@TotalGrossAmt,@TotalTaxAmt,@TotalNetAmt,@GRNRefNo,@PGroupID,@TaxTypeID,    
@PaymentTermId,(CASE WHEN ISNULL(@paymentDate,'')='' THEN NULL ELSE @paymentDate END),@PaymentModeId,@vehicleno,@Frieght,@OtherCharge,    
@OtherChargeamt,@ProdDisc,@TradeDisc,@AddnlDisc,@TotalProdDiscAmt,@TotalTradeDiscAmt,@TotalAddnlDiscAmt,@WrightOffAmt,@RoundOffAmt,    
@TDSBalance,@BillId,@UID,GETDATE (),@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,    
@TCSPern,@TCSAmt,@TDSAmt,@Remarks,@Narration)                                                   
--Scope Indentity for Bill Header Table                                                   
    
SET @ScopeID=(SELECT SCOPE_IDENTITY())    
             
--Variable declaration for Loop bill detail    
DECLARE @ProdID INT,@UOMID INT,@UomGrpID INT,@BatchNo NVARCHAR(255) = NULL,@PKD NVARCHAR(255) = NULL,@Expiry NVARCHAR(255) = NULL,@UomQty DECIMAL(25, 9) ,@UomFreeQty DECIMAL(25,9),                                                   
@UomDamageQty DECIMAL(25, 9) ,@PurchasePrice DECIMAL (25,6),@SalePrice DECIMAL (25,6),@ECP DECIMAL (25,6),@MRP DECIMAL (25,6),@SPLPrice DECIMAL (25,6),@TaxID INT,@BTaxTypeId INT,                                                   
@TaxPercentage DECIMAL (25,6),@GoodsAmt DECIMAL (25,6),@ProdDiscPercent DECIMAL (25,6) = NULL,@TradeDiscPercent DECIMAL (25,6) = NULL,@AddnlDiscPercent DECIMAL (25,6) = NULL,                                                   
@BGrossAmt DECIMAL (25,6),@BTaxAmt DECIMAL (25,6),@BNetAmt DECIMAL (25,6),@InvId INT,@InclusiveYesNo INT,@IsChrgProd INT = 0           
,@ReturnPrice DECIMAL (25,6),@InvScopeID INT = 0          
--Loop Detail using CURSOR                                                   
DECLARE @PKDDate DATE,@ExpiryDate DATE                                                   
DECLARE @PriceOnUomCF DECIMAL (25,6),@MRPOnUomCF DECIMAL (25,6),@SelectedUomCF DECIMAL (25,6),      
@Qty DECIMAL(25, 9),@FreeQty DECIMAL(25, 9),@DamageQty  DECIMAL(25, 9)         
DECLARE @PUomId INT,@MRPUomId INT,@TrackPKD INT          
DECLARE @InventoryID INT =0          
DECLARE cursor_Temp CURSOR FOR (SELECT [ProdID] ,[UOMID],[UomGrpID],[BatchNo] ,[PKD] ,[Expiry], [Qty] , [FreeQty] , [DamageQty],                                                   
[PurchasePrice],[SalePrice] ,[ECP] ,[MRP] ,[SPLPrice] , [TaxID] ,[TaxTypeId] ,[TaxPercentage] ,[GoodsAmt] ,[ProdDiscPercent],                                                   
[TradeDiscPercent], [AddnlDiscPercent],[GrossAmt] ,[TaxAmt],[NetAmt] ,[InventoryId],InclusiveYesNo,ReturnPrice FROM @tvpTranBillDetail)                                                   
OPEN cursor_Temp                                                   
FETCH NEXT FROM cursor_Temp INTO @ProdID , @UOMID ,@UomGrpID ,@BatchNo ,@PKD ,@Expiry ,@UomQty ,                                   
@UomFreeQty,@UomDamageQty ,@PurchasePrice ,@SalePrice ,@ECP ,@MRP ,@SPLPrice ,@TaxID ,@BTaxTypeId ,@TaxPercentage ,                                                   
@GoodsAmt ,@ProdDiscPercent ,@TradeDiscPercent ,@AddnlDiscPercent ,@BGrossAmt ,@BTaxAmt ,@BNetAmt ,@InvId ,@InclusiveYesNo,          
@ReturnPrice          
DECLARE @GTaxAmt DECIMAL (25,6),@InclMRP DECIMAL (25,6)                                                   
--SET @GTaxAmt =( @MRP * @TaxPercentage /100)                                                   
--SET @InclMRP = (@MRP + @GTaxAmt)                                                   
      
DECLARE @BillDetailSerial INT = 1                                                   
WHILE @@FETCH_STATUS =0                                                   
BEGIN                                                   
    
--Get Price On,MRP ON from Product Table                                                   
SELECT @PUomId=PurchaseUomID,@PriceOnUomCF=PurchaseCR,@TrackPKD = TrackPDK--,@IsChrgProd = (CASE WHEN TrackInventory = 0 AND ChargesPern > 0 THEN 1 ELSE 0 END)           
FROM tblMasterProduct WHERE ID =@ProdID                           
    
INSERT INTO tblPurchaseDraftDetail(HID,ProdID,UOMID,BatchNo,PKD,Expiry,UomQty,UomFreeQty,UomDamageQty,                                                   
UomPurchasePrice, UomSalePrice,UomECP,UomMRP,UomSPLPrice,PurchasePrice,SalePrice,ECP,MRP,SPLPrice,ReturnPrice,                                                   
TaxID,TaxPern,GoodsAmt,ProdDiscPern,TradeDiscPern,AddnlDiscPern, GrossAmt,TaxAmt,NetAmt,Serial)                    
VALUES                                                   
(@ScopeID,@ProdID ,@UOMID,@BatchNo,@PKDDate,@ExpiryDate,@UomQty , @UomFreeQty , @UomDamageQty,                                                   
@PurchasePrice,@SalePrice,@ECP, @MRP,@SPLPrice,ISNULL((@PurchasePrice / @SelectedUomCF ),0),ISNULL((@SalePrice / @SelectedUomCF) ,0),                                    
ISNULL((@ECP / @SelectedUomCF) ,0),ISNULL((@MRP / @MRPOnUomCF) ,0),ISNULL((@SPLPrice / @SelectedUomCF) ,0),ISNULL((@ReturnPrice / @SelectedUomCF) ,0),          
@TaxID,@TaxPercentage,@GoodsAmt , @ProdDiscPercent,@TradeDiscPercent,@AddnlDiscPercent,@BGrossAmt,@BTaxAmt,@BNetAmt,                                                   
@BillDetailSerial)                                                   
                                                   
SET @BillDetailSerial = @BillDetailSerial + 1                                                   
                                               
FETCH NEXT FROM cursor_Temp INTO @ProdID , @UOMID ,@UomGrpID ,@BatchNo ,@PKD ,@Expiry ,@UomQty ,@UomFreeQty,@UomDamageQty ,          
@PurchasePrice ,@SalePrice ,@ECP ,@MRP ,@SPLPrice ,@TaxID ,@BTaxTypeId ,@TaxPercentage ,@GoodsAmt ,@ProdDiscPercent ,          
@TradeDiscPercent ,@AddnlDiscPercent ,@BGrossAmt ,@BTaxAmt ,@BNetAmt ,@InvId ,@InclusiveYesNo ,@ReturnPrice                                                  
END                                                   
CLOSE cursor_Temp                                                   
DEALLOCATE cursor_Temp                                                   
      
SELECT @ScopeID AS IdentId                                                     
END TRY                                                   
BEGIN CATCH                                                   
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE()                                                   
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseOrder]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManagePurchaseOrder]                                                   
@tvpOrder AS [tvpPurchaseOrder] READONLY,@Mode INT,@PurchaseID INT,@BranchID int  ,@CurrentStatus INT,@Docdate Date,@VendID INT,    
@refNo NVARCHAR(255)=Null,@taxtypeID INT = null,@roundOff DECIMAL (25,6) =null,@TotalgrossAmt DECIMAL (25,6)=null ,@totalTaxAmt DECIMAL (25,6)=null,          
@TotalNetAMt DECIMAL (25,6) =null ,@udfid INT = null,@Remarks NVARCHAR (255)=null,@Narration NVARCHAR (255)=null,@cby NVARCHAR(255) =null ,  
@DraftID INT = 0,@FromIndent INT=NULL,@ImportStatus INT = 0,@UDNDocID_Import NVARCHAR(255)=NULL        
AS        
BEGIN                                                    
BEGIN  TRY          
--BEGIN TRAN          
SET NOCOUNT ON;                                        
SET DATEFORMAT DMY          
DECLARE @udfDocId NVARCHAR(255)=null, @udfDocValue NVARCHAR(255)=null,@UdfDocPrefix NVARCHAR(255) =null                                                    
, @DocPrefix NVARCHAR(255)=NULL, @DocValue NVARCHAR(255)=null, @DocId NVARCHAR(255)=null, @CDate DATE =NULL, @scopeID INT, @CheckStatus INT          
--Mode insert          
IF @Mode = 1 OR @Mode = 5 OR @Mode =3                                                 
BEGIN                      
IF @Mode =5 OR @Mode =3                        
BEGIN                         
SELECT @CheckStatus = [Status] FROM tblTransAutomaticIndentHeader WHERE ID = @FromIndent               
--SELECT * FROM tblTranAutomaticIndentHeader WHERE AIID =448          
IF(@CheckStatus != @CurrentStatus)                                                                                                                                
BEGIN                                                                                                                                
RAISERROR('5',16,1)                                                                                                       
END                          
END                        
SELECT @DocValue = DocValue,@DocId = DocPrefix+CONVERT(NVARCHAR(10),DocValue) FROM dbo.tblDocumentSeries WHERE TransID = 3                                                                                        
UPDATE tblDocumentSeries SET DocValue = DocValue+1  WHERE TransID = 3                                                                                            
IF ISNULL(@udfid,0)>0                                                                                  
BEGIN                                                                                  
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@udfid                    
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId =@udfid                                                           
END                    
ELSE                    
BEGIN                    
IF @Mode = 1 OR @Mode = 3                    
BEGIN              
DECLARE @UDFCount INT,@UDNSingle INT          
IF ISNULL(@UDFId,0)=0 AND ISNULL(@UDNDocID_Import,'')!='' -- IMPORT      
BEGIN      
DECLARE @CHECKUDFDOCID NVARCHAR(255) = LEFT(@UDNDocID_Import, PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import))+CONVERT(NVARCHAR,      
CONVERT(INT,RIGHT(@UDNDocID_Import, LEN(@UDNDocID_Import) - (PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)))))      
IF((SELECT COUNT(*) FROM tblPurchaseOrderHeader WHERE UDFDocId = @CHECKUDFDOCID) > 0)      
BEGIN      
RAISERROR('10',16,1)      
END      
DECLARE @SALES_UDFDocValue INT,@SALES_UDFDocPrefix NVARCHAR(255),@SALES_UDNID INT,@SALES_CHKCOUNT INT         
                      
  SELECT @SALES_UDFDocPrefix = LEFT(@UDNDocID_Import, PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)),                       
  @SALES_UDFDocValue = RIGHT(@UDNDocID_Import, LEN(@UDNDocID_Import) - (PATINDEX('%[A-Z][^A-Z]%', @UDNDocID_Import)))      
                         
  SET @SALES_CHKCOUNT = (SELECT COUNT(UDNId) FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = 3)                     
  SET @SALES_UDNID = (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE DocPrefix = @SALES_UDFDocPrefix AND TransId = 3)                       
  IF ISNULL(@SALES_CHKCOUNT,0)=0                       
  BEGIn                       
  INSERT INTO tblMasterUserDefineNoHeader (TransId,DocName,DocPrefix,DocValue,CBy,CDate) VALUES                       
  (3,@SALES_UDFDocPrefix,@SALES_UDFDocPrefix,1,@cby,CONVERT(DATE,GETDATE()))                       
  SET @SALES_UDNID = SCOPE_IDENTITY()                       
  INSERT INTO tblMasterUserDefineNoDetail (UDNId,UserId) VALUES (@SALES_UDNID,@cby)                       
  END                       
  UPDATE tblMasterUserDefineNoHeader SET DocValue = @SALES_UDFDocValue WHERE UDNId = @SALES_UDNID                       
  SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                       
  FROM tblMasterUserDefineNoHeader WHERE UDNId=@SALES_UDNID                       
  SET @UDFId = @SALES_UDNID       
END      
ELSE      
BEGIN                                    
SET @UDFCount = (                      
SELECT COUNT(DISTINCT UDNId) FROM tblMasterUserDefineNoDetail                      
WHERE UDNId IN (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE TransId=3) AND UserId=@cby                   
)                      
IF ISNULL(@UDFCount,0)=1                                          
BEGIN                                          
SET @UDNSingle = (SELECT DISTINCT UDNId FROM tblMasterUserDefineNoDetail WHERE UDNId IN (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE TransId=3)AND UserId=@cby )                                        
END              
SELECT @udfid=UDNId,@UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                    
FROM tblMasterUserDefineNoHeader WHERE TransId=3 AND UDNId=@UDNSingle                
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId=@UDNSingle                
END         
END                 
END                          
                                                  
--Header INSERT                                                             
INSERT INTO  tblPurchaseOrderHeader           
(DocDate,DocID,TransID,DocValue,VendorID,BranchID,RefNo,        
TaxTypeID,GrossAmt,TaxAmt,NetAmt,RoundoffAmt,UDFId,UDFDocID,        
UDFDocPrefix,UDFDocValue,Narration,Cby,CDate,Status,Clby,Cldate,Remarks)        
Values (@Docdate,@DocID,3,@DocValue,@VendID,@BranchID,@refNo,@taxtypeID,@TotalgrossAmt,@totalTaxAmt,@TotalNetAMt,        
@roundOff,@udfid,@udfDocId,@UdfDocPrefix,@udfDocValue,@Narration,@cby,GETDATE() ,        
case when isnull(@ImportStatus,0) = 0 then 1 else @ImportStatus end,        
case when isnull(@ImportStatus,0) = 0 then null else @cby end,case when isnull(@ImportStatus,0) = 0 then null else GETDATE() end,@Remarks)        
SET @scopeID = SCOPE_IDENTITY();        
          
-- This is from frmAutomaticIndent Check Generate PO        
-- Added by Sriram G        
IF ISNULL(@FromIndent,0)!=0        
BEGIN                              
UPDATE tblTransAutomaticIndentHeader SET status=5,PoID=@scopeID WHERE ID=@FromIndent                              
END                              
                          
END                                                  
IF @Mode =2                                                  
BEGIN                                                 
DECLARE @CheckUDFId INT                                              
SELECT @CheckStatus = [Status],@CheckUDFId=UDFId FROM tblPurchaseOrderHeader WHERE iD = @PurchaseID            
IF(@CheckStatus != @CurrentStatus)                                                                                                                                
BEGIN                                                                                                                                
RAISERROR('6',16,1)                                                                    
END                                                    
UPDATE tblPurchaseOrderHeader SET Status=2,Mby=@cby,Mdate=GETDATE() WHERE iD = @PurchaseID            
DECLARE @DocIDemodify NVARCHAR(255)                                                  
DECLARE @DocPrefixemodify NVARCHAR(255)                                                  
DECLARE @Docvaluemodify NVARCHAR(255)                                                  
SELECT @DocIDemodify=DocId,@DocPrefixemodify=TransID,@Docvaluemodify=DocValue FROM tblPurchaseOrderHeader  where iD = @PurchaseID                                                  
                          
IF ISNULL(@UDFId,0)>0                                                                                                        
BEGIN                                    
IF(@UDFId=@CheckUDFId)                                                                            
BEGIN                  
SELECT @UDFDocValue=UDFDocValue, @UDFDocId=UDFDocId,@UDFDocPrefix=UDFDocPrefix                                      
FROM tblPurchaseOrderHeader  WHERE iD = @PurchaseID                                  
END                                                                                                             
ELSE IF(@UDFId!=@CheckUDFId)                                                         
BEGIN                                                                                                             
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)                                             
FROM tblMasterUserDefineNoHeader                                             
WHERE UDNId=@UDFId                                                                                                        
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId                                                    
END                                                                                                            
END                                            
 -----------------Purchase Order------INSERT--------------                         
INSERT INTO  tblPurchaseOrderHeader(DocDate,DocId,TransID,DocValue,VendorID,BranchID,RefNo,TaxTypeID,GrossAmt,TaxAmt,NetAmt,RoundoffAmt,UDFId,UDFDocID,                                                    
UDFDocPrefix,UDFDocValue,Narration,Cby,CDate,Status,Remarks)    
Values (@Docdate,@DocIDemodify,@DocPrefixemodify,@Docvaluemodify,@VendID,@BranchID,@refNo,@taxtypeID,@TotalgrossAmt,@totalTaxAmt,@TotalNetAMt,                                                    
@roundOff,@udfid,@udfDocId,@UdfDocPrefix,@udfDocValue,@Narration,@cby,GETDATE() ,3,@Remarks)                                                   
SET @scopeID =SCOPE_IDENTITY();                                                  
END                                             
-----Detail Insert                                                  
DECLARE @serial INT                                                  
DECLARE @NCountSerial INT                                                  
DECLARE @ProdId INT,@nUomID INT,@nTaxId INT,@Inventoryid INT                                                  
DECLARE @status INT                                                  
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpOrder)                                                  
SET @serial =1                                                  
DECLARE @Qty DECIMAL (25,6),@PPRice DECIMAL (25,6),@TaxPer DECIMAL (25,6),@nGrossAmt DECIMAL (25,6),@nTaxAmt DECIMAL (25,6),@nNetAmt DECIMAL (25,6)                                                  
WHILE  @NCountSerial >0  
BEGIN                                                  
                          
SELECT @ProdId =ProdId,@nUomID = UomID,@PPRice = PurchasePrice,@Qty = Qty,@TaxPer =TaxPercentge,@nTaxAmt =TaxAmt,@nGrossAmt =GrossAmt,                                                  
@nNetAmt = NetAmt,@nTaxId = TaxId,@Inventoryid =InventoryId                                                  
FROM @tvpOrder WHERE Serial= @serial                                                  
                          
INSERT INTO tblPurchaseOrderDetail(HID,ProdID,PurchasePrice,Qty,UomID,TaxID,TaxPern,GrossAmt,TaxAmt,NetAmt,Serial)    
Values(@scopeID,@ProdId,@PPRice,@Qty,@nUomID,@nTaxId,@TaxPer,@nGrossAmt,@nTaxAmt,@nNetAmt,@serial)    
SET @serial = @serial+1;                                                  
SET @NCountSerial = @NCountSerial -1;    
SELECT @scopeID              
--COMMIT TRAN                                            
END  
IF(ISNULL(@DraftID,0) > 0)       
BEGIN      
UPDATE tblPurchaseDraftHeader SET Status = 8,MBy = @cby,MDate = GETDATE() WHERE ID = @DraftID      
END      
END TRY        
BEGIN CATCH        
--ROLLBACK TRAN                                                                                       
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                                   
END CATCH                                                   
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManagePurchaseOrderDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[uspManagePurchaseOrderDraft]                                                 
@tvpOrder AS [tvpPurchaseOrder] READONLY,@Mode INT,@PurchaseID INT,@BranchID int  ,@CurrentStatus INT,@Docdate Date,@VendID INT,  
@refNo NVARCHAR(255)=Null,@taxtypeID INT = null,@roundOff DECIMAL (25,6) =null,@TotalgrossAmt DECIMAL (25,6)=null ,@totalTaxAmt DECIMAL (25,6)=null,        
@TotalNetAMt DECIMAL (25,6) =null ,@udfid INT = null,@Remarks NVARCHAR (255)=null,@Narration NVARCHAR (255)=null,@cby NVARCHAR(255) =null,@DraftID INT = 0
AS                                              

BEGIN  TRY                           
SET NOCOUNT ON;                                    
SET DATEFORMAT DMY 
DECLARE @udfDocId NVARCHAR(255)=null, @udfDocValue NVARCHAR(255)=null, @UdfDocPrefix NVARCHAR(255) =null, @DocPrefix NVARCHAR(255)=NULL      
, @DocValue NVARCHAR(255)=null, @DocId NVARCHAR(255)=null, @CDate DATE =NULL, @scopeID INT, @ScopeID_PO INT,@nMode INT      
IF(ISNULL(@DraftID,0) > 0)  
BEGIN  
UPDATE tblPurchaseDraftHeader SET Status = 2 WHERE ID = @DraftID  
END  
INSERT INTO  tblPurchaseDraftHeader (Date,DocID,TransID,DocValue,VendorID,BranchID,RefNo,TaxTypeID,GrossAmt,TaxAmt,NetAmt,RoundoffAmt,UDFId,UDFDocID,      
UDFDocPrefix,UDFDocValue,Narration,Cby,CDate,Status)      
Values (@Docdate,@DocID,3,@DocValue,@VendID,@BranchID,@refNo,@taxtypeID,@TotalgrossAmt,@totalTaxAmt,@TotalNetAMt,      
@roundOff,@udfid,@udfDocId,@UdfDocPrefix,@udfDocValue,@Narration,@cby,GETDATE() ,1)   
SET @scopeID = SCOPE_IDENTITY();  
-----Detail Insert                                                
DECLARE @serial INT                                                
DECLARE @NCountSerial INT                                                
DECLARE @ProdId INT,@nUomID INT,@nTaxId INT,@Inventoryid INT                                                
DECLARE @status INT                                                
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpOrder)                                                
SET @serial =1                                                
DECLARE @Qty DECIMAL (25,6),@PPRice DECIMAL (25,6),@TaxPer DECIMAL (25,6),@nGrossAmt DECIMAL (25,6),@nTaxAmt DECIMAL (25,6),@nNetAmt DECIMAL (25,6)                                                
WHILE  @NCountSerial >0
BEGIN                                                
                        
SELECT @ProdId =ProdId,@nUomID = UomID,@PPRice = PurchasePrice,@Qty = Qty,@TaxPer =TaxPercentge,@nTaxAmt =TaxAmt,@nGrossAmt =GrossAmt,                                                
@nNetAmt = NetAmt,@nTaxId = TaxId,@Inventoryid =InventoryId                                                
FROM @tvpOrder WHERE Serial= @serial                                                
                        
INSERT INTO tblPurchaseDraftDetail(HID,ProdID,PurchasePrice,UomQty,UomID,TaxID,TaxPern,GrossAmt,TaxAmt,NetAmt,Serial)  
Values(@scopeID,@ProdId,@PPRice,@Qty,@nUomID,@nTaxId,@TaxPer,@nGrossAmt,@nTaxAmt,@nNetAmt,@serial)  
SET @serial = @serial+1;                                                
SET @NCountSerial = @NCountSerial -1;  
SELECT @scopeID            
--COMMIT TRAN                                          
END   
SELECT @scopeID                            
END TRY                            
BEGIN CATCH                                        
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                                
END CATCH                                             
GO
/****** Object:  StoredProcedure [dbo].[uspManageQuatation]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageQuatation]        
@tvpTranSaleDetail AS [tvpTranSaleDetail] READONLY,@Mode INT,@ID int = null,@DocDate date = null,    
@DocPrefix tinyint = null,@BranchID smallint = null,@CustomerID int = null,@RefNo nvarchar(255) = null,    
@PriceID tinyint = null,@TaxTypeID tinyint = null,@TradeDiscPern decimal(25, 4) = null,@TradeDiscAmt decimal(25, 4) = null,    
@AddnlDiscPern decimal(25, 4) = null,@AddnlDiscAmt decimal(25, 4) = null,@OtherChargePern decimal(25, 4) = null,    
@OtherChargeAmt decimal(25, 4) = null,@FrightAmt decimal(25, 4) = null,@TotalProdDiscAmt decimal(25, 4) = null,    
@TotalDiscAmt decimal(25, 4) = null,@GrossAmt decimal(25, 4) = null,@TaxAmt decimal(25, 4) = null,@NetAmt decimal(25, 4) = null,    
@RoundOffAmt decimal(25, 4) = null,@Status tinyint = null,@UDFId smallint = null,@CBy smallint = null,@Remarks nvarchar(MAX) = null,  
@Narration nvarchar(MAX) = null,@DraftID INT = NULL,@CurrentStatus INT = NULL    
AS        
BEGIN TRY        
SET NOCOUNT ON;        
SET DATEFORMAT DMY;        
DECLARE @strudfDocId NVARCHAR(255)=null,@strudfDocValue NVARCHAR(255)=null,@strUdfDocPrefix NVARCHAR(255) =null,@strDocPrefix NVARCHAR(255)=NULL        
,@strDocValue NVARCHAR(255)=null,@strDocId NVARCHAR(255)=null,@CDate DATE =NULL,@scopeID INT,@CheckStatus INT        
IF @Mode = 3        
BEGIN     
SET @Mode = 1;  
END  
--Mode insert        
IF @Mode = 1        
BEGIN        
SELECT @strDocValue = DocValue,@strDocId = DocPrefix+CONVERT(NVARCHAR(10),DocValue)        
FROM dbo.tblDocumentSeries WHERE TransID = 14        
UPDATE tblDocumentSeries SET DocValue = DocValue+1 WHERE TransID = 14    
IF ISNULL(@UDFId,0)>0        
BEGIN        
SELECT @strUDFDocValue=DocValue,@strUDFDocPrefix=DocPrefix,@strUDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)        
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId        
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId        
END        
END        
--Modify        
ELSE IF @Mode =2        
BEGIN        
DECLARE @CheckUDFId INT        
SELECT @CheckStatus = [Status] ,@CheckUDFId=UDFId,@strDocValue=DocValue ,@strDocId=DocId        
FROM tblQuotationHeader WHERE ID = @ID        
IF(@CheckStatus != @CurrentStatus)        
BEGIN        
RAISERROR('6',16,1)        
END        
UPDATE tblQuotationHeader SET Status = 2,Mby=@cby,Mdate=GETDATE() WHERE ID = @ID        
        
IF ISNULL(@UDFId,0)>0        
BEGIN        
IF(@UDFId=@CheckUDFId)        
BEGIN        
SELECT @strUDFDocValue=UDFDocValue, @strUDFDocId=UDFDocId,@strUDFDocPrefix=UDFDocPrefix        
FROM tblQuotationHeader WHERE ID = @ID        
END        
ELSE IF(@UDFId!=@CheckUDFId)        
BEGIN        
SELECT @strUDFDocValue=DocValue,@strUDFDocPrefix=DocPrefix,@strUDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)        
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId        
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId        
END        
END        
END        
--Header INSERT        
INSERT INTO tblQuotationHeader (DocDate,DocId,DocPrefix,DocValue,BranchID,CustomerID,RefNo,PriceID,TaxTypeID,TradeDiscPern,TradeDiscAmt,    
AddnlDiscPern,AddnlDiscAmt,OtherChargePern,OtherChargeAmt,FrightAmt,TotalProdDiscAmt,TotalDiscAmt,GrossAmt,TaxAmt,NetAmt,RoundOffAmt,    
Status,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,Remarks,Narration)        
Values (@DocDate,@strDocId,@DocPrefix,@strDocValue,@BranchID,@CustomerID,@RefNo,@PriceID,@TaxTypeID,@TradeDiscPern,@TradeDiscAmt,@AddnlDiscPern,    
@AddnlDiscAmt,@OtherChargePern,@OtherChargeAmt,@FrightAmt,@TotalProdDiscAmt,@TotalDiscAmt,@GrossAmt,@TaxAmt,@NetAmt,@RoundOffAmt,    
CASE WHEN ISNULL(@Mode,0) = 1 THEN 1 ELSE 3 END,@UDFId,@strUDFDocId,@strUdfDocPrefix,@strUDFDocValue,@CBy,getdate(),@Remarks,@Narration)        
SET @scopeID = SCOPE_IDENTITY();        
--Detail Insert        
DECLARE @serial INT,@NCountSerial INT,@ProdId INT,@UomGrpId INT,@nUomID INT,@nTaxId INT        
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpTranSaleDetail)        
SET @serial =1        
DECLARE @Qty DECIMAL (25,6),@PPRice DECIMAL (25,6),@TaxPer DECIMAL (25,6), @dGoodsAmt DECIMAL(25,6),@dProdDiscPern DECIMAL(25,6),@dTradeDiscAmt DECIMAL(25,6),@dAddnlDiscAmt DECIMAL(25,6),        
@nGrossAmt DECIMAL (25,6),@nTaxAmt DECIMAL (25,6),@nNetAmt DECIMAL (25,6),@MRP DECIMAL(25,6),@dProdDiscAmt DECIMAL(25,6),@dTradeDiscPern DECIMAL(25,6),@dAddnlDiscPern DECIMAL(25,6)        
WHILE @NCountSerial >0        
BEGIN        
SELECT @ProdId =ProdId,@nUomID = UomID,@PPRice = BaseUomPrice,@Qty = UomQty,@TaxPer =TaxPercentage,@nTaxAmt =TaxAmt,@dGoodsAmt=GoodsAmt,        
@dProdDiscPern=ProdDisc,@dTradeDiscAmt=TradeDisc,@dAddnlDiscAmt=AddnlDisc, @nGrossAmt=GrossAmt,@nNetAmt=NetAmt,@nTaxId=TaxId,        
@MRP = MRP,@dProdDiscAmt=ProdDiscAmt,@dTradeDiscPern=TradeDiscPern,@dAddnlDiscPern=AddnlDiscPern        
FROM @tvpTranSaleDetail WHERE Serial= @serial        
--Insert Detail Table        
INSERT INTO tblQuotationDetail(QuationID,ProdID,SalesPrice,Qty,UomID,TaxID,TaxPercentage,GoodsAmt,ProdDiscPern,TradeDiscAmt,AddnlDiscAmt,        
GrossAmt,TaxAmt,NetAmt,Serial,DetailMRP,ProdDiscAmt,TradeDiscPern,AddnlDiscPern)        
VALUES(@scopeID,@ProdId,@PPRice,@Qty,@nUomID,@nTaxId,@TaxPer,@dGoodsAmt,@dProdDiscPern,@dTradeDiscAmt,@dAddnlDiscAmt,        
@nGrossAmt,@nTaxAmt,@nNetAmt,@serial,@MRP,@dProdDiscAmt,@dTradeDiscPern,@dAddnlDiscPern)        
SET @serial = @serial+1;        
SET @NCountSerial = @NCountSerial -1;        
END        
IF(ISNULL(@DraftID,0) > 0)      
BEGIN      
UPDATE tblSalesDraftHeader SET Status = 8,MBy = @CBy,MDate = GETDATE() WHERE ID = @DraftID      
END   
SELECT @scopeID        
END TRY        
BEGIN CATCH        
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()        
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageQuatationDraft]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageQuatationDraft]
@tvpTranSaleDetail AS [tvpTranSaleDetail] READONLY,@ID int = null,@DocDate date = null,
@DocPrefix tinyint = null,@BranchID smallint = null,@CustomerID int = null,@RefNo nvarchar(255) = null,
@PriceID tinyint = null,@TaxTypeID tinyint = null,@TradeDiscPern decimal(25, 4) = null,@TradeDiscAmt decimal(25, 4) = null,
@AddnlDiscPern decimal(25, 4) = null,@AddnlDiscAmt decimal(25, 4) = null,@OtherChargePern decimal(25, 4) = null,
@OtherChargeAmt decimal(25, 4) = null,@FrightAmt decimal(25, 4) = null,@TotalProdDiscAmt decimal(25, 4) = null,
@TotalDiscAmt decimal(25, 4) = null,@GrossAmt decimal(25, 4) = null,@TaxAmt decimal(25, 4) = null,@NetAmt decimal(25, 4) = null,
@RoundOffAmt decimal(25, 4) = null,@Status tinyint = null,@UDFId smallint = null,@CBy smallint = null,@Remarks nvarchar(MAX) = null,
@Narration nvarchar(MAX) = null,@DraftID INT = NULL,@CurrentStatus INT = NULL
AS
BEGIN TRY
SET NOCOUNT ON;
SET DATEFORMAT DMY;
DECLARE @strudfDocId NVARCHAR(255)=null,@strudfDocValue NVARCHAR(255)=null,@strUdfDocPrefix NVARCHAR(255) =null,@strDocPrefix NVARCHAR(255)=NULL
,@strDocValue NVARCHAR(255)=null,@strDocId NVARCHAR(255)=null,@CDate DATE =NULL,@scopeID INT,@CheckStatus INT

--Header INSERT
INSERT INTO tblSalesDraftHeader (Date,DocId,TransID,DocValue,BranchID,CustomerID,RefNo,PriceTypeID,TaxTypeID,TradeDiscPern,TotalTradeDiscAmt,
AddnlDiscPern,TotalAddnlDiscAmt,OtherChargePern,OtherChargeAmt,Frieght,TotalProdDiscAmt,GrossAmt,TaxAmt,NetAmt,RoundOffAmt,
Status,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CBy,CDate,Remarks,Narration)
Values (@DocDate,@strDocId,@DocPrefix,@strDocValue,@BranchID,@CustomerID,@RefNo,@PriceID,@TaxTypeID,@TradeDiscPern,@TradeDiscAmt,@AddnlDiscPern,
@AddnlDiscAmt,@OtherChargePern,@OtherChargeAmt,@FrightAmt,@TotalProdDiscAmt,@GrossAmt,@TaxAmt,@NetAmt,@RoundOffAmt,
1,@UDFId,@strUDFDocId,@strUdfDocPrefix,@strUDFDocValue,@CBy,getdate(),@Remarks,@Narration)
SET @scopeID = SCOPE_IDENTITY();
--Detail Insert
DECLARE @serial INT,@NCountSerial INT,@ProdId INT,@UomGrpId INT,@nUomID INT,@nTaxId INT
SET @NCountSerial = (SELECT COUNT(*) FROM @tvpTranSaleDetail)
SET @serial =1
DECLARE @Qty DECIMAL (25,6),@PPRice DECIMAL (25,6),@TaxPer DECIMAL (25,6), @dGoodsAmt DECIMAL(25,6),@dProdDiscPern DECIMAL(25,6),@dTradeDiscAmt DECIMAL(25,6),@dAddnlDiscAmt DECIMAL(25,6),
@nGrossAmt DECIMAL (25,6),@nTaxAmt DECIMAL (25,6),@nNetAmt DECIMAL (25,6),@MRP DECIMAL(25,6),@dProdDiscAmt DECIMAL(25,6),@dTradeDiscPern DECIMAL(25,6),@dAddnlDiscPern DECIMAL(25,6)
WHILE @NCountSerial >0
BEGIN
SELECT @ProdId =ProdId,@nUomID = UomID,@PPRice = BaseUomPrice,@Qty = UomQty,@TaxPer =TaxPercentage,@nTaxAmt =TaxAmt,@dGoodsAmt=GoodsAmt,
@dProdDiscPern=ProdDisc,@dTradeDiscAmt=TradeDisc,@dAddnlDiscAmt=AddnlDisc, @nGrossAmt=GrossAmt,@nNetAmt=NetAmt,@nTaxId=TaxId,
@MRP = MRP,@dProdDiscAmt=ProdDiscAmt,@dTradeDiscPern=TradeDiscPern,@dAddnlDiscPern=AddnlDiscPern
FROM @tvpTranSaleDetail WHERE Serial= @serial
--Insert Detail Table
INSERT INTO tblSalesDraftDetail(HID,ProdID,SalePrice,UOMQty,UomID,TaxID,TaxPern,GoodsAmt,ProdDiscPern,TradeDiscAmt,AddnlDiscAmt,
GrossAmt,TaxAmt,NetAmt,Serial,MRP,ProdDiscAmt,TradeDiscPern,AddnlDiscPern)
VALUES(@scopeID,@ProdId,@PPRice,@Qty,@nUomID,@nTaxId,@TaxPer,@dGoodsAmt,@dProdDiscPern,@dTradeDiscAmt,@dAddnlDiscAmt,
@nGrossAmt,@nTaxAmt,@nNetAmt,@serial,@MRP,@dProdDiscAmt,@dTradeDiscPern,@dAddnlDiscPern)
SET @serial = @serial+1;
SET @NCountSerial = @NCountSerial -1;
END
IF(ISNULL(@DraftID,0) > 0)      
BEGIN      
UPDATE tblSalesDraftHeader SET Status = 2 WHERE ID = @DraftID      
END   
SELECT @scopeID
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageReports]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageReports]             
@Mode INT,@ReportID INT = NULL,@ALName NVARCHAR(255) = NULL            
AS            
BEGIN            
IF(@Mode = 1)            
BEGIN            
select * from tblParameterInfo WHERE ReportID = @ReportID order by ParamOrder
END            
IF(@Mode =2 )            
BEGIN            
IF(@ALName = 'BankName')            
BEGIN            
SELECT ID,Name FROM tblMasterBank ORDER BY Name            
END            
IF(@ALName = 'UserName')            
BEGIN            
SELECT ID,UserName Name FROM tblUsers WHERE ID > 1 ORDER BY Name            
END            
IF(@ALName = 'BeatName')            
BEGIN            
SELECT ID,Name FROM tblMasterBeat ORDER BY Name            
END            
IF(@ALName = 'SalesmanName')            
BEGIN            
SELECT ID,Name FROM tblMasterSalesman ORDER BY Name            
END          
IF(@ALName = 'SalesmanGroupName')            
BEGIN            
SELECT ID,Name FROM tblMasterSalesmanGroup ORDER BY Name            
END          
IF(@ALName = 'ProductName')            
BEGIN            
SELECT ID,Name FROM tblMasterProduct ORDER BY Name            
END          
IF(@ALName = 'ManufName')            
BEGIN            
SELECT ID,Name FROM tblMasterManufacturer ORDER BY Name            
END          
IF(@ALName = 'BrandName')            
BEGIN            
SELECT ID,Name FROM tblMasterBrand ORDER BY Name            
END          
IF(@ALName = 'CategoryName')            
BEGIN            
SELECT ID,Name FROM tblMasterCategory ORDER BY Name            
END    
IF(@ALName = 'AccountName')            
BEGIN            
SELECT FAID ID,AccountName Name FROM tblFAAccount ORDER BY AccountName            
END     
IF(@ALName = 'BranchName')            
BEGIN            
SELECT ID,Name Name FROM tblMasterBranchOffice ORDER BY Name            
END    
END            
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageSalesman]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageSalesman]
@Mode INT,@ID smallint = null,@Name nvarchar(255) = null,@DOB date = null,@DOJ date = null,@MobileNo nvarchar(25) = null,
@AadharNo nvarchar(25) = null,@PANNumber nvarchar(25) = null,@Address nvarchar(max) = null,@SalesmanGroupID smallint = null,
@Active bit = null,@UserID smallint = null
AS
BEGIN TRY
set @Name = (select dbo.ProperCase(@Name))
DECLARE @ActiveCheck NVARCHAR(255), @SUNDRYDEBTORS INT ,@FATYPE INT,@AccID INT ,@ACCOUNTID INT,@CHECKID INT,@cstdate DATE,@ExistCount INT
SELECT @SUNDRYDEBTORS = FAGroup FROM tblFAGroup WHERE AccountGroupName='Staff'
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterSalesman WHERE Name = @Name) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name
IF(@ExistCount>0)
BEGIN
RAISERROR ('Account Name Already Exists in another master',16,1)
END

set @Name = (select dbo.ProperCase(@Name))
INSERT INTO tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,CBy,CDate,UserAccount,PANNumber,Active)
VALUES(@name,@SUNDRYDEBTORS,0,1,@UserID,GETDATE(),0,@PANNumber,@Active)

SELECT @AccID = FAID FROM tblFAAccount WHERE AccountName = @Name

insert into tblMasterSalesman(Name,DOB,DOJ,MobileNo,AadharNo,PANNumber,Address,SalesmanGroupID,Active,CBy,CDate,FAID)
Values (@Name,@DOB,@DOJ,@MobileNo,@AadharNo,@PANNumber,@Address,@SalesmanGroupID,@Active,@UserID, GETDATE(),@AccID)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
select @ACCOUNTID = FAID from tblMasterSalesman where ID = @ID
IF((SELECT count(*) FROM tblMasterSalesman WHERE Name = @Name AND ID != @ID) > 0)
BEGIN
RAISERROR('Already Exists',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name and FAID != @ACCOUNTID
IF(@ExistCount>0)
BEGIN
RAISERROR ('Account Name Already Exists in another master',16,1)
END
INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Column5,Column6,Column7,Column8,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
(select 20,*,@UserID, GETDATE() from tblMasterSalesman where ID = @ID)

set @Name = (select dbo.ProperCase(@Name))

UPDATE tblFAAccount
SET AccountName=@name,AccountGroup=@SUNDRYDEBTORS,MBy=@UserID,MDate=GETDATE(),UserAccount=0,PANNumber=@PANNumber,Active = @Active
WHERE FAID=@ACCOUNTID

UPDATE tblMasterSalesman SET Name = @Name,DOB = @DOB,DOJ = @DOJ,MobileNo = @MobileNo,AadharNo = @AadharNo,PANNumber = @PANNumber,
Address = @Address,SalesmanGroupID = @SalesmanGroupID,Active = @Active,MBy = @UserID,MDate = GETDATE() WHERE ID = @ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT MS.ID,MS.Name,MS.DOB,MS.DOJ,MobileNo,AadharNo,PANNumber,Address,ISNULL(MS.SalesmanGroupID,0) SalesmanGroupID,MSG.Name SalesmanGroupName,MS.Active from tblMasterSalesman MS
LEFT JOIN tblMasterSalesmanGroup MSG ON MSG.ID = MS.SalesmanGroupID order by Name
END
IF(@Mode = 4)
BEGIN
SELECT * from tblMasterSalesman where Name = @Name
END
IF(@Mode = 5)
BEGIN
SELECT * from tblMasterSalesmanGroup where Active = 1 order by Name
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC] END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageService]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageService]            
@Mode INT,@ID smallint = null,@Name nvarchar(255) = null,@TaxID tinyint = null,@SACCode nvarchar(20) = null,@Inwardprice decimal(25,4) = null,          
@Outwardprice decimal(25,4) = null,@Active bit = null,@UserID smallint = null          
as                
begin                
BEGIN TRY                    
set @Name = (select dbo.ProperCase(@Name))       
IF(@Mode = 1)                
BEGIN                
IF((SELECT count(*) FROM tblMasterService WHERE Name = @Name) > 0)                
BEGIN                
RAISERROR('Already Exists',16,1)                
END                
    
 set @Name = (select dbo.ProperCase(@Name))     
insert into tblMasterService(Name,TaxID,SACCode,Inwardprice,Outwardprice,Active,CBy,CDate)                 
Values (@Name,@TaxID,@SACCode,ISNULL(@Inwardprice,0),isnull(@Outwardprice,0),@Active,@UserID, GETDATE())                
SELECT SCOPE_IDENTITY()                
END                
IF(@Mode = 2)                
BEGIN                
IF((SELECT count(*) FROM tblMasterService WHERE Name = @Name AND ID != @ID) > 0)                
BEGIN                
RAISERROR('Already Exists',16,1)                
END                
   INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)  
(select 18,*,@UserID, GETDATE() from tblMasterService where ID = @ID)   
 set @Name = (select dbo.ProperCase(@Name))     
UPDATE tblMasterService SET Name = @Name,TaxID = @TaxID,SACCode = @SACCode,Inwardprice = ISNULL(@Inwardprice,0),Outwardprice = isnull(@Outwardprice,0),          
Active = @Active,MBy = @UserID ,MDate = GETDATE() WHERE ID = @ID                
SELECT @ID                
END                
IF(@Mode = 3)                
BEGIN                
SELECT ID,Name,MT.TaxID,MT.TaxName,SACCode,Inwardprice,Outwardprice,MS.Active from tblMasterService MS        
JOIN tblMasterTax MT ON MT.TaxID = MS.TaxID order by Name                
END                
IF(@Mode = 4)                
BEGIN                
SELECT * from tblMasterService where Name = @Name          
END          
IF(@Mode = 5)                
BEGIN                
SELECT * from tblMasterTax order by TaxName                
END         
END TRY                      
BEGIN CATCH                      
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]                      
END CATCH                      
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageSingleMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec uspManageSingleMaster 1,2,2,'AXIS BANK PVT LTD',1,3                
CREATE PROC [dbo].[uspManageSingleMaster]            
@FormID int,@Mode int,@ID Smallint = NULL,@Name NVARCHAR(MAX) = NULL,@Active BIT = NULL,@CBy SMALLINT = NULL                
AS                
BEGIN                
BEGIN TRY                
  
set @Name = (select dbo.ProperCase(@Name))         
declare @TableName nvarchar(255) = (select TableName from tblTablesNames where ID = @FormID)            
declare @strQuery NVARCHAR(MAX)            
if EXISTS (select * from sys.tables where name = ''+@TableName+'')            
BEGIN            
IF(@Mode = 1)-- CREATE/ADD NEW Data                
BEGIN                
SET @strQuery = '  IF ISNULL((SELECT COUNT(*) FROM dbo.'+@TableName+' WHERE [Name]='''+ @Name+'''),0) >0                  
 BEGIN                  
  RAISERROR(''Name Already Exists'',16,1)                  
 END                 
INSERT INTO '+@TableName+'([Name],Active,CBy,CDate) VALUES ('''+@Name+''','+CONVERT(NVARCHAR(50),@Active)+','+CONVERT(NVARCHAR(50),@CBy)+',GETDATE())                
select SCOPE_IDENTITY()  '            
exec(@strQuery)            
END                
IF(@Mode = 2)-- Modify Existing Data                
BEGIN                
SET @strQuery = '  IF ISNULL((SELECT COUNT(*) FROM dbo.'+@TableName +' WHERE [Name]= '''+@Name +''' and ID != '+CONVERT(nvarchar(50),@ID)+'),0) >0                  
 BEGIN                  
  RAISERROR(''Name Already Exists'',16,1)                  
 END                 
 INSERT INTO tblMasterHistory (FormID,ID,Name,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)  
(select '+CONVERT(nvarchar(50),@FormID)+',*,'+CONVERT(nvarchar(50),@CBy)+',GETDATE() from '+@TableName+' where ID = '+CONVERT(nvarchar(50),@ID)+')   
UPDATE '+@TableName +' SET [Name]='''+@Name+''',Active='+CONVERT(nvarchar(50),@Active)+',MBy='+CONVERT(nvarchar(50),@CBy)+',MDate=GETDATE() WHERE ID ='+CONVERT(nvarchar(50),@ID)                
set @strQuery = @strQuery + ' SELECT ' +CONVERT(nvarchar(50),@ID)             
exec(@strQuery)            
END                
IF(@Mode = 3)-- Get All details                
BEGIN                
SET @strQuery = ' SELECT * FROM '+@TableName+' ORDER BY [Name]'                
exec(@strQuery)            
END                
IF(@Mode = 4)-- Get Particular  details by  Name                
BEGIN                
SET @strQuery = '  SELECT * FROM '+@TableName+' WHERE [Name] = '''+@Name+''''            
exec(@strQuery)            
END            
END            
ELSE            
BEGIN            
DECLARE @ERR NVARCHAR(255) = 'Table ( '+@TableName+') Not Found'            
RAISERROR(@ERR,16,1)            
END            
END TRY                
BEGIN CATCH                
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]                
END CATCH                
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageTaxCompGift]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--exec uspManageSingleMaster 2,1,1,'DAFFS BANK pvt ltd',1,3              
CREATE PROC [dbo].[uspManageTaxCompGift]      
@FormID int,@Mode int,@ID Smallint = NULL,@Name NVARCHAR(MAX) = NULL,@Value decimal(25,4) = NULL,@Active BIT = NULL,@CBy SMALLINT = NULL              
AS              
BEGIN              
BEGIN TRY              
declare @CaseID int = (select AppValue from tblAppConfig where AppID = 1)        
      
declare @TableName nvarchar(255) = (select TableName from tblTablesNames where ID = @FormID)          
declare @strQuery NVARCHAR(MAX)          
if EXISTS (select * from sys.tables where name = ''+@TableName+'')          
BEGIN          
IF(@Mode = 1)-- CREATE/ADD NEW Data              
BEGIN              
set @Name = (select dbo.ProperCase(@Name))       
SET @strQuery = '  IF ISNULL((SELECT COUNT(*) FROM dbo.'+@TableName+' WHERE [Name]='''+ @Name+'''),0) >0                
 BEGIN                
  RAISERROR(''Name Already Exists'',16,1)                
 END               
INSERT INTO '+@TableName+'([Name],Value,Active,CBy,CDate) VALUES ('''+@Name+''','+CONVERT(NVARCHAR(50),@Value)+','+CONVERT(NVARCHAR(50),@Active)+','+CONVERT(NVARCHAR(50),@CBy)+',GETDATE())              
select SCOPE_IDENTITY()  '          
EXEC(@strQuery)          
END              
IF(@Mode = 2)-- Modify Existing Data              
BEGIN              
set @Name = (select dbo.ProperCase(@Name))       
SET @strQuery = '  IF ISNULL((SELECT COUNT(*) FROM dbo.'+@TableName +' WHERE [Name]= '''+@Name +''' and ID != '+CONVERT(nvarchar(50),@ID)+'),0) >0                
 BEGIN                
  RAISERROR(''Name Already Exists'',16,1)                
 END               
  INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)  
(select '+CONVERT(nvarchar(50),@FormID)+',*,'+CONVERT(nvarchar(50),@CBy)+',GETDATE() from '+@TableName+' where ID = '+CONVERT(nvarchar(50),@ID)+')   
  
 UPDATE '+@TableName +' SET [Name]='''+@Name+''',Value = '+CONVERT(nvarchar(50),@Value)+',Active='+CONVERT(nvarchar(50),@Active)+',MBy='+CONVERT(nvarchar(50),@CBy)+',MDate=GETDATE() WHERE ID ='+CONVERT(nvarchar(50),@ID)              
set @strQuery = @strQuery + ' SELECT ' +CONVERT(nvarchar(50),@ID)           
exec(@strQuery)          
END              
IF(@Mode = 3)-- Get All details              
BEGIN              
SET @strQuery = ' SELECT * FROM '+@TableName+' ORDER BY [Name]'              
exec(@strQuery)          
END              
IF(@Mode = 4)-- Get Particular  details by  Name              
BEGIN              
SET @strQuery = '  SELECT * FROM '+@TableName+' WHERE [Name] = '''+@Name+''''          
exec(@strQuery)          
END          
END          
ELSE          
BEGIN          
DECLARE @ERR NVARCHAR(255) = 'Table ( '+@TableName+') Not Found'          
RAISERROR(@ERR,16,1)          
END          
END TRY              
BEGIN CATCH              
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]              
END CATCH              
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageTranContra]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[uspManageTranContra]                                                                                
@Status INT,@ContraID INT=NULL,@DocDate DATE,@TypeId INT,@ModeId INT=NULL,@SalesManId INT=NULL,@Amount DECIMAL (25,6),@RefernceNo NVARCHAR(255)=NULL,              
@AIAccountID INT,@WDSlipNo NVARCHAR(50)=NULL,@ChequeNo INT=NULL,@ChequeNoWithRef NVARCHAR(255)=NULL,@TAAccountID INT=NULL,              
@Narration NVARCHAR(255)=NULL,@Remarks NVARCHAR(255)=NULL,@UID INT,@UDFId INT=NULL,@nAllowNegativeBal INT=NULL,              
@strIFSC_Code NVARCHAR(255)=NULL,@nCurrentStatus INT              
AS      
BEGIN TRAN      
BEGIN TRY      
DECLARE @DocValue INT, @SCOPID INT,@DocId NVARCHAR(50),@PartyAcc INT,@AccID INT,@nStatus INT      
DECLARE @AccCount INT,@AccountName NVARCHAR(255),@UDFDocId NVARCHAR(255),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255),@CheckUDFId INT                                            
                                          
DECLARE @BankFAAccID INT,@TempChequeNo INT,@ChequeRefNoWithChequeNo NVARCHAR(50),@BankAccID INT,@RefNo NVARCHAR(50)                                                    
DECLARE @ChequeBookID INT , @TempModeID INT,@ChequeInfo NVARCHAR(255)                                            
      
DECLARE @TempBankAccID INT         
if(ISNULL(@Status,0) = 3) -- IF VARIANT SET STATUS TO 1(create)    
BEGIN    
SET @Status = 1    
END    
IF ISNULL(@TypeId,0) = 2 AND ISNULL(@ModeId,0) = 2                    
BEGIN                    
SET @ChequeInfo = @ChequeNoWithRef+', '+CONVERT(NVARCHAR,@DocDate,103)+(CASE WHEN ISNULL(@strIFSC_Code,'')='' THEN '' ELSE ' - '+@strIFSC_Code END)                  
END                    
              
IF(@Status =1)                                                                                
BEGIN          
SELECT @DocValue=DocValue,@DocId=DocPrefix + CONVERT(NVARCHAR, DocValue) FROM tblDocumentSeries WHERE TransID=8    
UPDATE tblDocumentSeries SET DocValue=1+ISNULL(DocValue,0) WHERE TransID = 8             
IF ISNULL(@UDFId,0)>0              
BEGIN              
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId              
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId              
END              
END                                                                  
print @Status---            
IF(@Status =2)                                                                                
BEGIN                   
SELECT @nStatus = Status FROM tblTranContra WHERE ID = @ContraID            
  --SELECT * FROM tblTranContra WHERE ContraID = 328            
  print @nStatus             
  print @nCurrentStatus            
IF(@nStatus != @nCurrentStatus)              
BEGIN              
RAISERROR('Status Changed',16,1);              
END              
SELECT @DocValue=DocValue,@UDFDocValue=UDFDocValue,@CheckUDFId=UDFId FROM tblTranContra WHERE ID =@ContraID                                                                                
SELECT @DocId=DocPrefix + CONVERT(NVARCHAR, @DocValue)  FROM tblDocumentSeries WHERE TransID=8                                                     
IF ISNULL(@UDFId,0)>0              
BEGIN                                                
IF(@UDFId=@CheckUDFId)              
BEGIN              
SELECT @UDFDocId=DocPrefix + CONVERT(NVARCHAR, @UDFDocValue),@UDFDocPrefix=DocPrefix  FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId                                                    
END                                                     
IF(@UDFId!=@CheckUDFId)                                                    
BEGIN                                    
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue) FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId                                                                            
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1  WHERE UDNId =@UDFId                                                   
END                                    
END                               
-- Cancel Cheque If Modify                                        
             
SELECT @TempModeID=ModeId FROM tblTranContra WHERE ID = @ContraID                               
IF @TempModeID=2                                        
BEGIN                                        
 SELECT @BankAccID = FromFAID,@TempChequeNo=ChequeNo,@ChequeRefNoWithChequeNo=ChequeNumberWithRef                                                    
 FROM tblTranContra where ID = @ContraID                          
                            
 SELECT @TempBankAccID = ID FROM tblMasterBankAccount WHERe FAID = @BankAccID                                          
 SET @RefNo=(SELECT SUBSTRING(@ChequeRefNoWithChequeNo,0,(SELECT CHARINDEX('-', @ChequeRefNoWithChequeNo))-1))                                             
 SET @ChequeBookID=(SELECT ChequebookId FROM tblMasterChequeBook WHERE BankAccountID=@TempBankAccID AND ChequeBookreferNo=@RefNo)                                                    
 UPDATE tblMasterChequeBookDetail SET [Status]=4 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@TempChequeNo              
END                                        
END                                          
                                          
IF @Status=1 OR @Status=2                                          
BEGIN                                         
-- Cheque Status                                          
 IF @ModeId=2                                          
 BEGIN                                        
 SET @RefNo=(SELECT SUBSTRING(@ChequeNoWithRef,0,(SELECT CHARINDEX('-', @ChequeNoWithRef))-1))                                                    
 SET @ChequeBookID=(SELECT ChequebookId FROM tblMasterChequeBook CBH   
 join tblMasterBankAccount MBA ON MBA.ID = CBH.BankAccountID  
 WHERE FAID=@AIAccountID AND ChequeBookreferNo=@RefNo)                                                    
 UPDATE tblMasterChequeBookDetail SET [Status]=5 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@ChequeNo                                              
 END                                          
 --GET Cash ID                                
 --Get Financial Acc ID's                                            
DECLARE @FromAccID INT,@ToAccID INT                                   
 --DECLARE @CASHID INT                                                
DECLARE @PYModeAmt DECIMAL (25,6),@PYFAType NVARCHAR(10)                                                                
DECLARE @PYOutputValue TABLE (Amt DECIMAL(18,9),FAType NVARCHAR(10))                                                                 
                           
IF @TypeId=1         
BEGIN                                                                                
SELECT @FromAccID= FAID FROM tblFAAccount WHERE AccountName='Cash';                                
--SELECT @ToAccID= FAID FROM tblMasterBankAccount WHERE ID=@AIAccountID                      
SET @ToAccID=@AIAccountID      
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@FromAccID,@DocDate                                                                
---- Get Value From Result                                                                
--SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                                                                
---- Check Balance < Collected Amount                          
--IF ISNULL(@nAllowNegativeBal,0)=0                          
--BEGIN                          
--IF @PYFAType='Cr' OR @PYModeAmt<@Amount                                                                
--BEGIN                                                                
--RAISERROR('CASH' ,16,1)                                                     
--END                          
--END                      
END                                           
IF @TypeId=2                                            
BEGIN                                
--SELECT @FromAccID= FAID FROM tblMasterBankAccount WHERE ID=@AIAccountID                              
SET @FromAccID=@AIAccountID      
SELECT @ToAccID=FAID FROM tblFAAccount WHERE AccountName='Cash';                      
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@FromAccID,@DocDate                                                                
---- Get Value From Result                                               
--SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                            
---- Check Balance < Collected Amount                          
--IF ISNULL(@nAllowNegativeBal,0)=0                          
--BEGIN                          
--IF @PYFAType='Cr' OR @PYModeAmt<@Amount                                                                
--BEGIN                                                                
--RAISERROR('BALANCE' ,16,1)                                                                
--END                          
--END                      
                      
END                                     
                                            
IF @TypeId=3                                            
BEGIN            
--SELECT @FromAccID= FAID FROM tblMasterBankAccount WHERE ID=@AIAccountID    
--SELECT @ToAccID= FAID FROM tblMasterBankAccount WHERE ID=@TAAccountID    
SET @FromAccID=@AIAccountID      
SET @ToAccID=@TAAccountID                 
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@FromAccID,@DocDate                                                                
---- Get Value From Result                                                                
--SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                                                                
---- Check Balance < Collected Amount                          
--IF ISNULL(@nAllowNegativeBal,0)=0                          
--BEGIN                          
--IF @PYFAType='Cr' OR @PYModeAmt<@Amount                                                                
--BEGIN                                                                
--RAISERROR('BALANCE' ,16,1)                      
--END                          
--END                      
                                            
END          
IF @TypeId=4 -- Branch Transfer          
BEGIN                            
----SELECT @FromAccID= AccountID FROM tblMasterBankAccount WHERE ID=@AIAccountID          
SELECT @FromAccID= FAID FROM tblFAAccount WHERE AccountName='Cash'        
SET @ToAccID=@AIAccountID        
--SELECT @ToAccID= AccountID FROM tblMasterBankAccount WHERE ID='Cash'          
                      
--INSERT INTO @PYOutputValue(Amt,FAType) EXEC uspLoadClosingBalance 1,@AIAccountID,@DocDate                                                                
---- Get Value From Result                                                                
--SELECT @PYModeAmt=Amt,@PYFAType=FAType FROM @PYOutputValue                                                                
---- Check Balance < Collected Amount                          
--IF ISNULL(@nAllowNegativeBal,0)=0                          
--BEGIN                          
--IF @PYFAType='Cr' OR @PYModeAmt<@Amount                                                                
--BEGIN                                                                
--RAISERROR('BALANCE' ,16,1)                      
--END                          
--END          
END            
END                                                                   
                                                                         
IF(@Status =2)                                                                                
BEGIN      
 UPDATE tblTranContra SET [Status]=@Status,MBy =@UID ,MDate =GETDATE() WHERE ID =@ContraID AND TransID =8                                                                                
 UPDATE tblFAJournal SET [Status] =@Status,MBy =@UID ,MDate =GETDATE() WHERE TransId =@ContraID  AND DocPrefix =8                                                                                
 SET @Status =@Status +1;                                                                
END      
                                                                              
IF(@Status =4)      
BEGIN                                                                 
 UPDATE tblTranContra SET [Status]=@Status,ClBy  =@UID ,ClDate  =GETDATE() WHERE ID =@ContraID AND TransID =8               
 UPDATE tblFAJournal SET [Status] =@Status,ClBy =@UID ,ClDate =GETDATE() WHERE TransId =@ContraID  AND DocPrefix =8                                             
                                           -- Cancel Cheque Status                                      
  SELECT @TempModeID=ModeId FROM tblTranContra WHERE ID = @ContraID                                        
IF @TempModeID=2                                       
BEGIN                                 
 SELECT @BankAccID=FromFAID,@TempChequeNo=ChequeNo,@ChequeRefNoWithChequeNo=ChequeNumberWithRef FROM tblTranContra where ID = @ContraID                            
 SELECT @TempBankAccID=ID FROM tblMasterBankAccount WHERe FAID=@BankAccID                                                    
 SET @RefNo=(SELECT SUBSTRING(@ChequeRefNoWithChequeNo,0,(SELECT CHARINDEX('-', @ChequeRefNoWithChequeNo))-1))                                                    
 SET @ChequeBookID=(SELECT ChequebookId FROM tblMasterChequeBook WHERE BankAccountID=@TempBankAccID AND ChequeBookreferNo=@RefNo)                                                    
 UPDATE tblMasterChequeBookDetail SET [Status]=4 WHERE ChequebookId=@ChequeBookID AND ChequeNo=@TempChequeNo                                      
 END                                            
END                                                                  
                                                                
IF(@Status !=4)                                                                              
BEGIN                                  
-- Bank Transfer                                  
IF @TypeId=3         
BEGIN                                  
INSERT INTO tblTranContra(DocDate,TypeId,ModeId,SalesManId,Amount,RefNo,FromFAID,WDSlipNo,ChequeNo,                                  
 ChequeNumberWithRef,ToFAID,Narration,CBy,DocID,TransID,DocValue,Balance,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CDate,[Status],Remarks)                                               
VALUES(@DocDate,@TypeId,@ModeId,@SalesManId,@Amount,@RefernceNo,@FromAccID,@WDSlipNo,@ChequeNo,                       
 @ChequeNoWithRef,@ToAccID,@Narration,@UID,@DocID,8,@DocValue,@Amount,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,GETDATE(),@Status,@Remarks)                                   
END                                  
-- Cash WithDraw                                  
IF @TypeId=2                                  
BEGIN                                  
INSERT INTO tblTranContra(DocDate,TypeId,ModeId,SalesManId,Amount,RefNo,FromFAID,WDSlipNo,ChequeNo,                                  
 ChequeNumberWithRef,ToFAID,Narration,CBy,DocID,TransID,DocValue,Balance,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CDate,[Status],Remarks)                                               
VALUES(@DocDate,@TypeId,@ModeId,@SalesManId,@Amount,@RefernceNo,@FromAccID,@WDSlipNo,@ChequeNo,                                  
 @ChequeNoWithRef,@ToAccID,@Narration,@UID,@DocID,8,@DocValue,@Amount,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,GETDATE(),@Status,@Remarks)                                   
END                                  
--Cash Deposit                                  
IF @TypeId=1      
BEGIN                                  
INSERT INTO tblTranContra(DocDate,TypeId,ModeId,SalesManId,Amount,RefNo,FromFAID,WDSlipNo,ChequeNo,                                  
 ChequeNumberWithRef,ToFAID,Narration,CBy,DocID,TransID,DocValue,Balance,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CDate,[Status],Remarks)                                               
VALUES(@DocDate,@TypeId,@ModeId,@SalesManId,@Amount,@RefernceNo,@FromAccID,@WDSlipNo,@ChequeNo,                                  
 @ChequeNoWithRef,@ToAccID,@Narration,@UID,@DocID,8,@DocValue,@Amount,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,GETDATE(),@Status,@Remarks)                                   
END                                                              
--Branch Transfer                            
IF @TypeId=4          
BEGIN                                  
INSERT INTO tblTranContra(DocDate,TypeId,ModeId,SalesManId,Amount,RefNo,FromFAID,WDSlipNo,ChequeNo,                                  
 ChequeNumberWithRef,ToFAID,Narration,CBy,DocID,TransID,DocValue,Balance,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,CDate,[Status],Remarks)                 
VALUES(@DocDate,@TypeId,@ModeId,@SalesManId,@Amount,@RefernceNo,@ToAccID,@WDSlipNo,@ChequeNo,                                  
 @ChequeNoWithRef,@FromAccID,@Narration,@UID,@DocID,8,@DocValue,@Amount,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,GETDATE(),@Status,@Remarks)                                   
END       
SET @SCOPID=( SELECT SCOPE_IDENTITY())                              
-- Posting                            
 DECLARE @JVID INT                                
 SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal                                                           
IF (@TypeId=1 OR @TypeId=4)                                        
BEGIN                                                                        
INSERT INTO tblFAJournal (DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)                          
VALUES(@DocID,8,@DocValue,@DocDate,@RefernceNo,@ToAccID,0,@Amount,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)          
                          
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)                                                 
VALUES (@DocID,8,@DocValue,@DocDate,@RefernceNo,@FromAccID,@Amount,0,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)                                                                         
END                                                         
IF (@TypeId=2)                                                                
BEGIN                                                                        
INSERT INTO tblFAJournal (DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo,Adjusment)                                        
VALUES(@DocID,8,@DocValue,@DocDate,@RefernceNo,@FromAccID,@Amount,0,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo,0)                    
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,ChequeInfo,Adjusment)                     
VALUES (@DocID,8,@DocValue,@DocDate,@RefernceNo,ISNULL(@ToAccID,0),0,@Amount,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,@ChequeInfo,0)                                                                          
END                                                                        
IF (@TypeId=3)        
BEGIN                                                     
INSERT INTO tblFAJournal(DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)                                                                    
VALUES (@DocID,8,@DocValue,@DocDate,@RefernceNo,@FromAccID,@Amount,0,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)                
          
INSERT INTO tblFAJournal (DocID,DocPrefix,DocValue,DocDate,DocRef,AccountID,Credit,Debit,Balance,Remarks,Narration,                            
CBy,CDate,[Status],TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)                                                                                                
VALUES(@DocID,8,@DocValue,@DocDate,@RefernceNo,@ToAccID,0,@Amount,@Amount,'',@Narration,                            
@UID,GETDATE(),ISNULL(@Status,1),@SCOPID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)                                                                              
END                                                                               
END                                    
--IF @Status != 4                                    
BEGIN                                    
SELECT @SCOPID                                    
END                 
COMMIT TRAN                                                                
END TRY               
BEGIN CATCH              
ROLLBACK TRAN                                                                    
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(),ERROR_LINE()                                                                                                 
END CATCH 
GO
/****** Object:  StoredProcedure [dbo].[uspManageTransPurchaseBill]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageTransPurchaseBill]--2000  
(@Mode INT,@BillId INT = NULL,@BranchID INT = NULL,@nCurrStatus int,@BillDate DATE,@VendorId INT,@TotalGrossAmt DECIMAL (25,6),@TotalTaxAmt DECIMAL (25,6),@TotalNetAmt DECIMAL (25,6),  
@GRNRefNo NVARCHAR(255)=NULL,@PGroupID INT=NULL,@TaxTypeID INT,@PaymentTermId INT=NULL,@paymentDate NVARCHAR(25)=NULL,  
@PaymentModeId INT=NULL ,@vehicleno NVARCHAR(255)=NULL,@Frieght DECIMAL (25,6)= NULL,@OtherCharge DECIMAL(25,6)=NULL,  
@OtherChargeamt DECIMAL (25,6)=NULL,@ProdDisc DECIMAL(25,6)=NULL,@TradeDisc DECIMAL(25,6)=NULL,@AddnlDisc DECIMAL(25,6)=NULL,  
@TotalProdDiscAmt DECIMAL (25,6)= NULL,@TotalTradeDiscAmt DECIMAL (25,6)= NULL,@TotalAddnlDiscAmt DECIMAL (25,6)= NULL,  
@WrightOffAmt DECIMAL (25,6)= NULL,@UID INT,@RoundOffAmt DECIMAL (25,6)= NULL,@tvpTranBillDetail AS [tvpTranBillDetail] READONLY,  
@tvpTranBillMop AS [tvpTranBillMop] READONLY,@UDFId INT =NULL ,@IFBIll SMALLINT=1,@nAllowNegativeBal INT=NULL,@IS_IMPORT INT=NULL,  
@DateBill DATE=NULL,@TCSPern DECIMAL(25,6) = NULL,@TCSAmt DECIMAL(25,6) = NULL,@TDSAmt DECIMAL(25,6) = NULL,@ImportStatus INT = 0,  
@Remarks NVARCHAR(25)=NULL,@Narration NVARCHAR(25)=NULL,@DraftID INT = 0)  
AS  
BEGIN TRY  
SET DATEFORMAT dmy;  
SET NOCOUNT ON;  
DECLARE @AccId INT,@ScopeID INT  
DECLARE @docvalue INT ,@Status INT,@DocID NVARCHAR(255),@GRNDocID NVARCHAR(255),@UDFDocId NVARCHAR(255),@UDFDocValue INT,@UDFDocPrefix NVARCHAR(255),@CheckUDFId INT  
DECLARE @CheckStatus INT,@DrDetbitNote DECIMAL(25,6),@TempPOID int
DECLARE @F_SD DATE = (SELECT F_SD FROM tblCompanyRegistration WHERE CompanyId = 1)  
DECLARE @F_ED DATE = (SELECT F_ED FROM tblCompanyRegistration WHERE CompanyId = 1)  
SELECT @Accid=FAID FROM tblMasterVendor WHERE ID =@VendorId  
IF(@Mode = 1)  
BEGIN  
--SELECT @CheckStatus = [Status] FROM tblTranGRNHeader WHERE GRNID = @GRNID  
--IF(@CheckStatus != @nCurrStatus)  
--BEGIN  
--RAISERROR('PROC',16,1)  
--END  
--USER$ DEFINE NUMBER DOC VALIDATIONS
IF ISNULL(@BillId,0)>0  -- PO to Bill
BEGIN
set @TempPOID = @BillId
SET @BillId = 0
END
IF ISNULL(@UDFId,0)>0  
BEGIN  
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)  
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId  
IF ISNULL(@IS_IMPORT,0)=0  
BEGIN  
UPDATE tblMasterUserDefineNoHeader SET DocValue=1+ISNULL(DocValue,0) WHERE UDNId=@UDFId  
END  
END  
--Get Doc value and Doc Prefix  
SELECT @docvalue=DocValue,@DocID=DocPrefix +CONVERT(NVARCHAR,DocValue) from dbo.tblDocumentSeries WHERE TransID = 1  

--Update Doc Value  
UPDATE dbo.tblDocumentSeries SET DocValue = ISNULL(DocValue,0)+1 WHERE TransID = 1  
--Status Revert for GRN  
--UPDATE dbo.tblTranGRNHeader SET [Status] = 8 WHERE GRNID = @GRNID  
--UPDATE tblFAJournal SET [Status] = 8 WHERE TransId =@GRNID AND DocPrefix =1  
--Set Status  
SET @Status=1  
SET @BillId=0  
ENd  
ELSE  
BEGIn  
--select [Status] from tblTranBillHeader where BillID = 2876  
UPDATE tblTransPurchaseHeader SET [Status]=2 ,Mby =@UID ,Mdate =GETDATE () Where ID = @BillId  
UPDATE tblFAJournal SET [Status]=2 ,Mby =@UID ,Mdate =GETDATE () WHERE TransId =@BillId AND DocPrefix =1  
  
--set @CheckStatus = (SELECT [Status] FROM tblTranBillHeader WHERE BillID = @GRNID)  
--IF(@CheckStatus != @nCurrStatus)  
--BEGIN  
--RAISERROR('PROC',16,1)  
--END  
  
--exec uspValidateBillModifyORCancel @nCurrStatus,@GRNId,@Mode,  
--Modify Bill Get Doc Value Amended Bill  
SELECT @docvalue=DocValue ,@DocID =DocID,@UDFDocValue=ISNULL(UDFDocValue,0),@CheckUDFId=ISNULL(UDFId,0)  
FROM tblTransPurchaseHeader WHERE ID =@BillId  
SET @Status=3  
IF ISNULL(@UDFId,0)>0  
BEGIn  
IF(@UDFId=@CheckUDFId)  
BEGIN  
SELECT @UDFDocId=DocPrefix + CONVERT(NVARCHAR, @UDFDocValue),@UDFDocPrefix=DocPrefix FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId  
END  
IF(@UDFId!=@CheckUDFId)  
BEGIN  
SELECT @UDFDocValue=DocValue,@UDFDocPrefix=DocPrefix,@UDFDocId=DocPrefix+ CONVERT(NVARCHAR, DocValue)  
FROM tblMasterUserDefineNoHeader WHERE UDNId=@UDFId  
UPDATE tblMasterUserDefineNoHeader SET DocValue = ISNULL(DocValue,0)+1 WHERE UDNId =@UDFId  
END  
END  
END  
IF(@Mode = 1)-- OR @Mode = 2  
BEGIN  
IF((SELECT COUNT(DocValue) FROM tblTransPurchaseHeader WHERE DocValue = @DocValue and Date BETWEEN @F_SD AND @F_ED and Status in (1,3,4,5) and TransID = 1) != 0)  
BEGIN  
RAISERROR('UDocId',16,1)  
END  
ENd  
-----TDSamount value for Balance  
Declare @TDSBalance decimal(25,4)  
IF ISNULL(@Mode,0)=1 OR ISNULL(@Mode,0)=2  
BEGIN  
Set @TDSBalance=(@TotalNetAmt-@TDSAmt)  
END  
SET @TotalNetAmt = (ISNULL(@TotalNetAmt,0) )  
--Insert bill header  
INSERT INTO tblTransPurchaseHeader(Date,DocID,TransID,BranchID,DocValue,VENDorID,[Status],GrossAmt,TaxAmt,NetAmt,RefNo,ProdGroupID,TaxTypeID,PaymentTermID,PaymentDate,  
PaymentModeId, VehicleNo,Frieght,[OtherCharge%],OtherChargeAmt,[ProdDisc%],[TradeDisc%],[AddnlDisc%],TotalProdDiscAmt,TotalTradeDiscAmt,  
TotalAddnlDiscAmt,WriteOffAmt,RoundOffAmt, Balance,OrgId,Cby,Cdate,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,  
DateBill,TCSTaxPern,TCSTaxAmt,TDSAmount,Remarks,Narration)  
VALUES(@BillDate, @DocID,1 ,@BranchID,@docvalue,@VendorId,CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END ,  
@TotalGrossAmt,@TotalTaxAmt,@TotalNetAmt,@GRNRefNo,@PGroupID,@TaxTypeID,@PaymentTermId,  
(CASE WHEN ISNULL(@paymentDate,'')='' THEN NULL ELSE @paymentDate END),@PaymentModeId,@vehicleno,@Frieght,@OtherCharge,@OtherChargeamt,@ProdDisc,@TradeDisc,@AddnlDisc,@TotalProdDiscAmt,@TotalTradeDiscAmt,  
@TotalAddnlDiscAmt,@WrightOffAmt,@RoundOffAmt,@TDSBalance,@BillId,@UID,GETDATE (),@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,  
(CASE WHEN ISNULL(@DateBill,'')='' THEN @BillDate ELSE @DateBill END),@TCSPern,@TCSAmt,@TDSAmt,@Remarks,@Narration)  
--Scope Indentity for Bill Header Table  
  
SET @ScopeID=(SELECT SCOPE_IDENTITY())  

--Variable declaration for Loop bill detail  
DECLARE @ProdID INT,@UOMID INT,@UomGrpID INT,@BatchNo NVARCHAR(255) = NULL,@PKD NVARCHAR(255) = NULL,@Expiry NVARCHAR(255) = NULL,@UomQty DECIMAL(25, 9) ,@UomFreeQty DECIMAL(25,9),  
@UomDamageQty DECIMAL(25, 9) ,@PurchasePrice DECIMAL (25,6),@SalePrice DECIMAL (25,6),@ECP DECIMAL (25,6),@MRP DECIMAL (25,6),@SPLPrice DECIMAL (25,6),@TaxID INT,@BTaxTypeId INT,  
@TaxPercentage DECIMAL (25,6),@GoodsAmt DECIMAL (25,6),@ProdDiscPercent DECIMAL (25,6) = NULL,@TradeDiscPercent DECIMAL (25,6) = NULL,@AddnlDiscPercent DECIMAL (25,6) = NULL,  
@BGrossAmt DECIMAL (25,6),@BTaxAmt DECIMAL (25,6),@BNetAmt DECIMAL (25,6),@InvId INT,@InclusiveYesNo INT,@IsChrgProd INT = 0  
,@ReturnPrice DECIMAL (25,6),@InvScopeID INT = 0  
--Loop Detail using CURSOR  
DECLARE @PKDDate DATE,@ExpiryDate DATE  
DECLARE @PriceOnUomCF DECIMAL (25,6),@MRPOnUomCF DECIMAL (25,6),@SelectedUomCF DECIMAL (25,6),  
@Qty DECIMAL(25, 9),@FreeQty DECIMAL(25, 9),@DamageQty DECIMAL(25, 9)  
DECLARE @PUomId INT,@MRPUomId INT,@TrackPKD INT  
DECLARE @InventoryID INT =0  
DECLARE cursor_Temp CURSOR FOR (SELECT [ProdID] ,[UOMID],[UomGrpID],[BatchNo] ,[PKD] ,[Expiry], [Qty] , [FreeQty] , [DamageQty],  
[PurchasePrice],[SalePrice] ,[ECP] ,[MRP] ,[SPLPrice] , [TaxID] ,[TaxTypeId] ,[TaxPercentage] ,[GoodsAmt] ,[ProdDiscPercent],  
[TradeDiscPercent], [AddnlDiscPercent],[GrossAmt] ,[TaxAmt],[NetAmt] ,[InventoryId],InclusiveYesNo,ReturnPrice FROM @tvpTranBillDetail)  
OPEN cursor_Temp  
FETCH NEXT FROM cursor_Temp INTO @ProdID , @UOMID ,@UomGrpID ,@BatchNo ,@PKD ,@Expiry ,@UomQty ,  
@UomFreeQty,@UomDamageQty ,@PurchasePrice ,@SalePrice ,@ECP ,@MRP ,@SPLPrice ,@TaxID ,@BTaxTypeId ,@TaxPercentage ,  
@GoodsAmt ,@ProdDiscPercent ,@TradeDiscPercent ,@AddnlDiscPercent ,@BGrossAmt ,@BTaxAmt ,@BNetAmt ,@InvId ,@InclusiveYesNo,  
@ReturnPrice  
DECLARE @GTaxAmt DECIMAL (25,6),@InclMRP DECIMAL (25,6)  
--SET @GTaxAmt =( @MRP * @TaxPercentage /100)  
--SET @InclMRP = (@MRP + @GTaxAmt)  
  
DECLARE @BillDetailSerial INT = 1  
WHILE @@FETCH_STATUS =0  
BEGIN  
IF(@IFBIll=1)  
BEGIN --Direct Bill Screen  
IF ISDATE(CONVERT(NVARCHAR,@PKD,103))=1  
BEGIN  
SET @PKDDate=@PKD  
END  
ELSE  
BEGIN  
SET @PKDDate=NULL  
END  
IF ISDATE(CONVERT(NVARCHAR,@Expiry,103))=1  
BEGIN  
SET @ExpiryDate=@Expiry  
END  
ELSE  
BEGIN  
SET @ExpiryDate=NULL  
END  
END  
ELSE  
BEGIN --GRN wise Bill Create  
IF @PKD !=NULL OR @PKD !=''  
BEGIN  
SET @PKDDate=@PKD  
END  
ELSE  
BEGIN  
SET @PKDDate=NULL  
END  
IF @Expiry!=NULL OR @Expiry!=''  
BEGIN  
SET @ExpiryDate=@Expiry  
END  
ELSE  
BEGIN  
SET @ExpiryDate=NULL  
END  
END  
--Get Price On,MRP ON from Product Table  
SELECT @PUomId=PurchaseUomID,@PriceOnUomCF=PurchaseCR,@TrackPKD = TrackPDK--,@IsChrgProd = (CASE WHEN TrackInventory = 0 AND ChargesPern > 0 THEN 1 ELSE 0 END)  
FROM tblMasterProduct WHERE ID =@ProdID  
  
SET @Qty=@UomQty *@PriceOnUomCF;  
SET @FreeQty=@UomFreeQty *@PriceOnUomCF;  
SET @DamageQty=@UomDamageQty *@PriceOnUomCF;  
  
-- Uom Convertion  
--SELECT @PriceOnUomCF=ConversionRate FROM tblMastUomGroupDetail WHERE UOMGroupID =@UomGrpID AND UOMMastID =@PUomId  
--SELECT @MRPOnUomCF=ConversionRate FROM tblMastUomGroupDetail WHERE UOMGroupID =@UomGrpID AND UOMMastID =@MRPUomId  
--SELECT @SelectedUomCF=ConversionRate FROM tblMastUomGroupDetail WHERE UOMGroupID =@UomGrpID AND UOMMastID =@UOMID  
--Insert In Purchase Bill Bill Detail Table  
--New Batch Insertion  
IF ISNULL(@InvId,0)=0  
BEGIn  
IF(@IsChrgProd = 0)  
BEGIN  
EXEC uspInsertInventory 'INSERT',1,@BillDate,@DocValue,@ProdId,@UomGrpID,@UOMID,@UomQty,@UomFreeQty,@UomDamageQty,@UomQty,@UomFreeQty,  
@UomDamageQty,0,0,0,@Batchno ,@PKDDate,@ExpiryDate,@PurchasePrice,@SalePrice,@ECP,@SPLPrice,@MRP,@ReturnPrice,@TaxId ,@TaxTypeId ,  
@TaxPercentage,0,@InvScopeId OUT,0,@InclusiveYesNo,@UID,@BranchID  
END  
END  
ELSE  
BEGIN  
DECLARE @CheckBatchVerify INT  
IF(@TrackPKD =1)  
BEGIN  
SET @CheckBatchVerify =(SELECT COUNT(*) FROM tblProductInventory IP  
JOIN @tvpTranBillDetail TVP ON TVP .InventoryId =IP.InventoryId  
WHERE IP.InventoryId =@InvId AND ISNULL(IP.BatchNumber,'')=ISNULL(TVP.BatchNo,'')  
AND IP.PkdDate =CONVERT(DATE,TVP.PKD,103) AND IP.ExpiryDate =CONVERT(DATE,TVP.Expiry,103))  
END  
ELSE  
BEGIN  
SET @CheckBatchVerify =(SELECT COUNT(*) FROM tblProductInventory IP  
JOIN @tvpTranBillDetail TVP ON TVP .InventoryId =IP.InventoryId  
WHERE IP.InventoryId =@InvId AND ISNULL(IP.BatchNumber,'')=ISNULL(TVP.BatchNo,''))  
END  
  
--iyan----  
--If Change Batch Info To Verify Changes Allow or Not  
--IF(ISNULL(@CheckBatchVerify,0)=0)  
--BEGIN  
-- SELECT @TempQty=ISNULL(RecdQty,0)-(ISNULL(ActualQty,0)-ISNULL(SRQty,0)),  
-- @TempFreeQty=ISNULL(RecdFreeQty,0)-(ISNULL(ActualFreeQty,0)-ISNULL(SRFreeQty,0)),  
-- @TempDmgQty=ISNULL(RecdDmgQty,0)-(ISNULL(ActualDmgQty,0)-ISNULL(SRFreeQty,0))  
-- FROM tblProdInventory WHERE InventoryId=@InventoryID  
-- IF(@TempQty !=0 OR @TempFreeQty !=0 OR @TempDmgQty !=0)  
-- BEGIN  
-- RAISERROR('Batch Cannot Change',16,1);  
-- END  
--END  
--Find Required Qty  
DECLARE @RQTY DECIMAL(25, 9),@RFQTY DECIMAL(25, 9),@RDQTY DECIMAL(25, 9),@AQty DECIMAL(25, 9)  
DECLARE @AFQty DECIMAL(25, 9),@ADQty DECIMAL(25, 9),@SRQty DECIMAL(25, 9),@SRFQty DECIMAL(25, 9),@SRDQty DECIMAL(25, 9)  
  
SELECT @RQTY = RecdQty,@RFQTY =RecdFreeQty ,@RDQTY = RecdDmgQty,  
@AQty =ActualQty ,@AFQty =ActualFreeQty ,@ADQty =ActualDmgQty ,  
@SRQty =SRQty,@SRFQty = SRFreeQty ,@SRDQty = SRDmgQty  
FROM dbo.tblProductInventory WHERE InventoryId = @InvId  
  
DECLARE @FinalQty DECIMAL(25, 9),@FinalFreeQty DECIMAL(25, 9),@FinalDmgQty DECIMAL(25, 9)  
  
SET @FinalQty = @RQTY - (@AQty - @SRQty )  
SET @FinalFreeQty = @RFQTY - (@AFQty - @SRFQty)  
SET @FinalDmgQty = @RDQTY - (@ADQty - @SRDQty )  
  
DECLARE @QtyDiff DECIMAL(25, 9)  
DECLARE @EM NVARCHAR(MAX) = 'Qty : '+convert(NVARCHAR(50),isnull(@Qty,0))+' , Final Qty : '+convert(NVARCHAR(50),isnull(@FinalQty,0))  
--Verify Required Qty If Pass to Update the Qty In Inventory Table  
IF(isnull(@Qty,0) >= isnull(@FinalQty,0) AND isnull(@FreeQty,0) >= isnull(@FinalFreeQty,0) AND isnull(@DamageQty,0) >= isnull(@FinalDmgQty,0) )  
BEGIN  
IF(@RQTY < @Qty)  
BEGIN SET @QtyDiff = @Qty - @RQTY  
SET @RQTY = @RQTY + @QtyDiff  
SET @AQty = @AQty + @QtyDiff  
END  
ELSE IF(@Qty < @RQTY )  
BEGIN  
SET @QtyDiff = @RQTY - @Qty  
SET @RQTY = @RQTY - @QtyDiff  
set @AQty = @AQty - @QtyDiff  
END  
IF(@RFQTY < @FreeQty)  
BEGIN  
SET @QtyDiff = @FreeQty - @RFQTY  
SET @RFQTY = @RFQTY + @QtyDiff  
SET @AFQty = @AFQty + @QtyDiff  
END  
ELSE IF(@RFQTY >@FreeQty)  
BEGIN  
SET @QtyDiff = @RFQTY - @FreeQty  
SET @RFQTY = @RFQTY - @QtyDiff  
SET @AFQty = @AFQty - @QtyDiff  
END  
IF(@RDQTY < @DamageQty)  
BEGIN  
Set @QtyDiff = @DamageQty - @RDQTY  
Set @RDQTY = @RDQTY + @QtyDiff  
set @ADQty = @ADQty + @QtyDiff  
END  
ELSE IF(@RDQTY > @DamageQty )  
BEGIN  
SET @QtyDiff = @RDQTY - @DamageQty  
SET @RDQTY = @RDQTY - @QtyDiff  
set @ADQty = @ADQty - @QtyDiff  
END  
IF(@IsChrgProd = 0)  
BEGIN  
EXEC uspInsertInventory 'UPDATE',1,@BillDate,@DocValue,@ProdId,@UomGrpID,@UOMID,@RQTY,@RFQTY,@RDQTY,@AQty,@AFQty,@ADQty,0,0,0,  
@Batchno ,@PKDDate,@ExpiryDate,@PurchasePrice,@SalePrice,@ECP,@SPLPrice,@MRP,@ReturnPrice,@TaxId ,@TaxTypeId ,@TaxPercentage,  
@InvId,@InvScopeId OUT ,0,@InclusiveYesNo,@UID,@BranchID  
END  
END  
ELSE  
BEGIN  
declare @MG NVARCHAR(MAX) = 'Qty Miss Matched.%s'  
RAISERROR(@MG,16,1,@EM);  
END  
END  
  
INSERT INTO tblTransPurchaseDetail(HID,InventoryId,ProdID,UOMID,BatchNo,PKD,Expiry,UomQty,UomFreeQty,UomDamageQty,  
UomPurchasePrice, UomSalePrice,UomECP,UomMRP,UomSPLPrice,PurchasePrice,SalePrice,ECP,MRP,SPLPrice,ReturnPrice,  
TaxID,TaxTypeId,[Tax%],GoodsAmt,[ProdDisc%],[TradeDisc%],[AddnlDisc%], GrossAmt,TaxAmt,NetAmt,Serial)  
VALUES  
(@ScopeID,@InvScopeId,@ProdID ,@UOMID,@BatchNo,@PKDDate,@ExpiryDate,@UomQty , @UomFreeQty , @UomDamageQty,  
@PurchasePrice,@SalePrice,@ECP, @MRP,@SPLPrice,ISNULL((@PurchasePrice / @SelectedUomCF ),0),ISNULL((@SalePrice / @SelectedUomCF) ,0),  
ISNULL((@ECP / @SelectedUomCF) ,0),ISNULL((@MRP / @MRPOnUomCF) ,0),ISNULL((@SPLPrice / @SelectedUomCF) ,0),ISNULL((@ReturnPrice / @SelectedUomCF) ,0),  
@TaxID ,@TaxTypeId,@TaxPercentage,@GoodsAmt , @ProdDiscPercent,@TradeDiscPercent,@AddnlDiscPercent,@BGrossAmt,@BTaxAmt,@BNetAmt,  
@BillDetailSerial)  
  
SET @BillDetailSerial = @BillDetailSerial + 1  
--Direct Bill Only Update Inventory and Product Table  
IF(@IFBIll=1)  
BEGIN  
--UPDATE PRICE In Inventory  
  
DECLARE @NPrice DECIMAL (25,6),@MP DECIMAL (25,6)  
SET @MP =ISNULL((@MRP / @MRPOnUomCF) ,0)  
--IF ISNULL(@InclusiveYesNo,0)=1  
--BEGIN  
SET @NPrice = (@MP / ((@TaxPercentage /100 )+ 1))  
SET @MP = @NPrice  
--END  
IF(@IsChrgProd = 0 AND ISNULL(@ImportStatus,0) = 0)  
BEGIN  
UPDATE dbo.tblProductInventory  
SET PurchasePrice=ISNULL((@PurchasePrice / @SelectedUomCF ),0),SalesPrice=ISNULL((@SalePrice / @SelectedUomCF) ,0),ECP=ISNULL((@ECP / @SelectedUomCF),0),MRP=ISNULL((@MP),0),  
SPLPrice=ISNULL((@SPLPrice / @SelectedUomCF),0),TaxId=@TaxId, TaxTypeId=@TaxTypeId,TaxValue=ISNULL(@TaxPercentage,0),MRPONPrice =@MRP  
WHERE InventoryId = @InvId  
--Product Price Updation  
--EXEC uspUpdatePriceInProductMaster @ProdID ,@PurchasePrice,@SalePrice,@ECP,@SPLPrice,@MRP,@SelectedUomCF ,@PriceOnUomCF ,@MRPOnUomCF  
END  
END  
FETCH NEXT FROM cursor_Temp INTO @ProdID , @UOMID ,@UomGrpID ,@BatchNo ,@PKD ,@Expiry ,@UomQty ,@UomFreeQty,@UomDamageQty ,  
@PurchasePrice ,@SalePrice ,@ECP ,@MRP ,@SPLPrice ,@TaxID ,@BTaxTypeId ,@TaxPercentage ,@GoodsAmt ,@ProdDiscPercent ,  
@TradeDiscPercent ,@AddnlDiscPercent ,@BGrossAmt ,@BTaxAmt ,@BNetAmt ,@InvId ,@InclusiveYesNo ,@ReturnPrice  
END  
CLOSE cursor_Temp  
DEALLOCATE cursor_Temp  
BEGIN --Posting Tamil  
DECLARE @JVID INT  
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal  
IF ISNULL(@TotalGrossAmt,0)>0  
BEGIN --Gross Amt Posting  
-- Puchase Account  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,76,0,(ISNULL(@TotalGrossAmt,0)), 0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0) --(ISNULL(@TotalGrossAmt,0)+ISNULL(@WrightOffAmt,0))  
END  
IF ISNULL(@TotalTaxAmt,0)>0  
BEGIN --Tax Amt Posting  
-- VAT Receivable (Input Tax Credit)  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,113,0,@TotalTaxAmt, 0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,@UID ,GETDATE (),@ScopeID,  
@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@TCSAmt,0)>0  
BEGIN --TCS Amt Posting  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,57,0,@TCSAmt, 0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,@UID ,GETDATE (),@ScopeID,  
@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@TDSAmt,0)>0  
BEGIN --TDS Amt Posting  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,107,@TDSAmt,0, 0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,@UID ,GETDATE (),@ScopeID,  
@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@Frieght,0)>0 BEGIN--Fright  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId ,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,39,0,ISNULL(@Frieght,0),0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
  
IF ISNULL(@OtherChargeAmt,0)>0  
BEGIN--Other Charges  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,61,0,ISNULL((@OtherChargeAmt),0),0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@OtherChargeAmt,0)<0  
BEGIN  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,61,ISNULL(-(@OtherChargeAmt),0),0,0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@WrightOffAmt,0)>0 -- Writeoff Amount Gives Positive (+)  
BEGIN  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,117,0,ISNULL((@WrightOffAmt),0),0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@WrightOffAmt,0)<0 -- Writeoff Amount Gives Negative (-)  
BEGIN  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,117,ISNULL(-(@WrightOffAmt),0),0,0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@TotalNetAmt,0)>0  
BEGIN --Net Amt Posting  
--Remove Round Of From Net Amount  
DECLARE @RAmt DECIMAL (25,6)  
SET @RAmt=-1*ISNULL(@RoundOffAmt,0)  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,@Accid,ISNULL(@TotalNetAmt,0)+@RAmt,0, 0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal  
IF ISNULL(@RoundOffAmt,0)<>0  
BEGIn --Round Off Amt Posting  
IF ISNULL(@RoundOffAmt,0)>0  
BEGIN  
--Round Value Positive(+)  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate,@GRNRefNo ,82,0,@RoundOffAmt,0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
--Opposite Vendor Account Id  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue ,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,@Accid,@RoundOffAmt,0,0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
IF ISNULL(@RoundOffAmt,0)<0  
BEGIN  
--Opposite Vendor Account Id  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,@Accid,0,ABS(@RoundOffAmt),0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
--Round Value Negative(-)  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate ,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,82,ABS(@RoundOffAmt),0,0,'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,  
@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
  
END  
END  
IF(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0))>0  
BEGIN  
SELECT @JVID=ISNULL(MAX(JVID),0)+1 FROM tblFAJournal  
--All Discount Sum Of posting  
--Purchase Account  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate,TransId ,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,76,0,(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0)),0,  
'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
--Discout On Purchase  
INSERT INTO tblFAJournal([DocID],[DocPrefix],[DocValue],[DocDate],[DocRef],[AccountID],[Credit],[Debit],[Balance],[Remarks],[Narration],[Status],  
CBy ,CDate ,TransId,UDFId,UDFDocId,UDFDocPrefix,UDFDocValue,JVID,Adjusment)  
VALUES (@DocId, 1, @DocValue,@BillDate ,@GRNRefNo ,31,(ISNULL(@TotalAddnlDiscAmt,0) +ISNULL(@TotalProdDiscAmt,0) +ISNULL(@TotalTradeDiscAmt,0)),0, 0,  
'','Purchase Bill',CASE WHEN ISNULL(@ImportStatus,0) = 0 THEN @Status ELSE @ImportStatus END,@UID ,GETDATE (),@ScopeID,@UDFId,@UDFDocId,@UDFDocPrefix,@UDFDocValue,@JVID,0)  
END  
  
END  
--IF @PaymentModeId != 7  
--BEGIN  
--DECLARE @Header tvpCollHeader,@Detail tvpCollDetail,@Mop tvpCollMop,@ReceivedAmt DECIMAL (25,6) ,@BankAccNo NVARCHAR(20),  
--@BankAccId INT ,@CDNumber NVARCHAR(255) ,@CDId INT ,@CDDate NVARCHAR(25),@PayAt NVARCHAR(20),@IFSC NVARCHAR(20),@Bank NVARCHAR(255),  
--@Branch NVARCHAR(255),@NEFTId NVARCHAR(255),@VMId NVARCHAR(20),@VMTransID NVARCHAR(20),@PaymentCount INT, @PaymentIndex INT,@InvCurrentAmt DECIMAL (25,6),@Balance DECIMAL (25,6),@VisaPern DECIMAL (25,6), @VisaAmt DECIMAL (25,6)  
  
--SET @InvCurrentAmt=@TotalNetAmt - ISNULL(@TDSAmt,0);  
----Get Vendor Acc Id  
--SELECT @Accid=FAID FROM tblMasterVendor WHERE id =@VendorId  
----Collection  
--SET @PaymentCount=(SELECT COUNT(*) FROM @tvpTranBillMop)  
--SET @PaymentIndex=1  
--WHILE @PaymentCount >0  
--BEGIN  
--SELECT @PaymentModeId=[PayModeId],@CDId=[ChequeId],@CDNumber=[Cheque_OR_DDNumber_OR_NEFTId],@BankAccNo=[BankAccNo],@BankAccID=[BankAccID],  
--@CDDate=[PMDate],@PayAt=[PayAt],@IFSC=[IfscCode],@Bank=[Bank] ,@Branch=[Branch] ,@ReceivedAmt=[Amt],@Balance=[RecdAmt],@VisaPern = [VisaPern], @VisaAmt = [VisaAmt]  
--FROM @tvpTranBillMop WHERE [SerialNo]=@PaymentIndex  
----Transaction Bill payment detail  
--INSERT INTO tblTran_Sale_Bill_PaymentDetail(TransId,InvId,[PayModeId],[ChequeNo],[Cheque_OR_DDNumber_OR_NEFTId],Acc_OR_PaytermId,[PMDate],[PayAt],[IfscCode],[Bank] ,  
--[Branch] ,[Amt] ,[SerialNo],RecdAmt,Visaper,VisaAmt )VALUES(7,@ScopeID,@PaymentModeId,@CDId,@CDNumber,@BankAccID,@CDDate,@PayAt,@IFSC,@Bank,@Branch,@ReceivedAmt ,@PaymentIndex,@Balance,@VisaPern,@VisaAmt)  
  
--IF @PaymentModeId !=7  
--BEGIN  
----Col Header  
--INSERT INTO @Header VALUES(CONVERT(NVARCHAR(50),@BillDate,103),0 ,@GRNRefNo ,@Accid,@ReceivedAmt ,0,@PaymentModeId,1 ,0,@UID,1,@PaymentIndex,@VisaPern,@VisaAmt)  
----Mop Detail  
--IF @PaymentModeId !=3  
--BEGIN  
--INSERT INTO @Mop VALUES(@Accid,@PaymentModeId,@CDId ,CONVERT(NVARCHAR(50),@CDDate,103),@BankAccId ,@CDNumber,@ReceivedAmt,@IFSC ,@Bank ,@Branch ,@PayAt,@BankAccNo,  
--(CASE WHEN @PaymentModeId =3 THEN NULL ELSE @CDNumber END), @CDId,@PaymentIndex,@Balance)  
--END  
--ELSE  
--BEGIN  
--INSERT INTO @Mop VALUES(@Accid,@PaymentModeId,@CDNumber ,CONVERT(NVARCHAR(50),@CDDate,103),@BankAccId ,'',@ReceivedAmt,@IFSC ,@Bank ,@Branch ,@PayAt,@BankAccNo,  
--(CASE WHEN @PaymentModeId =3 THEN NULL ELSE @CDNumber END), @CDId,@PaymentIndex,@Balance)  
--END  
---- Col Detail  
--INSERT INTO @Detail VALUES(@Accid,7,@DocValue, @ScopeID,@BillDate,ISNULL(@InvCurrentAmt,0),ISNULL(@ReceivedAmt,0),0,0,0,0,0,ISNULL(@ReceivedAmt,0),1,@PaymentIndex)  
----Amount Calculate  
--SET @InvCurrentAmt=@InvCurrentAmt-@ReceivedAmt;  
--END  
--SET @PaymentCount=@PaymentCount-1;  
--SET @PaymentIndex=@PaymentIndex+1;  
--END  
  
---- Get UDN for Payment  
--DECLARE @UDFCount INT,@UDNSingle INT  
--SET @UDFCount = (  
--SELECT COUNT(DISTINCT UDNId) FROM tblMasterUserDefineNoDetail  
--WHERE UDNId IN (SELECT UDNId FROM tblMastERUserDefineNoHeader WHERE TransID=10) AND UserId=@UID  
--)  
--IF ISNULL(@UDFCount,0)=1  
--BEGIN  
--SET @UDNSingle = (SELECT DISTINCT UDNId FROM tblMasterUserDefineNoDetail WHERE UDNId IN (SELECT UDNId FROM tblMasterUserDefineNoHeader WHERE TransId=10)AND UserId=@UID )  
--END  
  
----Payment Implicit Posting  
----EXEC uspManageFullColl 10,@UDNSingle,@Header,@Detail,@Mop,1,0,0,@nAllowNegativeBal,NULL,@tvpSaveDenomination  
  
--ENd  
IF ISNULL(@IFBIll,0)=1  
BEGIN  
IF(ISNULL(@DraftID,0) > 0)  
BEGIN  
UPDATE tblPurchaseDraftHeader SET Status = 8,MBy = @UID,MDate = GETDATE() WHERE ID = @DraftID  
END  
IF(ISNULL(@TempPOID,0) > 0)  
BEGIN  
UPDATE tblPurchaseOrderHeader SET GRNId=@ScopeID,Status=5,Mby=@UID,Mdate=GETDATE() WHERE ID=@TempPOID
END
SELECT @ScopeID AS IdentId  
END  
END TRY  
BEGIN CATCH  
SELECT ERROR_MESSAGE() ,ERROR_PROCEDURE() ,ERROR_LINE()  
END CATCH
GO
/****** Object:  StoredProcedure [dbo].[uspManageUsers]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageUsers]
@Mode INT,@ID smallint = null,@UserName nvarchar(MAX) = null,@Password nvarchar(MAX) = null,@Mobilenumber nvarchar(MAX) = null,@EMailID nvarchar(MAX) = null,
@RoleID smallint = null,@PwdResetCount tinyint = null,@PwdResetTime datetime = null,@LPin int = null,@Active bit = null,@UserID smallint = null
as
begin
BEGIN TRY
IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblUsers WHERE UserName = @UserName) > 0)
BEGIN
RAISERROR('UserName',16,1)
END
IF((SELECT count(*) FROM tblUsers WHERE Mobilenumber = @Mobilenumber and isnull(Mobilenumber,'') != '') > 0)
BEGIN
RAISERROR('MobileNo',16,1)
END
IF((SELECT count(*) FROM tblUsers WHERE EMailID = @EMailID and isnull(EMailID,'') != '') > 0)
BEGIN
RAISERROR('EMailID',16,1)
END
insert into tblUsers(UserName,Password,Mobilenumber,EMailID,RoleID,Active,CBy,CDate)
Values (@UserName,@Password,@Mobilenumber,@EMailID,0,@Active,@UserID, GETDATE())
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
IF((SELECT count(*) FROM tblUsers WHERE UserName = @UserName and ID != @ID) > 0)
BEGIN
RAISERROR('UserName',16,1)
END
IF((SELECT count(*) FROM tblUsers WHERE Mobilenumber = @Mobilenumber and ID != @ID and isnull(@Mobilenumber,'') != '') > 0)
BEGIN
RAISERROR('MobileNo',16,1)
END
IF((SELECT count(*) FROM tblUsers WHERE EMailID = @EMailID and ID != @ID and isnull(EMailID,'') != '') > 0)
BEGIN
RAISERROR('EMailID',16,1)
END
INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Column5,Column6,Column7,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)
(select 29,*,@UserID, GETDATE() from tblUsers where ID = @ID)
UPDATE tblUsers SET UserName = @UserName,Password = @Password, Mobilenumber = @Mobilenumber,EMailID = @EMailID,Active = @Active,MBy = @UserID ,MDate = GETDATE(),
RoleID = @RoleID WHERE ID = @ID
SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT UR.ID,UserName,Password,Mobilenumber,EMailID,RoleID,MR.Name RoleName,PwdResetCount,PwdResetTime,LPin,UR.CBy,UR.Active from tblUsers UR
LEFT JOIN tblMasterRole MR ON MR.ID = UR.RoleID where UR.ID > 1 order by UserName

END
IF(@Mode = 4)
BEGIN
SELECT * from tblUsers where ID = @ID
END
IF(@Mode = 5)
BEGIN
update tblUsers set Active = 1 where ID = @ID
END
IF(@Mode = 6)
BEGIN
SELECT * from tblUsers where Active = 1 and UserName = @UserName and Password = @Password
END
IF(@Mode = 7)
BEGIn
if(isnull(@ID,0) = 1)
begin
SELECT * from tblMasterRole order by Name
end
else if(isnull(@ID,0) >= 2)
begin
SELECT * from tblMasterRole WHERE ID > 2 order by Name
end
END
IF(@Mode = 8)
BEGIN
SELECT * from tblUsers where UserName = @UserName and EMailID = @Password
END
IF(@Mode = 9)
BEGIN
update tblUsers set Password = @Password where UserName = @UserName and EMailID = @EMailID
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspManageVehicle]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspManageVehicle]        
@Mode INT,@ID tinyint = null,@VehicleNo nvarchar(30) = null,@VehicleName nvarchar(255) = null,@DOPurchase date = null,        
@InsuranceDate date = null,@InsuranceExpire date = null,@FCDate date = null,@Active bit = null,@UserID smallint = null        
as            
begin            
BEGIN TRY             
set @VehicleNo = (select dbo.ProperCase(@VehicleNo))       
set @VehicleName = (select dbo.ProperCase(@VehicleName))       
IF(@Mode = 1)            
BEGIN            
IF((SELECT count(*) FROM tblMasterVehicle WHERE VehicleNo = @VehicleNo) > 0)            
BEGIN            
RAISERROR('Already Exists',16,1)            
END            
 set @VehicleNo =(select dbo.ProperCase(@VehicleNo))       
 set @VehicleName = (select dbo.ProperCase(@VehicleName))     
insert into tblMasterVehicle(VehicleNo,VehicleName,DOPurchase,InsuranceDate,InsuranceExpire,FCDate,Active,CBy,CDate)             
Values (@VehicleNo,@VehicleName,@DOPurchase,@InsuranceDate,@InsuranceExpire,@FCDate,@Active,@UserID, GETDATE())            
SELECT SCOPE_IDENTITY()            
END            
IF(@Mode = 2)            
BEGIN            
IF((SELECT count(*) FROM tblMasterVehicle WHERE VehicleNo = @VehicleNo AND ID != @ID) > 0)            
BEGIN            
RAISERROR('Already Exists',16,1)            
END  
  
INSERT INTO tblMasterHistory (FormID,ID,Name,Column1,Column2,Column3,Column4,Column5,Active,CBy,CDate,MBy,MDate,HisCBy,HisCDate)  
(select 19,*,@UserID, GETDATE() from tblMasterVehicle where ID = @ID)  
  
 set @VehicleNo =(select dbo.ProperCase(@VehicleNo))       
 set @VehicleName = (select dbo.ProperCase(@VehicleName))     
UPDATE tblMasterVehicle SET VehicleNo = @VehicleNo,VehicleName = @VehicleName,DOPurchase = @DOPurchase,InsuranceDate = @InsuranceDate,        
InsuranceExpire = @InsuranceExpire,FCDate = @FCDate,Active = @Active,MBy = @UserID ,MDate = GETDATE() WHERE ID = @ID            
SELECT @ID            
END            
IF(@Mode = 3)            
BEGIN            
SELECT * from tblMasterVehicle order by VehicleNo            
END            
IF(@Mode = 4)            
BEGIN            
SELECT * from tblMasterVehicle where VehicleNo = @VehicleNo            
END            
END TRY                  
BEGIN CATCH                  
SELECT ERROR_MESSAGE() MSG,ERROR_LINE() LINE,ERROR_PROCEDURE() [PROC]                  
END CATCH                  
END 
GO
/****** Object:  StoredProcedure [dbo].[uspManageVendorMaster]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspManageVendorMaster]
@Mode int,@ID int = null,@Code nvarchar(255) = null,@Name nvarchar(255) = null,@Billadd1 nvarchar(MAX) = null,@Billadd2 nvarchar(MAX) = null,
@Billadd3 nvarchar(MAX) = null,@Shipadd1 nvarchar(MAX) = null,@shipadd2 nvarchar(MAX) = null,@Shipadd3 nvarchar(MAX) = null,@Pincode nvarchar(15) = null,
@ContactPerson nvarchar(255) = null,@Ph1 nvarchar(25) = null,@Ph2 nvarchar(25) = null,@Mob1 nvarchar(25) = null,@Mob2 nvarchar(25) = null,@Email nvarchar(255) = null,
@PANNumber nvarchar(25) = null,@AadharNo nvarchar(25) = null,@DLNo20 nvarchar(25) = null,@DLNo21 nvarchar(25) = null,@FSSAINo nvarchar(30) = null,@StateID tinyint = null,
@GSTIN nvarchar(40) = null,@CreditTermID tinyint = null,@PaymentModeID tinyint = null,@TaxTypeID tinyint = null,
@FAID int = null,@WeekCycle TINYINT = null,@Active smallint = null,@UserID smallint = null,@Rating TINYINT = NULL
AS
BEGIN
BEGIN TRY
DECLARE @ActiveCheck NVARCHAR(255), @SUNDRYDEBTORS INT ,@FATYPE INT,@AccID INT ,@ACCOUNTID INT,@CHECKID INT,@cstdate DATE,@ExistCount INT
SELECT @SUNDRYDEBTORS = FAGroup FROM tblFAGroup WHERE AccountGroupName='Sundry Creditors'

IF(@Mode = 1)
BEGIN
IF((SELECT count(*) FROM tblMasterVendor WHERE Code = @Code) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterVendor WHERE Name = @Name) > 0)
BEGIN
RAISERROR('Name',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName',16,1)
END

set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))

INSERT INTO tblFAAccount(AccountName,AccountGroup,OpeningBalance,FATypeID,CBy,CDate,UserAccount,PANNumber,Active)
VALUES(@name,@SUNDRYDEBTORS,0,1,@UserID,GETDATE(),0,@PANNumber,@Active)

SELECT @FAID = FAID FROM tblFAAccount WHERE AccountName = @Name

INSERT INTO tblMasterVendor(Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,
DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,TaxTypeID,FAID,WeekCycle,Active,CBy,CDate,Rating) VALUES
(@Code,@Name,@Billadd1,@Billadd2,@Billadd3,@Shipadd1,@shipadd2,@Shipadd3,@Pincode,@ContactPerson,@Ph1,@Ph2,@Mob1,@Mob2,@Email,@PANNumber,@AadharNo,@DLNo20,@DLNo21,@FSSAINo,
@StateID,@GSTIN,@CreditTermID,@PaymentModeID,@TaxTypeID,@FAID,@WeekCycle,@Active,@UserID,GETDATE(),@Rating)
SELECT SCOPE_IDENTITY()
END
IF(@Mode = 2)
BEGIN
select @ACCOUNTID = FAID from tblMasterVendor where ID = @ID
IF((SELECT count(*) FROM tblMasterVendor WHERE Code = @Code AND ID != @ID) > 0)
BEGIN
RAISERROR('Code',16,1)
END
IF((SELECT count(*) FROM tblMasterVendor WHERE Name = @Name AND ID != @ID) > 0)
BEGIN
RAISERROR('Name',16,1)
END
SELECT @ExistCount=COUNT(FAID) FROM tblFAAccount WHERE AccountName=@name and FAID != @ACCOUNTID
IF(@ExistCount>0)
BEGIN
RAISERROR ('AccountName',16,1)
END

--Previous ID data Posting in History table
insert into tblMasterCustomerVendorHistory (FormID,ID,Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,
ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,AadharNo,DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,
TaxTypeID,OSValue,FAID,PriceTypeWeekCycle,Active,CBy,CDate,MBy,MDate,Rating,HisCBy,HisCDate)
select 27,ID,Code,Name,Billadd1,Billadd2,Billadd3,Shipadd1,shipadd2,Shipadd3,Pincode,ContactPerson,Ph1,Ph2,Mob1,Mob2,Email,PANNumber,
AadharNo,DLNo20,DLNo21,FSSAINo,StateID,GSTIN,CreditTermID,PaymentModeID,TaxTypeID,OSValue,FAID,WeekCycle,Active,CBy,
CDate,MBy,MDate,Rating,@UserID,GETDATE() from tblMasterVendor where ID = @ID

set @Code =(select dbo.ProperCase(@Code))
set @Name = (select dbo.ProperCase(@Name))
UPDATE tblFAAccount
SET AccountName=@name,AccountGroup=@SUNDRYDEBTORS,MBy=@UserID,MDate=GETDATE(),UserAccount=0,PANNumber=@PANNumber,Active = @Active
WHERE FAID=@ACCOUNTID

UPDATE tblMasterVendor SET Code = @Code,Name = @Name,Billadd1 = @Billadd1,Billadd2 = @Billadd2,Billadd3 = @Billadd3,Shipadd1 = @Shipadd1,shipadd2 = @shipadd2,
Shipadd3 = @Shipadd3,Pincode = @Pincode,ContactPerson = @ContactPerson,Ph1 = @Ph1,Ph2 = @Ph2,Mob1 = @Mob1,Mob2 = @Mob2,Email = @Email,PANNumber = @PANNumber,
AadharNo = @AadharNo,DLNo20 = @DLNo20,DLNo21 = @DLNo21,FSSAINo = @FSSAINo,StateID = @StateID,GSTIN = @GSTIN,CreditTermID = @CreditTermID,
PaymentModeID = @PaymentModeID,TaxTypeID = @TaxTypeID,FAID = @FAID,WeekCycle = @WeekCycle,Active = @Active,MBy = @UserID,MDate = GETDATE(),Rating = @Rating WHERE ID=@ID

SELECT @ID
END
IF(@Mode = 3)
BEGIN
SELECT TC.ID,TC.Code,TC.Name,Ph1,TC.Mob1 MobNo,TC.GSTIN,RT.RatingName,TC.Active FROM tblMasterVendor TC
LEFT JOIN tblRatings RT ON RT.ID = TC.Rating
ORDER BY TC.Code,TC.Name
END
IF(@Mode = 4)
BEGIN
SELECT * from tblMasterVendor WHERE ID = @ID
END
IF(@Mode = 5)
BEGIN
select 1 FType,'Tax Type' Form,TaxTypeID,TaxTypeName Descriptions from tblMasterTaxType WHERE Active = 1
union
select 2 FType,'Payment Mode' Form,ID,PaymentMode Descriptions from tblPaymentMode WHERE Active = 1
union
select 3 FType,'Credit Term' Form,ID,Name Descriptions from tblMasterCreditTerm WHERE Active = 1
union
select 4 FType,'State Names' Form,StateID,StateName Descriptions from tblGSTStateNameandCode WHERE Active = 1
union
select 5 FType,'Rating' Form,ID,RatingName Descriptions from tblRatings WHERE Active = 1
order by FType,Descriptions
END
END TRY
BEGIN CATCH
SELECT ERROR_MESSAGE(),ERROR_PROCEDURE(), ERROR_LINE()
END CATCH
END
GO
/****** Object:  StoredProcedure [dbo].[uspMenuPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[uspMenuPermission] 2,1,1          
CREATE PROCEDURE [dbo].[uspMenuPermission]                
@Mode INT,@RoleID INT = NULL,@UserID INT=NULL          
AS                              
BEGIN                            
IF ISNULL(@Mode,0)=1                
BEGIN                
SELECT MenuId,MenuName,MenuParentId,MenuChildLevel,MenuTree,LocationName,Permission,IsMenu,FormID,EncMenuID,EncMenuName,EncFormID
FROM tblMenus WHERE MenuParentId=0 ORDER BY MenuTree,DisplayIndex ASC                
END                
ELSE                
BEGIn                
DECLARE @PERMISSION AS TABLE (USERID INT)                            
INSERT INTO @PERMISSION SELECT PermissionFormId FROM tblRolePermissions WHERE Role=@RoleID                  
BEGIN                             
IF isnull(@RoleID,0) = 1 AND ISNULL(@UserID,0) = 1          
BEGIN             
SELECT MenuId,MenuName,MenuParentId,MenuChildLevel,MenuTree,LocationName,Permission,IsMenu,FormID,EncMenuID,EncMenuName,EncFormID             
FROM tblMenus WHERE MenuParentId!=0                
ORDER BY MenuTree ASC,DisplayIndex ASC           
END                  
ELSE                  
BEGIN                  
SELECT MenuId,MenuName,MenuParentId,MenuChildLevel,MenuTree,LocationName,Permission,IsMenu,FormID,EncMenuID,EncMenuName,EncFormID      
FROM tblMenus WHERE MenuId IN (SELECT * FROM @PERMISSION) AND MenuParentId!=0                           
ORDER BY MenuTree ASC,DisplayIndex ASC           
END                            
END                  
END                
END 
GO
/****** Object:  StoredProcedure [dbo].[uspRepAccountLedger]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspRepAccountLedger '','2024-08-01','2024-12-01'  
create proc [dbo].[uspRepAccountLedger]
@AccountName nvarchar(max) = null,@FromDate date = null,@ToDate DATE = NULL  
as    
begin    
DECLARE @strQuery NVARCHAR(MAX) = ''  
SET @strQuery = '  select DS.TransName,DocID,CONVERT(nvarchar,FAJ.DocDate,103) Date,FAA.AccountName,Credit,Debit,Remarks,Narration,STS.Description Status from tblFAJournal FAJ
JOIN tblFAAccount FAA ON FAA.FAID = FAJ.AccountID
  JOIN tblDocumentSeries DS ON DS.TransID = FAJ.DocPrefix
  JOIN tblStatus STS ON STS.ID = FAJ.Status
 WHERE FAA.Active IN (0,1) '  
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND FAJ.DocDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END  
SET @strQuery += CASE WHEN ISNULL(@AccountName,'') = '' THEN '' ELSE ' AND FAA.AccountName = '+''''+@AccountName +'''' END  
EXEC(@strQuery)  
end  
GO
/****** Object:  StoredProcedure [dbo].[uspRepItemLedger]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspRepItemLedger 7,'','2024-08-01','2024-12-31'      
CREATE proc [dbo].[uspRepItemLedger]    
@BranchID int = 0,@Product nvarchar(max) = null,@FromDate date = null,@ToDate DATE = NULL      
as        
begin        
DECLARE @strQuery NVARCHAR(MAX) = ''      
SET @strQuery = '   select DS.TransName,CONVERT(NVARCHAR,PV.TransDate,103) Date,MBO.Name Branch,MP.Code,MP.Name,PV.BatchNumber,PV.PKDDate,PV.ExpiryDate,    
PV.RecdQty,PV.RecdFreeQty,PV.RecdDmgQty,PV.ActualQty,PV.ActualFreeQty,PV.ActualDmgQty,PV.PRQty,PV.PRFreeQty,PV.PRDmgQty,PV.SRQty,    
PV.SRFreeQty,PV.SRDmgQty,PV.InOutQty,PV.InOutFree,PV.PurchasePrice,PV.SalesPrice,PV.ECP,PV.MRP,PV.SPLPrice,    
PV.MRPONPrice,PV.ReturnPrice,MT.TaxName,MTT.TaxTypeName,PV.TaxValue    
 from tblProductInventory PV    
  JOIN tblMasterProduct MP ON MP.ID = PV.ProdID    
  JOIN tblDocumentSeries DS ON DS.TransID = PV.TransID    
  JOIN tblMasterTax MT ON MT.TaxID = PV.TaxId    
  JOIN tblMasterTaxType MTT ON MTT.TaxTypeID = PV.TaxTypeId  
  LEFT JOIN tblMasterBranchOffice MBO ON MBO.ID = PV.BranchID  
 WHERE MP.Active IN (0,1) and (ActualQty > 0 OR ActualFreeQty > 0 OR ActualDmgQty > 0) '      
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND PV.TransDate BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate) + '''' END      
SET @strQuery += CASE WHEN ISNULL(@Product,'') = '' THEN '' ELSE ' AND MP.Name = '+''''+@Product +'''' END     
SET @strQuery += CASE WHEN ISNULL(@BranchID,0) = '' THEN '' ELSE ' AND PV.BranchID = '+''''+CONVERT(NVARCHAR,@BranchID)+'''' END     
EXEC(@strQuery)      
end      
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterBankData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[uspRepMasterBankData]
@BankName nvarchar(max) = null,@UserID INT = NULL  
as  
begin  
if(isnull(@BankName,'') != '')  
begin  
select Name [Bank Name],case when MB.Active = 1 then 'Yes' ELSE 'No' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MB.CDate) [Create Date] from tblMasterBank MB  
JOIN tblUsers MU ON MU.ID = MB.CBy  
LEFT JOIN tblUsers MUM ON MUM.ID = MB.MBy  
where Name = @BankName AND (MB.CBy = CASE WHEN ISNULL(@UserID,0) = 0 THEN MB.CBy ELSE @UserID END)  order by Name  
end  
else  
begin  
select Name [Bank Name],case when MB.Active = 1 then 'Yes' ELSE 'No' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MB.CDate) [Create Date] from tblMasterBank MB 
JOIN tblUsers MU ON MU.ID = MB.CBy  
LEFT JOIN tblUsers MUM ON MUM.ID = MB.MBy  
WHERE (MB.CBy = CASE WHEN ISNULL(@UserID,0) = 0 THEN MB.CBy ELSE @UserID END) order by Name  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterBeatData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[uspRepMasterBeatData]  
@BeatName nvarchar(max) = null,@UserID INT = NULL  
as  
begin  
if(isnull(@BeatName,'') != '')  
begin  
select Name [Bank Name],case when MB.Active = 1 then 'Yes' ELSE 'No' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MB.CDate) [Create Date]
from tblMasterBeat MB 
JOIN tblUsers MU ON MU.ID = MB.CBy  
LEFT JOIN tblUsers MUM ON MUM.ID = MB.MBy  
where Name = @BeatName AND (MB.CBy = CASE WHEN ISNULL(@UserID,0) = 0 THEN MB.CBy ELSE @UserID END)  order by Name  
end  
else  
begin  
select Name [Bank Name],case when MB.Active = 1 then 'Yes' ELSE 'No' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MB.CDate) [Create Date] 
from tblMasterBeat MB 
JOIN tblUsers MU ON MU.ID = MB.CBy  
LEFT JOIN tblUsers MUM ON MUM.ID = MB.MBy  
WHERE (MB.CBy = CASE WHEN ISNULL(@UserID,0) = 0 THEN MB.CBy ELSE @UserID END) order by Name  
end  
end
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterProductData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspRepMasterProductData '','','',''  
CREATE proc [dbo].[uspRepMasterProductData]  
@ManufName nvarchar(max) = null,@BrandName nvarchar(max) = null,@CategoryName nvarchar(max) = null,@ProductName nvarchar(max) = null
as    
begin    

DECLARE @strQuery NVARCHAR(MAX) = ''  
SET @strQuery = ' SELECT MP.Code,MP.Name,MP.EAN,MF.Name [Mfr Name],MB.Name [Brand Name],MC.Name [Category Name],MUB.Name [Base UOM],MUP.Name [Purcase UOM],MUS.Name [Sales UOM],
MT.TaxName Tax,PurchasePrice,SalesPrice,ECP,SPLPrice,MRP,ReturnPrice,case when MP.TrackInventory = 1 then ''Yes'' ELSE ''No'' END [Track Inventory],
case when MP.TrackBatch = 1 then ''Yes'' ELSE ''No'' END [Track Batch],case when MP.TrackSerial = 1 then ''Yes'' ELSE ''No'' END [Track Serial],
case when MP.TrackPDK = 1 then ''Yes'' ELSE ''No'' END [Track PDK],case when MP.DateFormat = 1 then ''DMY'' ELSE ''MY'' END [Date Format],MOH,MOQ
,MV.Name [Vendor Name],case when MP.Active = 1 then ''Yes'' ELSE ''No'' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MP.CDate) [Create Date]  
from tblMasterProduct MP      
JOIN tblMasterManufacturer MF ON MF.ID = MP.MfrID      
JOIN tblMasterBrand MB ON MB.ID = MP.BrandID      
JOIN tblMasterCategory MC ON MC.ID = MP.CategoryID      
join tblMasterTax MT ON MT.TaxID = MP.SalesTaxID
join tblMasterUOM MUB ON MUB.ID = MP.BaseUomID
join tblMasterUOM MUP ON MUP.ID = MP.PurchaseUomID
join tblMasterUOM MUS ON MUS.ID = MP.PurchaseUomID
JOIN tblUsers MU ON MU.ID = MP.CBy    
left JOIN tblMasterVendor MV ON MV.ID = MP.VendorID  WHERE MP.Active IN (0,1) '
SET @strQuery += CASE WHEN ISNULL(@ManufName,'') = '' THEN '' ELSE ' AND MF.Name = '+''''+@ManufName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@BrandName,'') = '' THEN '' ELSE ' AND MB.Name = '+''''+@BrandName +'''' END 
SET @strQuery += CASE WHEN ISNULL(@CategoryName,'') = '' THEN '' ELSE ' AND MC.Name = '+''''+@CategoryName +'''' END  
SET @strQuery += CASE WHEN ISNULL(@ProductName,'') = '' THEN '' ELSE ' AND MP.Name = '+''''+@ProductName +'''' END 
EXEC(@strQuery)
end 
GO
/****** Object:  StoredProcedure [dbo].[uspRepMasterSalesmanData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--uspRepMasterSalesmanData 'NARESH','GROUP 1','2024-08-01','2024-12-01'
CREATE proc [dbo].[uspRepMasterSalesmanData]
@SalesmanName nvarchar(max) = null,@SalesmanGrpName nvarchar(max) = null,@FromDate date = null,@ToDate DATE = NULL
as  
begin  
DECLARE @strQuery NVARCHAR(MAX) = ''
SET @strQuery = ' select MS.Name [Salesman Name],MSG.Name [Salesman Group],CONVERT(nvarchar,DOJ,103) DOJ,MS.MobileNo,case when MS.Active = 1 then ''Yes'' ELSE ''No'' end Active,MU.UserName [Created By],CONVERT(NVARCHAR,MS.CDate) [Create Date]
from tblMasterSalesman MS
LEFT JOIN tblMasterSalesmanGroup MSG ON MSG.ID = MS.SalesmanGroupID
JOIN tblUsers MU ON MU.ID = MS.CBy  
LEFT JOIN tblUsers MUM ON MUM.ID = MS.MBy WHERE MS.Active IN (0,1) '
SET @strQuery += CASE WHEN ISNULL(@FromDate,'') = '' OR ISNULL(@ToDate,'') = '' THEN '' ELSE ' AND MS.DOJ BETWEEN '+''''+CONVERT(NVARCHAR,@FromDate,105) +''' AND '+''''+CONVERT(NVARCHAR,@ToDate,105) + '''' END
SET @strQuery += CASE WHEN ISNULL(@SalesmanName,'') = '' THEN '' ELSE ' AND MS.Name = '+''''+@SalesmanName +'''' END
SET @strQuery += CASE WHEN ISNULL(@SalesmanGrpName,'') = '' THEN '' ELSE ' AND MSG.Name = '+''''+@SalesmanGrpName +'''' END
EXEC(@strQuery)
end

GO
/****** Object:  StoredProcedure [dbo].[uspReportPermission]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--[uspReportPermission] 1,1,1        
CREATE PROCEDURE [dbo].[uspReportPermission]              
@Mode INT,@RoleID INT = NULL,@UserID INT=NULL        
AS                            
BEGIN                          
IF ISNULL(@Mode,0)=1              
BEGIN              
SELECT ReportID,ReportName,ParentId,'Reports' LocationName,ProcedureName
FROM tblReportViewer WHERE ParentId=0 and Active = CASE WHEN @RoleID = 1 THEN Active ELSE 1 END ORDER BY ParentID,ReportName ASC             
END              
ELSE              
BEGIn              
                          
IF isnull(@RoleID,0) = 1 AND ISNULL(@UserID,0) = 1        
BEGIN           
SELECT ReportID,ReportName,ParentId,'Reports' LocationName,ProcedureName
FROM tblReportViewer WHERE ParentId!=0 ORDER BY ParentID,ReportName ASC          
END                
ELSE                
BEGIN                
SELECT ReportID,ReportName,ParentId,'Reports' LocationName,ProcedureName
FROM tblReportViewer WHERE ParentId!=0 and Active = 1 ORDER BY ParentID,ReportName ASC          
END                          
END              
END 
GO
/****** Object:  StoredProcedure [dbo].[uspSaveSampData]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[uspSaveSampData]
@Name nvarchar(max) NULL,
@MobileNumber nvarchar(max) NULL,
@EMailAddress nvarchar(max) NULL,
@PANNumber nvarchar(max) NULL,
@AadhaarNumber nvarchar(max) NULL,
@Address nvarchar(max) NULL,
@Pincode nvarchar(max) NULL,
@FSSAINo nvarchar(max) NULL,
@ServiceTaxNo nvarchar(max) NULL,
@GSTIN nvarchar(max) NULL,
@HSNCode nvarchar(max) NULL,
@SACcode nvarchar(max) NULL,
@BankAccountNo nvarchar(max) NULL,
@IFSCNo nvarchar(max) NULL,
@MICR nvarchar(max) NULL
as
begin
insert into tblSampValidation values (@Name,
@MobileNumber,
@EMailAddress,
@PANNumber,
@AadhaarNumber,
@Address,
@Pincode,
@FSSAINo,
@ServiceTaxNo,
@GSTIN,
@HSNCode,
@SACcode,
@BankAccountNo,
@IFSCNo,
@MICR)
end
GO
/****** Object:  StoredProcedure [dbo].[uspSaveTranGSTInfo]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspSaveTranGSTInfo]      
@tvpTranGSTInfo tvpTranGSTInfo READONLY      
AS      
BEGIN      
DECLARE @Serial INT = 1, @Count INT = (SELECT COUNT(*) FROM @tvpTranGSTInfo)      
WHILE ISNULL(@Count,0) > 0      
BEGIN      
DECLARE @TransID INT,@TransIdentID INT,@ProdID INT,@TaxID INT,@GSTTaxTypeID INT,  
@TaxTypeID INT,@TaxCompID INT,@TaxCompPern DECIMAL(25,6),      
@TaxValue DECIMAL(25,6),@GrossAmount DECIMAL(25,6),@TransSerial INT  
      
SELECT @TransID=TransID,@TransIdentID=TransIdentID,@ProdID=ProdID,@TaxID=TaxID,@GSTTaxTypeID=GSTTaxTypeID,@TaxTypeID=TaxTypeID,      
@TaxCompID=TaxCompID,@TaxCompPern=TaxCompPern,@TaxValue=TaxValue,@GrossAmount=GrossAmount,@TransSerial=TransSerial    
FROM @tvpTranGSTInfo WHERE SerialNo = @Serial      
      
INSERT INTO tblTransGSTInfo  
(TransID,TransIdentID,ProdID,TaxID,TaxTypeID,TaxCompID,TaxCompPern,TaxValue,GrossAmt,Serial,GSTTaxTypeID)      
VALUES      
(@TransID,@TransIdentID,@ProdID,@TaxID,@TaxTypeID,@TaxCompID,@TaxCompPern,@TaxValue,@GrossAmount,@TransSerial,@GSTTaxTypeID)      
      
SET @Serial = @Serial + 1      
SET @Count = @Count - 1      
END      
END  
GO
/****** Object:  StoredProcedure [dbo].[uspUpdateMapRoleMenus]    Script Date: 12/02/2025 08:18:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[uspUpdateMapRoleMenus]      
@Mode INT,@MapUserID int, @UserID INT,@PermissionID INT=NULL,@Index INT      
AS      
BEGIN        
IF @UserID=1            
BEGIn           
 IF @Index = 1      
 BEGIN            
  --UPDATE tblMastMenus SET Permission=0         
  DELETE FROM tblRolePermissions WHERE Role =@MapUserID          
 END      
 IF @Mode = 1      
 BEGIN      
  UPDATE tblMenus SET Permission =1 WHERE MenuId=@PermissionID          
  INSERT INTO tblRolePermissions(Role,PermissionFormId,CBy,CDate)                
  VALUES (@MapUserID,@PermissionID,@UserID,GETDATE())             
 END      
END             
ELSE            
BEGIN          
 IF @Index = 1            
 BEGIN          
  DELETE FROM tblRolePermissions WHERE Role =@MapUserID               
 END        
 IF @Mode = 1      
 BEGIN          
  INSERT INTO tblRolePermissions (Role,PermissionFormId,CBy,CDate)                
  VALUES (@MapUserID,@PermissionID,@UserID,GETDATE())            
 END      
END       
END
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[40] 4[20] 2[20] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "FA"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 136
               Right = 214
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "FAG"
            Begin Extent = 
               Top = 6
               Left = 252
               Bottom = 136
               Right = 451
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FACNAccountNames'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'FACNAccountNames'
GO

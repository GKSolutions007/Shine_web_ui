namespace ShineWeb.Helpers
{
    /// <summary>
    /// Named constants for the permission MenuID magic numbers that are otherwise
    /// scattered as raw integers across ~100 controllers (e.g. dtPermission.Select("MenuID = 221")).
    ///
    /// Centralising them here gives a single, documented place to see what each number means
    /// and prevents silent breakage if a controller references the wrong number.
    ///
    /// NOTE: These values mirror the MenuID rows in the database. If a MenuID changes on the
    /// DB side, update it here in one place.
    /// </summary>
    public static class PermissionMenuIds
    {
        // Transaction-level toggles
        public const int EnableBranch = 221;
        public const int PurchaseEnableSave = 254;
        public const int InvoiceEnableSave = 256;
        public const int PurchaseEditPrice = 319;
        public const int InvoiceEditPrice = 321;

        // Draft handling
        public const int PurchaseDraftModify = 382;
        public const int PurchaseDraftCancel = 383;
        public const int InvoiceDraftModify = 388;
        public const int InvoiceDraftCancel = 389;

        // Paid / cross-transaction
        public const int EnablePaid = 481;
        public const int PurchaseOrderCrossTran = 521;
        public const int QuotationCrossTran = 522;
        public const int OrderTakenCrossTran = 523;

        // Home screen cards
        public const int HomeCollectionDetail = 303;
        public const int HomeChequeDetail = 304;
        public const int HomeTransactionVariant = 309;
        public const int HomeBalances = 397;
        public const int HomeQuickAccess = 398;
        public const int HomePendingDraft = 399;
        public const int HomeTransactionSummary = 400;
        public const int HomeBrandSummary = 553;
    }
}

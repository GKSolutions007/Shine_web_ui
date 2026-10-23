const redirectpermissionMap = {
    1: { menuID: "135", menuName: "View Purchase Bill" },
    2: { menuID: "163", menuName: "View Automatic Indent" },
    3: { menuID: "169", menuName: "View Purchase Order" },
    4: { menuID: "157", menuName: "View Credit Note" },
    5: { menuID: "175", menuName: "View Debit Note" },
    6: { menuID: "181", menuName: "View Payable Voucher" },
    7: { menuID: "187", menuName: "View Receivable Voucher" },
    8: { menuID: "193", menuName: "View Contra" },
    9: { menuID: "199", menuName: "View Journal Entry" },
    10: { menuID: "205", menuName: "View Other Collection" },
    11: { menuID: "211", menuName: "View Other Payment" },
    12: { menuID: "218", menuName: "View Purchase Return" },
    13: { menuID: "152", menuName: "View Inventory Adjustment" },
    14: { menuID: "148", menuName: "View Quotation" },
    15: { menuID: "227", menuName: "View Invoice" },
    16: { menuID: "234", menuName: "View Sales Return" },
    19: { menuID: "251", menuName: "View Collection" },
    18: { menuID: "246", menuName: "View Payment" },
    21: { menuID: "284", menuName: "View Assign Invoices" },
    22: { menuID: "330", menuName: "View Inventory Conversion" },
    23: { menuID: "501", menuName: "View Delivery" } 
};
var baseURL = document.getElementById("hdnApiurl").value;
function OpenTransactionDocument(dTransID, DocID) {
    $.ajax({
        url: baseURL + "quicaccessdocument/validate",
        type: 'get',
        contentType: 'json',
        data: { TransID: dTransID, strDocID: DocID },
        xhrFields: {
            withCredentials: true
        },
        success: function (data) {
            $.each(data, function (i, items) {
                if (items.MsgID == "0") {
                    const permission = redirectpermissionMap[dTransID];
                    if (permission && !checkAddEditPermission(permission.menuID)) {
                        showErrorSnackbar(
                            `You don't have permission for &ensp;<h4><code>${permission.menuName}</code></h4>`
                        );
                        return;
                    }       
                    if (dTransID == 1) {
                        var permsLocName = ReturnMenuLocationName(131);
                        var RedirectLocName = permsLocName || "PurchaseBill";
                        window.open(
                            RedirectLocName + '?name=Vd%2B%2BrU8QQpt1lN1iIJW1a%2FK0VGZeYK0pqK2Sc7MnuHQ%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 2) {
                        var permsLocName = ReturnMenuLocationName(159);
                        var RedirectLocName = permsLocName || "AutomaticIndent";
                        window.open(
                            RedirectLocName + '?name=w2ZCPJkGFF0AoGvRO1%2BMNrYg%2FTlGSP7RFKOTKnKk7TZy%2BjK6iu0iUfEo8qMSw%2BYi&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 3) {
                        var permsLocName = ReturnMenuLocationName(165);
                        var RedirectLocName = permsLocName || "PurchaseOrder";
                        window.open(
                            RedirectLocName + '?name=Vd%2B%2BrU8QQpt1lN1iIJW1a5vMQ8aDbizObKKScceojgs%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 4) {//Credit Note
                        var permsLocName = ReturnMenuLocationName(153);
                        var RedirectLocName = permsLocName || "CreditDebitnote";
                        window.open(
                            RedirectLocName + '?name=nBxUn%2FtpXKqXVndiW9mojOigG9qCNPC9PrJE0uE0x%2FI%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 5) {//Debit Note
                        var permsLocName = ReturnMenuLocationName(171);
                        var RedirectLocName = permsLocName || "CreditDebitnote";
                        window.open(
                            RedirectLocName + '?name=MKxJsHy9h07aqMpiVzgwadc8buUGPTNEEd4sx8%2BnI7Q%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 6) {//Payable Voucher
                        var permsLocName = ReturnMenuLocationName(177);
                        var RedirectLocName = permsLocName || "PayableReceivable";
                        window.open(
                            RedirectLocName + '?name=dpntkBuON0CBaPci%2F0pcMiDLtIuObkSLdZqyRGdFwI0%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 7) {//Receivable Voucher
                        var permsLocName = ReturnMenuLocationName(183);
                        var RedirectLocName = permsLocName || "PayableReceivable";
                        window.open(
                            RedirectLocName + '?name=9j780Yb8yqN6RZOxup%2FJ22C89VGOWPP51vwcuj6UAelypRfEnWRXac9RzklPJU96&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 8) {//contra
                        var permsLocName = ReturnMenuLocationName(189);
                        var RedirectLocName = permsLocName || "Contra";
                        window.open(
                            RedirectLocName + '?name=s6yomdGRelZM7YQpcYKfqg%3D%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 9) {//Jornal Entry
                        var permsLocName = ReturnMenuLocationName(195);
                        var RedirectLocName = permsLocName || "JournalEntry";
                        window.open(
                            RedirectLocName + '?name=ASUn1J4tDaquH75nFzQBjN4kEweQF1%2F1B3gN6DHdqFo%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 10) {//Other Collection
                        var permsLocName = ReturnMenuLocationName(201);
                        var RedirectLocName = permsLocName || "OtherPayColl";
                        window.open(
                            RedirectLocName + '?name=O%2FfVkbje7R%2BD8p9NBxz1HxT%2FSk%2BB5tAUitpVTCaJQLk56AjICa8CqnVOuSpGPRL4&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 11) {//Other Payment
                        var permsLocName = ReturnMenuLocationName(207);
                        var RedirectLocName = permsLocName || "OtherPayColl";
                        window.open(
                            RedirectLocName + '?name=LnEMhiZHyFGlUZoVFpuf9jIXtZfsF9os4RffgFHsL6s%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 12) {
                        var permsLocName = ReturnMenuLocationName(214);
                        var RedirectLocName = permsLocName || "PurchaseReturn";
                        window.open(
                            RedirectLocName + '?name=Vd%2B%2BrU8QQpt1lN1iIJW1a4zfOkO06OcdMkE6UiXKDWE%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 13) {
                        var permsLocName = ReturnMenuLocationName(150);
                        var RedirectLocName = permsLocName || "InventoryAdjustment";
                        window.open(
                            RedirectLocName + '?name=i3DMZtc%2FTn0UH9DhV75tUuopguddgZuQmQzrgq7DF2pb%2BgzoOuIpBbtZod7IAoud&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 14) {
                        var permsLocName = ReturnMenuLocationName(144);
                        var RedirectLocName = permsLocName || "Quotation";
                        window.open(
                            RedirectLocName + '?name=BTQgLv%2BebY48FN9pEezgnyVrVumuVVzPVnoCFOjqIsU%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 15) {
                        var permsLocName = ReturnMenuLocationName(223);
                        var RedirectLocName = permsLocName || "Invoice";
                        window.open(
                            RedirectLocName + '?name=KUGYxS%2BKhoQB3%2FYrx1I0cQ%3D%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 16) {//Sales/Damage Return
                        var permsLocName = ReturnMenuLocationName(230);
                        var RedirectLocName = permsLocName || "SalesReturn";
                        window.open(
                            RedirectLocName + '?name=6%2B9sxOBkg1PjlBjpubNIcRsbDdS%2F%2BKzbighA08XDWD0%3D&strFormID=EvsdnH%2BUlJpTVhFYh%2Bi13g%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    //if (dTransID == 17) {
                    //    window.open(
                    //        'SalesReturn?name=cPfu941CFnux5sU80vV6w6mcrcNWP7Vs7hhrLOCLYgo%3D&strFormID=WHYf4alVgNJY%2FX917pnZ3w%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                    //        '_blank'
                    //    );
                    //}
                    if (dTransID == 19) {//Collection
                        var permsLocName = ReturnMenuLocationName(247);
                        var RedirectLocName = permsLocName || "CollectionPayment";
                        window.open(
                            RedirectLocName + '?name=V5BIclDO7YSWXMUYe9qSUbB92jlocOM14lUepH77xc4%3D&strFormID=NyU15GCpL%2FZR9n8fK57WAg%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 18) {//Payment
                        var permsLocName = ReturnMenuLocationName(242);
                        var RedirectLocName = permsLocName || "CollectionPayment";
                        window.open(
                            RedirectLocName + '?name=w3tjkQAA1vr%2BSnaRJEKUVw%3D%3D&strFormID=IXL1NOfIxouMMmMKvHxKbA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 21) {//Assign Invoice
                        var permsLocName = ReturnMenuLocationName(280);
                        var RedirectLocName = permsLocName || "AssignInvoices";
                        window.open(
                            RedirectLocName + '?name=enJRLRQEGFesLWfYCZvwDjYTbV%2BUADNSWZA4NMsT1dA%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 22) {//Inventory Conversion   
                        var permsLocName = ReturnMenuLocationName(328);
                        var RedirectLocName = permsLocName || "InventoryConversion";
                        window.open(
                            RedirectLocName + '?name=i3DMZtc%2FTn0UH9DhV75tUuHjdtmqgq5lQj0C4yiivAKRctLDENVNUH%2FhBbeSFLKa&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }

                } else {
                    showErrorSnackbar("Doc ID not matched. Enter correct Doc ID");
                }
            });
        }
    });
}
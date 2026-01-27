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
                    if (dTransID == 1) {
                        window.open(
                            'PurchaseBill?name=Vd%2B%2BrU8QQpt1lN1iIJW1a%2FK0VGZeYK0pqK2Sc7MnuHQ%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 2) {
                        window.open(
                            'AutomaticIndent?name=w2ZCPJkGFF0AoGvRO1%2BMNrYg%2FTlGSP7RFKOTKnKk7TZy%2BjK6iu0iUfEo8qMSw%2BYi&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 3) {
                        window.open(
                            'PurchaseOrder?name=Vd%2B%2BrU8QQpt1lN1iIJW1a5vMQ8aDbizObKKScceojgs%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 4) {
                        window.open(
                            'CreditDebitnote?name=nBxUn%2FtpXKqXVndiW9mojOigG9qCNPC9PrJE0uE0x%2FI%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 5) {
                        window.open(
                            'CreditDebitnote?name=MKxJsHy9h07aqMpiVzgwadc8buUGPTNEEd4sx8%2BnI7Q%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 6) {
                        window.open(
                            'PayableReceivable?name=dpntkBuON0CBaPci%2F0pcMiDLtIuObkSLdZqyRGdFwI0%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 7) {
                        window.open(
                            'PayableReceivable?name=9j780Yb8yqN6RZOxup%2FJ22C89VGOWPP51vwcuj6UAelypRfEnWRXac9RzklPJU96&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 8) {//contra
                        window.open(
                            'Contra?name=s6yomdGRelZM7YQpcYKfqg%3D%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 9) {//Jornal Entry
                        window.open(
                            'JournalEntry?name=ASUn1J4tDaquH75nFzQBjN4kEweQF1%2F1B3gN6DHdqFo%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 10) {//Other Collection
                        window.open(
                            'OtherPayColl?name=O%2FfVkbje7R%2BD8p9NBxz1HxT%2FSk%2BB5tAUitpVTCaJQLk56AjICa8CqnVOuSpGPRL4&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 11) {//Other Payment
                        window.open(
                            'OtherPayColl?name=LnEMhiZHyFGlUZoVFpuf9jIXtZfsF9os4RffgFHsL6s%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 12) {
                        window.open(
                            'PurchaseReturn?name=Vd%2B%2BrU8QQpt1lN1iIJW1a4zfOkO06OcdMkE6UiXKDWE%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 13) {
                        window.open(
                            'InventoryAdjustment?name=i3DMZtc%2FTn0UH9DhV75tUuopguddgZuQmQzrgq7DF2pb%2BgzoOuIpBbtZod7IAoud&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 14) {
                        window.open(
                            'Quotation?name=BTQgLv%2BebY48FN9pEezgnyVrVumuVVzPVnoCFOjqIsU%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 15) {
                        window.open(
                            'Invoice?name=KUGYxS%2BKhoQB3%2FYrx1I0cQ%3D%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 16) {
                        window.open(
                            'SalesReturn?name=6%2B9sxOBkg1PjlBjpubNIcRsbDdS%2F%2BKzbighA08XDWD0%3D&strFormID=EvsdnH%2BUlJpTVhFYh%2Bi13g%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    //if (dTransID == 17) {
                    //    window.open(
                    //        'SalesReturn?name=cPfu941CFnux5sU80vV6w6mcrcNWP7Vs7hhrLOCLYgo%3D&strFormID=WHYf4alVgNJY%2FX917pnZ3w%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                    //        '_blank'
                    //    );
                    //}
                    if (dTransID == 19) {
                        window.open(
                            'CollectionPayment?name=V5BIclDO7YSWXMUYe9qSUbB92jlocOM14lUepH77xc4%3D&strFormID=NyU15GCpL%2FZR9n8fK57WAg%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 18) {
                        window.open(
                            'CollectionPayment?name=w3tjkQAA1vr%2BSnaRJEKUVw%3D%3D&strFormID=IXL1NOfIxouMMmMKvHxKbA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 21) {//Assign Invoice
                        window.open(
                            'AssignInvoices?name=enJRLRQEGFesLWfYCZvwDjYTbV%2BUADNSWZA4NMsT1dA%3D&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
                            '_blank'
                        );
                    }
                    if (dTransID == 22) {//Inventory Conversion                            
                        window.open(
                            'InventoryConversion?name=i3DMZtc%2FTn0UH9DhV75tUuHjdtmqgq5lQj0C4yiivAKRctLDENVNUH%2FhBbeSFLKa&strFormID=jJOtHsRVwYECOhoiBc69dA%3D%3D&TypeID=BOII5FUynjpl5RZJJ8nW1g%3d%3d&TranID=' + items.ID,
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
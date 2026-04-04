var baseURL = document.getElementById("hdnApiurl").value;
function ReturnGrossorMRPTaxAmt(nGrossorTax, nTaxID, nTaxTypeID, dPrice, dMRP) {
    //console.log("Attempting to refresh access token...");
    var taxreturn = {};
    $.ajax({
        url: baseURL + "mrpontax",
        type: "get",
        contentType: 'json',
        data: { GrossorTax: nGrossorTax, TaxID: nTaxID, TaxTypeID: nTaxTypeID, Price: dPrice, MRP: dMRP },
        xhrFields: {
            withCredentials: true  //
        },
        async : false,
        success: function (response) {
            //console.log("mrptax ", response[0]);
            taxreturn = response[0];
        },
        error: function (response) {
            taxreturn = {};
        }
    });
    return taxreturn;
}
function ReturnTaxDetails(nTaxID, nTaxTypeID) {
    //console.log("Attempting to refresh access token...");
    var taxreturn = {};
    $.ajax({
        url: baseURL + "taxdetails",
        type: "get",
        contentType: 'json',
        data: {  TaxID: nTaxID, TaxTypeID: nTaxTypeID },
        xhrFields: {
            withCredentials: true  //
        },
        async: false,
        success: function (response) {
            //console.log("mrptax ", response[0]);
            taxreturn = response;
        },
        error: function (response) {
            taxreturn = {};
        }
    });
    return taxreturn;
}

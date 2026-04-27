// auth.js (Global Authentication Script)

// Base URL of API
var baseURL = document.getElementById("hdnApiurl").value;
var UIURL = document.getElementById("hdnurl").value;
// Function to refresh access token globally
function refreshAccessToken(callback) {
    //console.log("Attempting to refresh access token...");

    $.ajax({
        url: baseURL + "token/refresh",
        type: "POST",
        contentType: 'application/x-www-form-urlencoded; charset=UTF-8',
        xhrFields: {
            withCredentials: true  //
        },
        success: function (response) {
            //console.log("Refresh token success");
            if (callback) {
                callback();
            }
        },
        error: function () {
            //console.log("Refresh token expired, redirecting to login.");
            window.location.href = UIURL;// "/";
        }
    }); 
}

// Automatically refresh token before making API calls
$(document).ajaxError(function (event, jqxhr, settings, thrownError) {
    if (jqxhr.status === 401) { // If unauthorized, try refreshing token
        //console.log("401 Unauthorized - Refreshing token...");
        refreshAccessToken(function () {
            // Retry the original request after refreshing token
            $.ajax(settings);
        });
    }
    var now = new Date();
    var timestamp =     
        String(now.getHours()).padStart(2, '0') +":"+
        String(now.getMinutes()).padStart(2, '0') + ":" +
        String(now.getSeconds()).padStart(2, '0') + ":" +
        String(now.getMilliseconds()).padStart(3, '0');
    console.log("Loader stop", timestamp);
    $("#RepLoadersnackbar").removeClass("show");
    $("#RepLoaderOverlay").removeClass("show");
});

// Show snackbar + overlay on any AJAX start
//$(document).ajaxStart(function () {
//    var now = new Date();
//    var timestamp =
//        String(now.getHours()).padStart(2, '0') + ":" +
//        String(now.getMinutes()).padStart(2, '0') + ":" +
//        String(now.getSeconds()).padStart(2, '0') + ":" +
//        String(now.getMilliseconds()).padStart(3, '0');
//    console.log("Loader Start", timestamp);
//    $("#RepLoadersnackbar").addClass("show");
//    $("#RepLoaderOverlay").addClass("show");
//});
//// Hide snackbar + overlay when all AJAX calls complete
//$(document).ajaxStop(function () {
//    var now = new Date();
//    var timestamp =
//        String(now.getHours()).padStart(2, '0') + ":" +
//        String(now.getMinutes()).padStart(2, '0') + ":" +
//        String(now.getSeconds()).padStart(2, '0') + ":" +
//        String(now.getMilliseconds()).padStart(3, '0');
//    console.log("Loader stop", timestamp);
//    $("#RepLoadersnackbar").removeClass("show");
//    $("#RepLoaderOverlay").removeClass("show");
//});
var ajaxLoaderTimer = null;
var isLoaderVisible = false;

$(document).ajaxStart(function () {

    // Start a 3-second delay
    ajaxLoaderTimer = setTimeout(function () {

        var now = new Date();
        var timestamp =
            String(now.getHours()).padStart(2, '0') + ":" +
            String(now.getMinutes()).padStart(2, '0') + ":" +
            String(now.getSeconds()).padStart(2, '0') + ":" +
            String(now.getMilliseconds()).padStart(3, '0');

        console.log("Loader Start (Delayed)", timestamp);

        $("#RepLoadersnackbar").addClass("show");
        $("#RepLoaderOverlay").addClass("show");

        isLoaderVisible = true;

    }, 5000); // 3 seconds delay
});

$(document).ajaxStop(function () {

    var now = new Date();
    var timestamp =
        String(now.getHours()).padStart(2, '0') + ":" +
        String(now.getMinutes()).padStart(2, '0') + ":" +
        String(now.getSeconds()).padStart(2, '0') + ":" +
        String(now.getMilliseconds()).padStart(3, '0');

    console.log("Loader Stop", timestamp);

    // ❌ If request finished before 3 sec → cancel showing loader
    if (ajaxLoaderTimer) {
        clearTimeout(ajaxLoaderTimer);
        ajaxLoaderTimer = null;
    }

    // ✅ Only hide if it was actually shown
    if (isLoaderVisible) {
        $("#RepLoadersnackbar").removeClass("show");
        $("#RepLoaderOverlay").removeClass("show");
        isLoaderVisible = false;
    }
});
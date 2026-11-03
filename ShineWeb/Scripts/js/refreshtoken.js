// auth.js (Global Authentication Script)

// Base URL of API
var baseURL = document.getElementById("hdnApiurl").value;
var UIURL = document.getElementById("hdnurl").value;

// Token refresh state
let isRefreshing = false;
let refreshQueue = [];
const TOKEN_REFRESH_URL = baseURL + "token/refresh";

function refreshAccessToken(callback) {

    // Refresh already running
    if (isRefreshing) {
        refreshQueue.push(callback);
        return;
    }

    isRefreshing = true;

    $.ajax({
        url: TOKEN_REFRESH_URL,
        type: "POST",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        xhrFields: {
            withCredentials: true
        },
        success: function () {

            isRefreshing = false;

            // Retry current request
            if (callback)
                callback();

            // Retry queued requests
            while (refreshQueue.length > 0) {
                let cb = refreshQueue.shift();
                cb();
            }
        },
        error: function (response) {

            isRefreshing = false;
            refreshQueue = [];

            console.log(response);

            showUnauthorizedPopup({
                redirectUrl: UIURL,
                seconds: 5
            });
        }
    });
}

// Automatically refresh token on a 401, then retry the original request once.
$(document).ajaxError(function (event, jqxhr, settings, thrownError) {
    if (jqxhr.status === 401) {
        // Guard 1: never try to refresh in response to the refresh call itself failing —
        // that would recurse. The refresh error handler already redirects to login.
        var isRefreshCall = settings && settings.url &&
            settings.url.indexOf("token/refresh") !== -1;

        // Guard 2: only retry a given request once, so a persistent 401 cannot loop.
        if (!isRefreshCall && !settings._retriedAfterRefresh) {
            settings._retriedAfterRefresh = true;
            refreshAccessToken(function () {
                $.ajax(settings);
            });
        }
    }
    //var now = new Date();
    //var timestamp =     
    //    String(now.getHours()).padStart(2, '0') +":"+
    //    String(now.getMinutes()).padStart(2, '0') + ":" +
    //    String(now.getSeconds()).padStart(2, '0') + ":" +
    //    String(now.getMilliseconds()).padStart(3, '0');
    //console.log("Loader stop", timestamp);
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

    }, 5000); // delay
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
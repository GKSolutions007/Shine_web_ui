// auth.js (Global Authentication Script)

// Base URL of API
var baseURL = document.getElementById("hdnApiurl").value;
var UIURL = document.getElementById("hdnurl").value;

// Token refresh state
let isRefreshing = false;
let refreshQueue = [];
const TOKEN_REFRESH_URL = baseURL + "token/refresh";

// --- Cross-tab coordination ---------------------------------------------------------------
// The per-page queue above only serialises requests inside ONE tab. When several tabs are open
// (or a tab reloads mid-refresh) each tab would otherwise fire its own POST token/refresh, and
// those concurrent server-side refreshes are exactly the race we are guarding against. We use a
// BroadcastChannel (with a localStorage fallback) so that when any tab finishes a refresh, the
// others stop waiting and replay their queued requests against the freshly rotated cookies.
let refreshChannel = null;
try {
    if (typeof BroadcastChannel !== "undefined") {
        refreshChannel = new BroadcastChannel("shine-token-refresh");
        refreshChannel.onmessage = function (e) {
            if (e && e.data === "refreshed") {
                onRefreshResolved(true);
            } else if (e && e.data === "failed") {
                onRefreshResolved(false);
            }
        };
    }
} catch (ex) {
    refreshChannel = null;
}

function broadcastRefresh(result) {
    try {
        if (refreshChannel) {
            refreshChannel.postMessage(result ? "refreshed" : "failed");
        } else {
            // localStorage 'storage' event fires in OTHER tabs only.
            localStorage.setItem("shine-token-refresh", result + ":" + Date.now());
        }
    } catch (ex) { /* best effort */ }
}

if (!("BroadcastChannel" in window)) {
    window.addEventListener("storage", function (e) {
        if (e.key === "shine-token-refresh" && e.newValue) {
            onRefreshResolved(e.newValue.indexOf("true:") === 0);
        }
    });
}

// Drain the queue once a refresh (from this tab or another) has resolved.
function onRefreshResolved(success) {
    if (!isRefreshing && refreshQueue.length === 0) return;
    isRefreshing = false;

    if (success) {
        while (refreshQueue.length > 0) {
            let cb = refreshQueue.shift();
            cb();
        }
    } else {
        refreshQueue = [];
        showUnauthorizedPopup({ redirectUrl: UIURL, seconds: 5 });
    }
}

// Perform the refresh POST with a bounded one-time retry on HTTP 409 (Conflict). 409 means a
// concurrent request already won the rotation on the server; the winning response has already
// set the new cookies, so retrying once lets this tab pick them up. A hard failure (401/500)
// means the session is really gone -> redirect to login.
function doRefreshRequest(onDone, attempt) {
    attempt = attempt || 0;

    $.ajax({
        url: TOKEN_REFRESH_URL,
        type: "POST",
        contentType: "application/x-www-form-urlencoded; charset=UTF-8",
        xhrFields: { withCredentials: true },
        success: function () {
            onDone(true);
        },
        error: function (response) {
            // 409: someone else rotated. Retry once after a short delay to let their Set-Cookie land.
            if (response && response.status === 409 && attempt < 1) {
                setTimeout(function () { doRefreshRequest(onDone, attempt + 1); }, 150);
                return;
            }
            console.log(response);
            onDone(false);
        }
    });
}

function refreshAccessToken(callback) {

    // A refresh (in this tab) is already running: just queue and wait.
    if (isRefreshing) {
        if (callback) refreshQueue.push(callback);
        return;
    }

    isRefreshing = true;
    if (callback) refreshQueue.push(callback);

    doRefreshRequest(function (success) {
        isRefreshing = false;
        broadcastRefresh(success);

        if (success) {
            while (refreshQueue.length > 0) {
                let cb = refreshQueue.shift();
                cb();
            }
        } else {
            refreshQueue = [];
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
// auth.js (Global Authentication Script)

// Base URL of API
//const baseURL = "https://localhost:44396/api/";
//const baseURL = "https://gksapp.in/shinewebapi/api/";
//const baseURL = "https://gksapp.in/VIG001API/api/";
var baseURL = document.getElementById("hdnApiurl").value;

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
            window.location.href = "/";
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
});

using System;
using System.Configuration;
using System.Net.Http;
using System.Net.Http.Headers;
using ShineWeb.BuisnessLayer;

namespace ShineWeb.Helpers
{
    /// <summary>
    /// Centralised HTTP access to the backend API.
    ///
    /// Why this exists:
    ///  - HttpClient is designed to be instantiated once and reused for the life of the
    ///    application. Creating a new HttpClient per request (the previous pattern) leaks
    ///    sockets (TIME_WAIT) and causes SocketExceptions under load.
    ///  - The API URL is AES-encrypted in appSettings. Decrypting it on every request is
    ///    wasteful because it never changes at runtime — so it is decrypted once and cached.
    ///
    /// Cookie handling: the shared client uses a per-call handler-free design. Credentials
    /// (cookies) that must flow to the API are set per-request via the browser for client-side
    /// AJAX. For server-to-server calls that need cookies, use CreateClientWithCookies().
    /// </summary>
    public static class ApiClient
    {
        private static readonly Lazy<string> _apiUrl = new Lazy<string>(() =>
        {
            string encrypted = ConfigurationManager.AppSettings["apiurl"];
            return clsEncryptDecrypt.Decrypt(encrypted);
        });

        /// <summary>Decrypted API base URL, computed once and cached.</summary>
        public static string ApiUrl => _apiUrl.Value;

        // Single shared instance for the life of the app. Thread-safe for concurrent requests.
        private static readonly Lazy<HttpClient> _shared = new Lazy<HttpClient>(() =>
        {
            var client = new HttpClient { BaseAddress = new Uri(ApiUrl) };
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
            return client;
        });

        /// <summary>
        /// Shared, long-lived HttpClient for stateless API calls that do not need
        /// request-specific cookies.
        /// </summary>
        public static HttpClient Shared => _shared.Value;

        /// <summary>
        /// Creates a short-lived HttpClient configured to forward the current request's
        /// auth cookies to the API. Use for authenticated server-to-server calls.
        /// The caller owns the returned client and should dispose it (use within a using block).
        /// </summary>
        public static HttpClient CreateClientWithCookies(System.Web.HttpRequestBase request)
        {
            var handler = new HttpClientHandler
            {
                UseCookies = true,
                CookieContainer = new System.Net.CookieContainer()
            };

            if (request != null && request.Cookies != null)
            {
                var baseUri = new Uri(ApiUrl);
                foreach (string name in request.Cookies.AllKeys)
                {
                    var c = request.Cookies[name];
                    if (c != null && !string.IsNullOrEmpty(c.Value))
                    {
                        handler.CookieContainer.Add(baseUri,
                            new System.Net.Cookie(c.Name, c.Value));
                    }
                }
            }

            var client = new HttpClient(handler) { BaseAddress = new Uri(ApiUrl) };
            client.DefaultRequestHeaders.Accept.Add(
                new MediaTypeWithQualityHeaderValue("application/json"));
            return client;
        }
    }
}

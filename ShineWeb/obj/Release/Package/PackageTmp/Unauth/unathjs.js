/**
  * Shows the "Unauthorized request" popup and redirects after a countdown.
  *
  * @param {Object} options
  * @param {string}  [options.redirectUrl="/login"]  Where to send the user.
  * @param {number}  [options.seconds=5]              Countdown duration.
  * @param {string}  [options.message]                Custom message (HTML allowed).
  * @param {Function}[options.onRedirect]              Called instead of navigating,
  *                                                     if you want custom routing
  *                                                     (e.g. React Router, Vue Router).
  */
function showUnauthorizedPopup(options = {}) {
    const {
        redirectUrl = "/",
        seconds = 5,
        message = null,
        onRedirect = null
    } = options;
    
    const overlay = document.getElementById("uaOverlay");
    const countdownEl = document.getElementById("uaCountdown");
    const countdownInlineEl = document.getElementById("uaCountdownInline");
    const progressFill = document.getElementById("uaProgressFill");
    const messageEl = document.getElementById("uaMessage");
    const loginNowBtn = document.getElementById("uaLoginNowBtn");

    if (message) {
        messageEl.innerHTML = message;
    }

    let remaining = seconds;
    countdownEl.textContent = remaining;
    if (countdownInlineEl) countdownInlineEl.textContent = remaining;

    // Show modal
    overlay.classList.add("ua-visible");

    // Animate progress bar shrinking over the full duration
    progressFill.style.transition = "none";
    progressFill.style.width = "100%";
    // Force reflow so the transition below actually animates
    void progressFill.offsetWidth;
    progressFill.style.transition = `width ${seconds}s linear`;
    progressFill.style.width = "0%";

    const doRedirect = () => {
        clearInterval(intervalId);
        overlay.classList.remove("ua-visible");
        if (typeof onRedirect === "function") {
            onRedirect(redirectUrl);
        } else {
            window.location.href = redirectUrl;
        }
    };

    const intervalId = setInterval(() => {
        remaining -= 1;
        if (remaining <= 0) {
            countdownEl.textContent = 0;
            if (countdownInlineEl) countdownInlineEl.textContent = 0;
            doRedirect();
            return;
        }
        countdownEl.textContent = remaining;
        if (countdownInlineEl) countdownInlineEl.textContent = remaining;
    }, 1000);

    // Manual "Go to login now" button
    loginNowBtn.onclick = doRedirect;
}

// Expose globally so it can be called from anywhere (inline onclick, other scripts, etc.)
window.showUnauthorizedPopup = showUnauthorizedPopup;
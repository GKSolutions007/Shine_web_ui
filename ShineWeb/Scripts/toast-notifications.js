/**
 * Modern Toast Notification System
 * Replaces old alert/snackbar system with modern, stackable toasts
 */

(function () {
    'use strict';

    // Toast container
    let toastContainer = null;

    // Initialize toast container
    function initToastContainer() {
        if (!toastContainer) {
            toastContainer = document.createElement('div');
            toastContainer.id = 'toast-container';
            toastContainer.style.cssText = `
                position: fixed;
                top: 20px;
                right: 20px;
                z-index: 9999;
                display: flex;
                flex-direction: column;
                gap: 12px;
                max-width: 400px;
            `;
            document.body.appendChild(toastContainer);
        }
        return toastContainer;
    }

    // Create toast element
    function createToast(message, type = 'info', duration = 4000) {
        const container = initToastContainer();

        const toast = document.createElement('div');
        toast.className = `modern-toast modern-toast-${type} slide-in`;

        const colors = {
            success: { bg: '#10b981', icon: '✓' },
            error: { bg: '#ef4444', icon: '✕' },
            warning: { bg: '#f59e0b', icon: '⚠' },
            info: { bg: '#3b82f6', icon: 'ℹ' }
        };

        const config = colors[type] || colors.info;

        toast.innerHTML = `
            <div style="
                background: ${config.bg};
                color: white;
                padding: 16px 20px;
                border-radius: 12px;
                box-shadow: 0 10px 15px -3px rgba(0, 0, 0, 0.3);
                display: flex;
                align-items: center;
                gap: 12px;
                min-width: 300px;
                animation: slideIn 0.3s ease-out;
            ">
                <span style="
                    font-size: 20px;
                    font-weight: bold;
                    flex-shrink: 0;
                ">${config.icon}</span>
                <span style="
                    flex: 1;
                    font-size: 14px;
                    line-height: 1.5;
                ">${message}</span>
                <button class="toast-close" style="
                    background: transparent;
                    border: none;
                    color: white;
                    font-size: 20px;
                    cursor: pointer;
                    padding: 0;
                    width: 24px;
                    height: 24px;
                    display: flex;
                    align-items: center;
                    justify-content: center;
                    opacity: 0.7;
                    transition: opacity 0.2s;
                " onmouseover="this.style.opacity='1'" onmouseout="this.style.opacity='0.7'">×</button>
                ${duration > 0 ? `
                <div style="
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    height: 3px;
                    background: rgba(255, 255, 255, 0.3);
                    width: 100%;
                    border-radius: 0 0 12px 12px;
                    overflow: hidden;
                ">
                    <div class="toast-progress" style="
                        height: 100%;
                        background: rgba(255, 255, 255, 0.7);
                        width: 100%;
                        animation: shrink ${duration}ms linear;
                    "></div>
                </div>
                ` : ''}
            </div>
        `;

        // Close button functionality
        const closeBtn = toast.querySelector('.toast-close');
        closeBtn.addEventListener('click', () => removeToast(toast));

        // Add to container
        container.appendChild(toast);

        // Auto remove
        if (duration > 0) {
            setTimeout(() => removeToast(toast), duration);
        }

        return toast;
    }

    // Remove toast with animation
    function removeToast(toast) {
        toast.style.animation = 'slideOut 0.3s ease-in';
        setTimeout(() => {
            if (toast.parentNode) {
                toast.parentNode.removeChild(toast);
            }
        }, 300);
    }

    // Add animation styles
    if (!document.getElementById('toast-animations')) {
        const style = document.createElement('style');
        style.id = 'toast-animations';
        style.textContent = `
            @keyframes slideIn {
                from {
                    opacity: 0;
                    transform: translateX(100%);
                }
                to {
                    opacity: 1;
                    transform: translateX(0);
                }
            }
            
            @keyframes slideOut {
                from {
                    opacity: 1;
                    transform: translateX(0);
                }
                to {
                    opacity: 0;
                    transform: translateX(100%);
                }
            }
            
            @keyframes shrink {
                from { width: 100%; }
                to { width: 0%; }
            }
        `;
        document.head.appendChild(style);
    }

    // Public API
    window.showToast = {
        success: (message, duration) => createToast(message, 'success', duration),
        error: (message, duration) => createToast(message, 'error', duration),
        warning: (message, duration) => createToast(message, 'warning', duration),
        info: (message, duration) => createToast(message, 'info', duration)
    };

    // Backward compatibility - override old functions
    window.showSuccessSnackbar = (message) => showToast.success(message);
    window.showErrorSnackbar = (message) => showToast.error(message);
    window.showWarningSnackbar = (message) => showToast.warning(message);

})();

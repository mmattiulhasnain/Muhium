// VU Activity Calendar - Content Script

(function () {
    'use strict';

    // Polyfill chrome storage/runtime for Android WebView compatibility
    if (typeof window.chrome === 'undefined' || !window.chrome.storage) {
        window.chrome = window.chrome || {};
        window.chrome.storage = {
            local: {
                get: function(keys, cb) {
                    var res = {};
                    if (typeof keys === 'string') {
                        var k = keys;
                        try { res[k] = JSON.parse(localStorage.getItem(k)); } catch(e) { res[k] = null; }
                    } else if (Array.isArray(keys)) {
                        keys.forEach(function(k) {
                            try { res[k] = JSON.parse(localStorage.getItem(k)); } catch(e) { res[k] = null; }
                        });
                    } else if (typeof keys === 'object' && keys !== null) {
                        Object.keys(keys).forEach(function(k) {
                            try {
                                var val = localStorage.getItem(k);
                                res[k] = val !== null ? JSON.parse(val) : keys[k];
                            } catch(e) { res[k] = keys[k]; }
                        });
                    }
                    if (cb) cb(res);
                    return Promise.resolve(res);
                },
                set: function(obj, cb) {
                    if (typeof obj === 'object' && obj !== null) {
                        Object.keys(obj).forEach(function(k) {
                            try { localStorage.setItem(k, JSON.stringify(obj[k])); } catch(e) {}
                        });
                    }
                    if (cb) cb();
                    return Promise.resolve();
                },
                remove: function(keys, cb) {
                    if (typeof keys === 'string') keys = [keys];
                    if (Array.isArray(keys)) {
                        keys.forEach(function(k) {
                            try { localStorage.removeItem(k); } catch(e) {}
                        });
                    }
                    if (cb) cb();
                    return Promise.resolve();
                }
            }
        };
        window.chrome.runtime = {
            getURL: function(path) { return path; },
            sendMessage: function(msg, cb) {
                var res = { error: 'Feature not supported in app' };
                if (cb) cb(res);
                return Promise.resolve(res);
            }
        };
    }

    // ============================================================
    // CONFIGURATION
    // ============================================================
    const CONFIG = {
        CALENDAR_URL: 'https://vulms.vu.edu.pk/ActivityCalendar/ActivityCalendar.aspx',
        ACCOUNT_BOOK_URL: 'https://vulms.vu.edu.pk/AccountBook/AccountBook.aspx',
        HOME_URL: 'https://vulms.vu.edu.pk/Home.aspx',
        COLOR_MAP: {
            '#188ff6': 'datesheet',
            '#00a65a': 'quiz',
            '#B49195': 'result',
            '#f56954': 'assignment',
            '#f39c12': 'gdb',
            '#B833FF': 'challan'
        },
        MS_PER_DAY: 86400000,
        MS_PER_HOUR: 3600000,
        MS_PER_MINUTE: 60000
    };

    // ============================================================
    // INJECT CSS
    // ============================================================
    const STYLES = `
:root {
    --vu-primary: #1976d2;
    --vu-primary-hover: #1565c0;
    --vu-background: #ffffff;
    --vu-card: #f8fafc;
    --vu-border: #e2e8f0;
    --vu-text: #1e293b;
    --vu-text-muted: #64748b;
    --vu-success: #22c55e;
    --vu-danger: #ef4444;
    --vu-warning: #f59e0b;
    --vu-shadow: 0 10px 40px rgba(0, 0, 0, 0.15);
}
/* Dark Mode */
.vu-calendar-container.dark-mode {
    --vu-primary: #60a5fa;
    --vu-primary-hover: #3b82f6;
    --vu-background: #323446;
    --vu-card: #3d4052;
    --vu-border: #4a4d5e;
    --vu-text: #e4e4e4;
    --vu-text-muted: #a0a0a0;
    --vu-success: #22c55e;
    --vu-danger: #ef4444;
    --vu-warning: #fbbf24;
    --vu-shadow: 0 10px 40px rgba(0, 0, 0, 0.5);
}
.vu-calendar-container.dark-mode .vu-calendar-panel {
    background: var(--vu-background);
}
.vu-calendar-container.dark-mode .vu-calendar-toggle {
    background: #0044b4
}
.vu-calendar-container.dark-mode .vu-calendar-toggle:hover {
    background: #002880ff;
}
.vu-calendar-container.dark-mode .vu-calendar-tab {
    color: white;
}
.vu-calendar-container.dark-mode .vu-calendar-tab.active {
    background: var(--vu-card);
    color: var(--vu-primary);
}
.vu-calendar-container.dark-mode .vu-calendar-tab:focus {
    outline: 1px solid white;
    outline-offset: -1px;
}
.vu-calendar-container.dark-mode button:focus {
    outline: 1px solid white;
}
.vu-calendar-container.dark-mode .vu-calendar-close {
    background: var(--vu-card) !important;
    border-color: var(--vu-border);
    color: white;
}
.vu-calendar-container.dark-mode .vu-calendar-refresh {
    background: var(--vu-card);
    border-color: var(--vu-border);
    color: var(--vu-text);
}
.vu-calendar-container.dark-mode .vu-calendar-download-pdf {
    background: var(--vu-card);
    border-color: var(--vu-border);
    color: var(--vu-text);
}
.vu-calendar-container.dark-mode .vu-calendar-download-pdf:hover {
    background: var(--vu-primary);
    color: white;
    border-color: var(--vu-primary);
}
.vu-calendar-container.dark-mode .vu-pdf-dropdown {
    background: var(--vu-background);
    border-color: var(--vu-border);
}
.vu-calendar-container.dark-mode .vu-pdf-dropdown-option {
    color: var(--vu-text);
    border-color: var(--vu-border);
}
.vu-calendar-container.dark-mode .vu-pdf-dropdown-option:hover {
    background: var(--vu-primary);
    color: white;
}
.vu-calendar-container.dark-mode .vu-action-btn {
    background: var(--vu-card);
    border-color: var(--vu-primary);
    color: var(--vu-primary);
}
.vu-calendar-container.dark-mode .vu-action-btn:hover {
    background: var(--vu-primary);
    color: white;
}
.vu-calendar-container.dark-mode .vu-badge.secondary {
    background: var(--vu-card);
    border-color: var(--vu-border);
    color: var(--vu-text);
}
.vu-calendar-container.dark-mode .vu-badge.danger {
     background: rgb(249 55 55 / 20%);
    border-color: #ff0000;
    color: #ff5858;
}
.vu-calendar-container.dark-mode .vu-badge.success {
  background: rgba(74, 222, 128, 0.2);
    border-color: #4ade80;
    color: #86efac;
}
.vu-calendar-container.dark-mode .vu-badge.warning {
   background: rgba(251, 191, 36, 0.2);
    border-color: #fbbf24;
    color: #fcd34d;
}
.vu-calendar-container.dark-mode .vu-action-btn.submitted {
   background: #00ff9b42;
    border-color: #3bff82;
    color: #86efac;
}
.vu-calendar-container.dark-mode .title-cell .date-start,
.vu-calendar-container.dark-mode td.date-start {
    color: #00ff5e !important;
}
.vu-calendar-container.dark-mode .title-cell .date-end,
.vu-calendar-container.dark-mode td.date-end {
    color: #ff0000ff !important;
}
.vu-calendar-container.dark-mode .vu-calendar-content::-webkit-scrollbar-track {
    background: #3d4052;
}
.vu-calendar-container.dark-mode .vu-calendar-content::-webkit-scrollbar-thumb {
    background: #555;
}
.vu-calendar-container.dark-mode .vu-calendar-content::-webkit-scrollbar-thumb:hover {
    background: #666;
}
.vu-calendar-overlay {
    position: fixed;
    inset: 0;
    background: rgba(0, 0, 0, 0.3);
    z-index: 999997;
    opacity: 0;
    visibility: hidden;
    transition: opacity 0.3s, visibility 0.3s;
}
.vu-calendar-overlay.visible {
    opacity: 1;
    visibility: visible;
}
.vu-calendar-toggle {
    position: fixed !important;
    top: 50% !important;
    bottom: auto !important;
    left: auto !important;
    right: 0 !important;
    transform: translate3d(0, -50%, 0) !important;
    transform-origin: center;
    z-index: 999999;
    background: #0062c2;
    color: white;
    border: none;
    cursor: pointer;
    padding: 20px 12px;
    border-radius: 0;
    writing-mode: horizontal-tb;
    direction: ltr;
    line-height: 1;
    transition: background 0.2s, transform 0.35s cubic-bezier(0.22, 1, 0.36, 1);
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 8px;
    font-size: 18px;
    overflow: hidden;
font-style:italic;
    font-weight: 600;
}

/* Desktop / default styles */
.vu-calendar-toggle-ribbon {
    position: absolute;
    top: 0;
    left: 0;
    width: 52px;
    height: 52px;
    background: transparent;
    pointer-events: none;
    z-index: 1;
    overflow: hidden;
}

.vu-calendar-toggle-ribbon-text {
position: absolute;
    top: 3px;
    left: -35px;
    width: 90px;
    height: 15px;
    display: flex;
    align-items: center;
    justify-content: center;
    background: #ff0000;
    color: #ffffff;
    font-size: 10px;
    font-weight: 700;
    letter-spacing: 0.6px;
    transform: rotate(-45deg);
    transform-origin: center;
    font-style: italic;
}

/* Mobile-specific styles */
@media (max-width: 480px) {
    .vu-calendar-toggle-ribbon {
        width: 40px;
        height: 40px;
    }

    .vu-calendar-toggle-ribbon-text {
              width: 63px;
        height: 11px;
        font-size: 10px;
        left: -22px;
        top: 4px;

    }
}

.vu-calendar-toggle-label {
    writing-mode: vertical-rl;
    direction: ltr;
    transform: rotate(180deg);
    display: inline-flex;
    align-items: center;
    justify-content: center;
}
.vu-calendar-toggle-label > .urgency-dot {
    position: static;
    top: auto;
    right: auto;
    margin-bottom: 6px;
    margin-right: 4px;
}
.vu-calendar-toggle.shifted {
    transform: translate3d(-700px, -50%, 0) !important;
}
@media (max-width: 760px) {
    .vu-calendar-toggle.shifted {
        transform: translate3d(calc(-100vw + 60px), -50%, 0) !important;
    }
}
.vu-calendar-toggle:hover {
    background: #004f9eff;
}
.vu-calendar-toggle .urgency-dot {
    width: 8px;
    height: 8px;
    background: var(--vu-danger);
    border-radius: 50%;
    animation: pulse 1s infinite;
    position: relative;
    top: 0px;
    right: -1px;
}
.vu-calendar-toggle .urgency-dot.green {
    background: var(--vu-success);
}
@keyframes pulse {
    0%, 100% { opacity: 1; transform: scale(1); }
    50% { opacity: 0.7; transform: scale(1.2); }
}
.vu-calendar-panel {
    position: fixed;
    top: 0;
    right: 0;
    z-index: 999998;
    width: 700px;
    max-width: calc(100vw - 60px);
    height: 100%;
    background: var(--vu-background);
    box-shadow: var(--vu-shadow);
    display: flex;
    flex-direction: column;
    transform: translateX(100%);
    transition: transform 0.35s cubic-bezier(0.22, 1, 0.36, 1);
    border-radius: 0;
    font-family: 'Segoe UI', system-ui, -apple-system, sans-serif;
}
.vu-calendar-panel.open {
    transform: translateX(0);
}
.vu-calendar-header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 10px 24px;
    border-bottom: 1px solid var(--vu-border);
}
.vu-calendar-header h1 {
    margin: 0;
    font-size: 17px;
    font-weight: 600;
    color: var(--vu-text);
}
.vu-calendar-close {
    background: #e4f1ff !important;
    border: 1px solid var(--vu-border);
    border-radius: 0;
    font-size: 18px;
    color: var(--vu-text);
    cursor: pointer;
    padding: 5px 8px!important;
    transition: all 0.2s;
}
.vu-calendar-close:hover {
    border-color: var(--vu-danger);
    color: red;
}
.vu-calendar-controls {
    display: flex;
    gap: 12px;
    padding: 16px 24px;
    border-bottom: 1px solid var(--vu-border);
    flex-wrap: wrap;
}
.vu-calendar-tabs {
    display: flex;
    background: var(--vu-card);
    border-radius: 0;
    padding: 4px;
    flex: 1;
    border: 1px solid var(--vu-border);
}
.vu-calendar-tab {
    flex: 1;
    padding: 10px 16px;
    border: none;
    background: transparent;
    cursor: pointer;
    font-size: 13px;
    font-weight: 500;
    color: #1e293b;
    border-radius: 0;
    transition: all 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
}
.vu-calendar-tab:hover {
    color: var(--vu-text);
}
.vu-calendar-tab.active {
    background: #d5e7ffff;
    color: var(--vu-primary);
    box-shadow: 0 1px 3px rgba(0, 0, 0, 0.1);
}
.vu-calendar-tab .tab-dot {
    width: 6px;
    height: 6px;
    background: var(--vu-danger);
    border-radius: 50%;
}
.vu-calendar-tab .tab-dot.green {
    background: var(--vu-success);
}
.vu-calendar-tab .tab-dot.blink {
    animation: vuDotBlink 1s infinite;
}
.vu-calendar-tab .tab-badge {
    min-width: 18px;
    height: 18px;
    padding: 0 5px;
    background: var(--vu-danger);
    color: white;
    border-radius: 50%;
    font-size: 10px;
    font-weight: 700;
    display: flex;
    align-items: center;
    justify-content: center;
    line-height: 1;
}
.vu-calendar-tab .tab-badge.green {
    background: var(--vu-success);
}
.vu-calendar-tab .tab-badge.orange {
    background: var(--vu-warning);
}
@keyframes vuDotBlink {
    0%, 100% { opacity: 1; }
    50% { opacity: 0.2; }
}
.vu-calendar-refresh {
    padding: 10px 12px;
    border: 1px solid var(--vu-border);
    border-radius: 8px;
    background: white;
    cursor: pointer;
    color: var(--vu-text);
    transition: all 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
    font-size: 13px;
    font-weight: 500;
}
.vu-calendar-refresh:hover {
    background: var(--vu-card);
}
.vu-calendar-download-pdf {
    padding: 10px 12px;
    border: 1px solid var(--vu-border);
    border-radius: 8px;
    background: white;
    cursor: pointer;
    color: var(--vu-text);
    transition: all 0.2s;
    display: flex;
    align-items: center;
    justify-content: center;
    gap: 6px;
    font-size: 13px;
    font-weight: 500;
    position: relative;
}
.vu-calendar-download-pdf .new-badge {
    position: absolute;
    top: -7px;
    right: -7px;
    background: #ff0000;
    color: white;
    font-size: 9px;
    font-weight: 700;
    padding: 3px 5px;
    border-radius: 3px;
    letter-spacing: 0.5px;
    line-height: 1;
    z-index: 1;
    font-style: italic;
}
.vu-calendar-download-pdf:hover {
    background: var(--vu-primary);
    color: white;
    border-color: var(--vu-primary);
}
.vu-calendar-download-pdf .download-icon {
    display: inline-block;
    width: 16px;
    height: 16px;
    flex-shrink: 0;
}
.vu-pdf-dropdown {
    position: absolute;
    top: calc(100% + 5px);
    right: 0;
    background: var(--vu-background);
    border: 1px solid var(--vu-border);
    border-radius: 6px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.15);
    z-index: 1000000;
    min-width: 220px;
    display: none;
    overflow: hidden;
}
.vu-pdf-dropdown.visible {
    display: block;
}
.vu-pdf-dropdown-option {
    padding: 12px 16px;
    border: none;
    background: transparent;
    cursor: pointer;
    font-size: 13px;
    font-weight: 500;
    color: var(--vu-text);
    transition: all 0.2s;
    display: flex;
    align-items: center;
    gap: 10px;
    width: 100%;
    text-align: left;
    border-bottom: 1px solid var(--vu-border);
}
.vu-pdf-dropdown-option:last-child {
    border-bottom: none;
}
.vu-pdf-dropdown-option:hover {
    background: var(--vu-primary);
    color: white;
}
.vu-pdf-dropdown-option svg {
    width: 16px;
    height: 16px;
    flex-shrink: 0;
}
.vu-calendar-refresh .refresh-icon {
    display: inline-block;
    font-size: 16px;
    transition: transform 0.2s;
}
.vu-calendar-refresh.loading .refresh-icon {
    animation: spin 1s linear infinite;
}
@keyframes spin {
    from { transform: rotate(0deg); }
    to { transform: rotate(360deg); }
}
.vu-calendar-content {
    flex: 1;
    overflow-y: scroll !important;
    padding: 20px 24px;
}
.vu-calendar-section {
    margin-bottom: 24px;
}
.vu-calendar-section h3 {
    margin: 0 0 0px 0;
    font-size: 15px;
    font-weight: 600;
    color: var(--vu-text);
    background: var(--vu-card);
    padding: 8px 12px;
    border: 1px solid var(--vu-border);
}
.vu-calendar-empty {
    text-align: center;
    color: var(--vu-text-muted);
    font-size: 13px;
    padding: 12px;
}
.vu-calendar-table {
    width: 100%;
    border-collapse: collapse;
    font-size: 12px;
    border: 1px solid var(--vu-border);
}
.vu-calendar-table th {
    text-align: left;
    padding: 10px 12px;
    font-weight: 500;
    color: #0477e9;
    border: 1px solid var(--vu-border);
}
.vu-calendar-table td {
    padding: 12px;
    border: 1px solid var(--vu-border);
    color: var(--vu-text);
    white-space: nowrap;
}
.vu-calendar-table tbody tr {
    background: var(--vu-card);
}
.course-code {
    font-weight: 600;
    color: var(--vu-primary);
}
.title-cell .title {
    font-weight: 500;
    margin-bottom: 4px;
    white-space: normal;
}
.title-cell .date-range {
    font-size: 11px;
    display: flex;
    align-items: center;
    gap: 4px;
}
.title-cell .date-start,
td.date-start {
    color: var(--vu-success);
}
.title-cell .date-end,
td.date-end {
    color: var(--vu-danger);
}
.vu-badge {
    display: inline-block;
    padding: 5px 12px;
    border-radius: 0;
    font-size: 13px;
    font-weight: 600;
}
.vu-badge.secondary {
      background: #e4f1ff;
    border: 1px solid var(--vu-border);
    color: var(--vu-text);
}
.vu-badge.danger {
    background: #fef2f2;
    border: 1px solid #fecaca;
    color: var(--vu-danger);
}
.vu-badge.success {

    color: var(--vu-success);
}
.vu-action-btn {
    padding: 6px 12px;
    border: 1px solid var(--vu-primary);
    border-radius: 0;
    background: white;
    color: var(--vu-primary);
    font-size: 13px;
    font-weight: 500;
    cursor: pointer;
    text-decoration: none;
    display: inline-block;
    transition: all 0.2s;
}
.vu-action-btn:hover {
    background: var(--vu-primary);
    color: white;
}
.vu-action-btn.submitted {
    background: #f0fdf4;
    border-color: var(--vu-success);
    color: var(--vu-success);
    cursor: default;
}
.vu-datesheet-alert {
    background: linear-gradient(135deg, #e0f2fe 0%, #bae6fd 100%);
    border: 1px solid #7dd3fc;
    border-radius: 12px;
    padding: 16px 20px;
    margin-bottom: 20px;
    display: flex;
    justify-content: space-between;
    align-items: center;
    gap: 16px;
}
.vu-datesheet-alert h4 {
    margin: 0 0 4px 0;
    font-size: 15px;
    color: var(--vu-text);
}
.vu-datesheet-alert p {
    margin: 0;
    font-size: 12px;
    color: var(--vu-text-muted);
}
.vu-datesheet-alert .deadline {
    font-weight: 600;
    color: var(--vu-text);
}
.vu-calendar-loading {
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: 200px;
    gap: 12px;
}
.vu-calendar-loading p {
    margin: 0;
    color: var(--vu-text-muted);
    font-size: 14px;
    font-weight: 500;
    text-align: center;
}
.vu-section-loading {
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
    gap: 10px;
    padding: 18px 12px 22px;
    min-height: 120px;
    color: var(--vu-text-muted);
}
.vu-section-loading p {
    margin: 0;
    font-size: 12px;
    line-height: 1.4;
    text-align: center;
}
.vu-spinner {
    width: 40px;
    height: 40px;
    border: 3px solid var(--vu-border);
    border-top-color: var(--vu-primary);
    border-radius: 50%;
    animation: spin 1s linear infinite;
}
.challan-expired {
    color: var(--vu-danger);
    font-weight: 500;
}
.challan-active {
    color: var(--vu-success);
    font-weight: 500;
}
.text-center {
    text-align: center;
}
.text-right {
    text-align: right;
}
.vu-calendar-content::-webkit-scrollbar {
    width: 8px;
}
.vu-calendar-content::-webkit-scrollbar-track {
    background: #e2e8f0;
}
.vu-calendar-content::-webkit-scrollbar-thumb {
    background: #94a3b8;
    border-radius: 0;
}
.vu-calendar-content::-webkit-scrollbar-thumb:hover {
    background: #64748b;
}
@media (max-width: 768px) {
    .vu-calendar-toggle {
        padding: 18px 12px;
        font-size: 16px;
        gap: 6px;
    }
    .vu-calendar-toggle .urgency-dot {
        width: 6px;
        height: 6px;
    }
    .vu-calendar-toggle.shifted {
        transform: translate3d(calc(-100vw + 40px), -50%, 0) !important;
    }
    .vu-calendar-panel {
        width: calc(100vw - 40px);
        max-width: calc(100vw - 40px);
    }
    .vu-calendar-header {
        padding: 12px 16px;
    }
    .vu-calendar-header h1 {
        font-size: 14px;
    }
    .vu-calendar-download-pdf {
        padding: 5px 8px;
        font-size: 11px;
        gap: 4px;
    }
    .vu-calendar-download-pdf .download-icon {
        width: 14px;
        height: 14px;
    }
    .vu-calendar-close {
        font-size: 16px;
        padding: 4px 7px!important;
    }
    .vu-calendar-controls {
        padding: 10px 16px;
        gap: 8px;
    }
    .vu-calendar-tabs {
        padding: 3px;
    }
    .vu-calendar-tab {
        padding: 6px 8px;
        font-size: 10px;
        gap: 4px;
    }
    .vu-calendar-tab .tab-dot {
        width: 5px;
        height: 5px;
    }
    .vu-calendar-tab .tab-badge {
        min-width: 16px;
        height: 16px;
        padding: 0 4px;
        font-size: 9px;
    }
    .vu-calendar-refresh {
        padding: 6px 8px;
        font-size: 12px;
    }
    .vu-calendar-content {
        padding: 12px 16px;
    }
    .vu-calendar-section {
        margin-bottom: 16px;
    }
    .vu-calendar-section h3 {
        font-size: 13px;
        margin-bottom: 8px;
    }
    .vu-calendar-empty {
        font-size: 11px;
        padding: 8px;
    }
    .vu-calendar-table {
        font-size: 10px;
    }
    .vu-calendar-table th {
        padding: 6px 8px;
        font-size: 10px;
    }
    .vu-calendar-table td {
        padding: 8px;
    }
    .course-code {
        font-size: 10px;
    }
    .title-cell .title {
        font-size: 10px;
        margin-bottom: 2px;
    }
    .title-cell .date-range {
        font-size: 9px;
        gap: 2px;
    }
    .vu-badge {
        padding: 3px 8px;
        font-size: 12px;
    }
    .vu-action-btn {
        padding: 4px 8px;
        font-size: 9px;
    }
    .vu-datesheet-alert {
        padding: 10px 12px;
        margin-bottom: 12px;
        gap: 10px;
        flex-direction: column;
        text-align: center;
    }
    .vu-datesheet-alert h4 {
        font-size: 12px;
    }
    .vu-datesheet-alert p {
        font-size: 10px;
    }
    .vu-calendar-loading {
        height: 120px;
    }
    .vu-spinner {
        width: 30px;
        height: 30px;
        border-width: 2px;
    }
}
@media (max-width: 480px) {
    .vu-calendar-toggle {
        padding: 16px 12px;
        font-size: 15px;
    }
    .vu-calendar-header {
        padding: 10px 12px;
    }
    .vu-calendar-header h1 {
        font-size: 13px;
    }
    .vu-calendar-download-pdf {
        padding: 4px 6px;
        font-size: 10px;
        gap: 3px;
    }
    .vu-calendar-download-pdf .download-icon {
        width: 12px;
        height: 12px;
    }
    .vu-calendar-close {
        font-size: 14px;
        padding: 3px 6px!important;
    }
    .vu-calendar-controls {
        padding: 8px 12px;
        flex-direction: column;
    }
    .vu-calendar-tabs {
        width: 100%;
    }
    .vu-calendar-tab {
        padding: 5px 6px;
        font-size: 9px;
    }
    .vu-calendar-content {
        padding: 10px 12px;
    }
    .vu-calendar-table {
        font-size: 9px;
    }
    .vu-calendar-table th,
    .vu-calendar-table td {
        padding: 5px 6px;
    }
    .title-cell .title {
        font-size: 9px;
    }
    .title-cell .date-range {
        font-size: 8px;
    }
    .vu-badge {
        padding: 2px 5px;
        font-size: 8px;
    }
    .vu-action-btn {
        padding: 3px 6px;
        font-size: 8px;
    }
}
@keyframes vuSpinInline { to { transform:rotate(360deg); } }
@keyframes vuFadeInPanel { from { opacity:0; transform:translateY(6px); } to { opacity:1; transform:translateY(0); } }
#vu-gcal-tab-content {
  animation: vuFadeInPanel 0.2s ease;
  font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
  max-width: 460px;
  margin: 0 auto;
  padding: 8px 4px;
}
.vu-panel-integration {
  display: flex; align-items: center; gap: 10px; margin-bottom: 18px; justify-content: space-between;
}
.vu-panel-integration-icon { display:flex; align-items:center; color:#444; }
.vu-panel-integration-title { font-size:17px; font-weight:600; color:#059669; letter-spacing:-0.01em; flex:1; }
.vu-panel-status-badge {
  display:inline-flex; align-items:center; gap:6px;
  font-size:12px; font-weight:500; color:#059669;
  background:#ecfdf3; border:1px solid #bbf7d0;
  padding:5px 12px; border-radius:99px; margin-bottom:0; white-space:nowrap; flex-shrink:0;
}
.vu-panel-text { font-size:14px; line-height:1.65; color:#555; margin:0 0 22px; }
.vu-panel-btns { display:flex; gap:10px; margin-bottom:0; }
.vu-panel-btn {
  flex:1; padding:11px 14px; border-radius:10px;
  font-size:14px; font-weight:500; cursor:pointer;
  transition:background 0.15s,border-color 0.15s,box-shadow 0.15s;
  display:inline-flex; align-items:center; justify-content:center; gap:8px;
}
.vu-panel-btn:focus-visible { outline:2px solid #1a73e8; outline-offset:2px; }
.vu-panel-btn:disabled { opacity:0.5; cursor:not-allowed; }
.vu-panel-btn-primary { background:#e8f0fe; color:#1a73e8; border:1px solid #c6dafc; }
.vu-panel-btn-primary:hover:not(:disabled) { background:#d2e3fc; border-color:#aecbfa; }
.vu-panel-btn-secondary { background:#fff; color:#555; border:1px solid #ddd; }
.vu-panel-btn-secondary:hover:not(:disabled) { background:#fafafa; border-color:#ccc; }
.vu-panel-btn-action {
  width:100%; margin-bottom:8px; flex:none;
  background:#fff; color:#333; border:1px solid #e0e0e0;
}
.vu-panel-btn-action:hover:not(:disabled) { background:#fafafa; }
.vu-panel-btn-action-primary { background:#e8f0fe; color:#1a73e8; border-color:#c6dafc; }
.vu-panel-btn-action-primary:hover:not(:disabled) { background:#d2e3fc; border-color:#aecbfa; }
.vu-panel-btn-action-danger { color:#b42318; border-color:#f0d0cc; background:#fff; }
.vu-panel-btn-action-danger:hover:not(:disabled) { background:#fff8f7; }
.vu-panel-btn-action-muted { color:#777; border-color:#e8e8e8; margin-bottom:0; }
.vu-panel-btn svg { flex-shrink:0; }
.vu-panel-sync-time {
  font-size:13px; color:#888; margin:0 0 20px; line-height:1.5;
  padding:12px 14px; background:#fafafa; border:1px solid #eee; border-radius:10px;
}
.vu-panel-sync-time span { display:block; font-size:15px; color:#111; font-weight:500; margin-top:4px; }
.vu-panel-status-msg { font-size:12px; color:#888; margin-bottom:10px; line-height:1.4; }
.vu-panel-spinner {
  width:32px; height:32px; margin:20px auto;
  border:2.5px solid #eee; border-top-color:#1a73e8;
  border-radius:50%; animation:vuSpinInline 0.65s linear infinite;
}
.vu-panel-progress-bar-wrap {
  height:4px; background:#f0f0f0; border-radius:99px; margin:0 0 18px; overflow:hidden;
}
.vu-panel-progress-bar {
  height:100%; width:0%; background:#1a73e8; border-radius:99px; transition:width 0.25s ease;
}
.vu-panel-progress-title { font-size:15px; font-weight:600; color:#111; margin:0 0 6px; }
.vu-panel-progress-current {
  font-size:13px; color:#888; margin:0; min-height:36px; line-height:1.45;
  display:-webkit-box; -webkit-line-clamp:2; -webkit-box-orient:vertical; overflow:hidden;
}
.vu-panel-done-icon {
  width:44px; height:44px; margin:20px auto;
  border-radius:50%; background:#ecfdf3; color:#059669;
  display:flex; align-items:center; justify-content:center;
}
.vu-panel-error-icon {
  width:44px; height:44px; margin:0 0 16px;
  border-radius:50%; background:#fef3f2; color:#d92d20;
  display:flex; align-items:center; justify-content:center; font-size:18px; font-weight:600;
}

`;

    function injectStyles() {
        if (document.getElementById('vu-calendar-styles')) return;
        const style = document.createElement('style');
        style.id = 'vu-calendar-styles';
        style.textContent = STYLES;
        document.head.appendChild(style);
    }

    // ============================================================
    // STATE MANAGEMENT
    // ============================================================
    const state = {
        isOpen: false,
        isLoading: false,
        todos: [],
        feeData: [],
        officialTotalPayable: 0,
        semester: null,
        activeTab: 'graded',
        statusFilter: 'all',
        hasUrgentGraded: false,
        hasNewResults: false,
        hasUrgentPendingFees: false,
        resultScores: {},
        resultsLoading: false,
        resultsLoaded: false,
        currentFetchingCourse: '',
        currentFetchingType: '',
        resultsSectionLoading: {
            assignment: false,
            quiz: false,
            gdb: false,
            practical: false
        },
        rawEvents: [],
        gcalSyncing: false,
        gcalSynced: false,
        gcalLastSync: 0,
        gcalProgressMsg: 'Preparing...',
        gcalProgressPercent: 0,
        gcalErrorMsg: ''
    };

    function extractAssignmentResult(p) {
        const scoreEl = p.querySelector('span[id*="lblScore_"], span[id*="lblMarksObtained_"]');
        const rawScore = scoreEl?.innerText?.trim() || '';
        if (rawScore) {
            return rawScore;
        }

        const resultText = p
            .querySelector('div[class*="rightBorder"]')
            ?.innerText?.replace(/\s+/g, ' ')
            .trim() || '';

        const numericMatch = resultText.match(/\b(\d+(?:\.\d+)?)\s*\/\s*(\d+(?:\.\d+)?)\b/);
        if (numericMatch) {
            return numericMatch[1];
        }

        return '';
    }

    function extractResponseCourseCode(doc) {
        const titleText =
            doc.querySelector('.m-subheader__title')?.textContent?.trim() ||
            doc.querySelector('.m-portlet__head-text')?.textContent?.trim() ||
            doc.title ||
            '';
        const match = titleText.match(/([A-Z]{2,4}\d{3,4}[A-Z]?)/);
        return match ? match[1] : '';
    }

    function responseMatchesCourse(doc, courseCode) {
        const responseCourseCode = extractResponseCourseCode(doc);
        if (!responseCourseCode) {
            return true;
        }

        return responseCourseCode.toUpperCase() === courseCode.toUpperCase();
    }

    async function postEventWithRetry(postEvent, target, courseCode, label, attempts = 2) {
        for (let attempt = 1; attempt <= attempts; attempt++) {
            const html = await postEvent(target);
            const doc = new DOMParser().parseFromString(html, 'text/html');
            const responseCourseCode = extractResponseCourseCode(doc);

            if (!responseCourseCode || responseCourseCode.toUpperCase() === courseCode.toUpperCase()) {
                return { html, doc, responseCourseCode };
            }
        }

        return { html: null, doc: null, responseCourseCode: '' };
    }

    // ============================================================
    // DATA FETCHING
    // ============================================================

    async function fetchCalendarPage(forceRefresh = false) {
        try {
            const response = await fetch(CONFIG.CALENDAR_URL, {
                method: 'POST',
                credentials: 'include',
                headers: {
                    'Content-Type': 'application/x-www-form-urlencoded'
                },
                body: '__EVENTTARGET=ctl00$MainContent$tabHClassic'
            });

            if (!response.ok || !response.url.includes('ActivityCalendar')) {
                return null;
            }

            return await response.text();
        } catch (error) {
            return null;
        }
    }

    async function fetchAccountBookPage() {
        try {
            const response = await fetch(CONFIG.ACCOUNT_BOOK_URL, {
                method: 'GET',
                credentials: 'include'
            });

            if (!response.ok || !response.url.includes('AccountBook')) {
                return null;
            }

            return await response.text();
        } catch (error) {
            return null;
        }
    }

    async function fetchAllAssignmentResults() {
        try {
            const homeRes = await fetch(CONFIG.HOME_URL, { credentials: 'include' });
            const homeHtml = await homeRes.text();
            const homeDoc = new DOMParser().parseFromString(homeHtml, 'text/html');

            const viewState = homeDoc.querySelector('#__VIEWSTATE')?.value;
            if (!viewState) {
                return {};
            }

            const courses = [];
            homeDoc.querySelectorAll('#MainContent_divCourseList .m-portlet').forEach(el => {
                const titleText = el.querySelector('h3.m-portlet__head-text')?.innerText?.trim();
                if (!titleText) return;

                const codeMatch = titleText.match(/([A-Z]{2,4}\d{3,4}[A-Z]?)/);
                if (!codeMatch) return;

                const code = codeMatch[0];
                const assignmentTarget = el.querySelector('input[id*="ibtnAssignments"]')?.name;

                if (assignmentTarget) {
                    courses.push({
                        code: code,
                        name: titleText,
                        assignmentTarget: assignmentTarget
                    });
                }
            });

            async function postEvent(target) {
                const fd = new FormData();
                fd.append('__VIEWSTATE', viewState);
                fd.append('__EVENTTARGET', target);

                const res = await fetch(CONFIG.HOME_URL, {
                    method: 'POST',
                    credentials: 'include',
                    body: fd
                });

                return res.text();
            }

            const assignmentScores = {};

            for (const course of courses) {
                state.currentFetchingCourse = course.code;
                state.currentFetchingType = 'Assignments';
                renderContent();
                const { html, doc } = await postEventWithRetry(
                    postEvent,
                    course.assignmentTarget,
                    course.code,
                    'Assignment'
                );

                if (!html || !doc) {
                    continue;
                }

                if (!responseMatchesCourse(doc, course.code)) continue;
                const panels = doc.querySelectorAll('div[id*="_pnl_"]');

                panels.forEach(p => {
                    const srNoEl = p.querySelector('.col-md-1.rightBorder');
                    const srNo = srNoEl?.innerText?.trim() || '';

                    const title = p.querySelector('span[id*="lblTitle_"]')?.innerText?.trim() ||
                        p.querySelector('.m-portlet__head-text')?.innerText?.trim() || '';

                    const scoreEl = p.querySelector('span[id*="lblScore_"], span[id*="lblMarksObtained_"]');
                    const totalEl = p.querySelector('span[id*="lblTotalMarks_"]');
                    const obtained = extractAssignmentResult(p);
                    const total = totalEl?.innerText?.trim() || '';

                    if (obtained && total && scoreEl) {
                        const assignmentIdentifier = srNo || title;
                        const displayTitle = srNo ? `Assignment No. ${srNo}` : title;
                        const key = `${course.code}:assignment:${assignmentIdentifier.toLowerCase().replace(/[^a-z0-9]/g, '')}`;
                        assignmentScores[key] = {
                            title: displayTitle,
                            obtained,
                            total,
                            courseCode: course.code,
                            type: 'assignment'
                        };
                    }
                });
            }

            return assignmentScores;
        } catch (error) {
            return {};
        }
    }

    async function fetchResultScores() {
        try {
            const results = state.todos.filter(t => t.type === 'result');
            if (results.length === 0) {
                return {};
            }

            const neededScores = {};
            results.forEach(r => {
                if (r.courseCode && r.subType) {
                    const key = `${r.courseCode}:${r.subType}`;
                    neededScores[key] = { courseCode: r.courseCode, type: r.subType };
                }
            });

            const uniqueCourses = [...new Set(results.map(r => r.courseCode).filter(Boolean))];

            const homeRes = await fetch(CONFIG.HOME_URL, { credentials: 'include' });
            const homeHtml = await homeRes.text();
            const homeDoc = new DOMParser().parseFromString(homeHtml, 'text/html');

            const viewState = homeDoc.querySelector('#__VIEWSTATE')?.value;
            if (!viewState) {
                return null;
            }

            const courses = [];
            homeDoc.querySelectorAll('#MainContent_divCourseList .m-portlet').forEach(el => {
                const titleText = el.querySelector('h3.m-portlet__head-text')?.innerText?.trim();
                if (!titleText) return;

                const codeMatch = titleText.match(/([A-Z]{2,4}\d{3,4}[A-Z]?)/);
                if (!codeMatch) return;

                const code = codeMatch[0];
                if (!uniqueCourses.includes(code)) return;

                courses.push({
                    code: code,
                    name: titleText,
                    gdbTarget: neededScores[`${code}:gdb`] ? el.querySelector('input[id*="ibtnGDB"]')?.name : null,
                    quizTarget: neededScores[`${code}:quiz`] ? el.querySelector('input[id*="ibtnQuizzes"]')?.name : null
                });
            });

            async function postEvent(target) {
                const fd = new FormData();
                fd.append('__VIEWSTATE', viewState);
                fd.append('__EVENTTARGET', target);

                const res = await fetch(CONFIG.HOME_URL, {
                    method: 'POST',
                    credentials: 'include',
                    body: fd
                });

                return res.text();
            }

            const scoresMap = {};

            for (const course of courses) {
                if (course.gdbTarget && neededScores[`${course.code}:gdb`]) {
                    state.currentFetchingCourse = course.code;
                    state.currentFetchingType = 'GDB';
                    renderContent();
                    const { html, doc } = await postEventWithRetry(
                        postEvent,
                        course.gdbTarget,
                        course.code,
                        'GDB'
                    );
                    if (!html || !doc) continue;
                    if (!responseMatchesCourse(doc, course.code)) continue;
                    const panels = doc.querySelectorAll('div[id*="_pnl_"]');

                    panels.forEach(p => {
                        const title = p.querySelector('span[id*="lblTitle_"]')?.innerText?.trim() || '';
                        const obtained = p.querySelector('span[id*="lblMarksObtained_"]')?.innerText?.trim() || '';
                        const total = p.querySelector('span[id*="Label9_"]')?.innerText?.trim() || '';

                        if (title && obtained && total) {
                            const key = `${course.code}:gdb:${title.toLowerCase().replace(/[^a-z0-9]/g, '')}`;
                            scoresMap[key] = { title, obtained, total, courseCode: course.code, type: 'gdb' };
                        }
                    });
                }

                if (course.quizTarget && neededScores[`${course.code}:quiz`]) {
                    state.currentFetchingCourse = course.code;
                    state.currentFetchingType = 'Quiz';
                    renderContent();
                    const { html, doc } = await postEventWithRetry(
                        postEvent,
                        course.quizTarget,
                        course.code,
                        'Quiz'
                    );
                    if (!html || !doc) continue;
                    if (!responseMatchesCourse(doc, course.code)) continue;
                    const panels = doc.querySelectorAll('div[id*="_pnl_"]');

                    panels.forEach(p => {
                        const title = p.querySelector('span[id*="lblTitle_"]')?.innerText?.trim() || '';
                        const obtained = p.querySelector('span[id*="lblGetMarks_"]')?.innerText?.trim() ||
                            p.querySelector('span[id*="lblScore_"]')?.innerText?.trim() || '';
                        const total = p.querySelector('span[id*="lblTotalMarks_"]')?.innerText?.trim() || '';

                        if (title && obtained && total) {
                            const key = `${course.code}:quiz:${title.toLowerCase().replace(/[^a-z0-9]/g, '')}`;
                            scoresMap[key] = { title, obtained, total, courseCode: course.code, type: 'quiz' };
                        }
                    });
                }
            }

            return scoresMap;
        } catch (error) {
            return null;
        }
    }

    function parseAccountBookData(html) {
        if (!html) return { feeItems: [], officialTotalPayable: 0 };

        const parser = new DOMParser();
        const doc = parser.parseFromString(html, 'text/html');
        const feeItems = [];

        let index = 0;
        while (true) {
            const challanNoEl = doc.querySelector(`#MainContent_grdaccountbook_lbl_${index}`);
            if (!challanNoEl) break;

            const payableEl = doc.querySelector(`#MainContent_grdaccountbook_lblPayableAmount_${index}`);
            const paidEl = doc.querySelector(`#MainContent_grdaccountbook_lblPaidAmount_${index}`);
            const balanceEl = doc.querySelector(`#MainContent_grdaccountbook_lblrbalance_${index}`);
            const dueDateEl = doc.querySelector(`#MainContent_grdaccountbook_lblduedate_${index}`);
            const challanTypeEl = doc.querySelector(`#MainContent_grdaccountbook_lblDChallanType_${index}`);

            const printBtnEl = doc.querySelector(`#MainContent_grdaccountbook_hlPrint_${index}`);
            let printUrl = '';
            if (printBtnEl) {
                const onclick = printBtnEl.getAttribute('onclick') || '';
                const urlMatch = onclick.match(/ChallanPrintPreview\.aspx\?[^"')]+/);
                if (urlMatch) {
                    printUrl = 'https://vulms.vu.edu.pk/AccountBook/' + urlMatch[0];
                }
            }

            const payable = parseInt(payableEl?.textContent?.trim() || '0', 10);
            const paid = parseInt(paidEl?.textContent?.trim() || '0', 10);

            const isPending = paid < payable;
            const amountDue = isPending ? (payable - paid) : 0;

            feeItems.push({
                challanNo: challanNoEl?.textContent?.trim() || '',
                challanType: challanTypeEl?.textContent?.trim() || '',
                payable,
                paid,
                amountDue,
                dueDate: dueDateEl?.textContent?.trim() || '',
                printUrl,
                isPending
            });

            index++;
        }

        const totalPayableEl = doc.querySelector('#lblTotalPayableBalaceTile');
        let officialTotalPayable = 0;
        if (totalPayableEl) {
            const match = totalPayableEl.textContent.match(/Rs\s*([\d,]+)/i);
            if (match) {
                officialTotalPayable = parseInt(match[1].replace(/,/g, ''), 10);
            }
        }

        return { feeItems, officialTotalPayable };
    }

    // ============================================================
    // HTML PARSING
    // ============================================================

    function parseCalendarData(html) {
        if (!html) return [];

        const jsonMatch = html.match(/JsonData = (\[[^\]]+\])/);
        if (!jsonMatch) {
            return [];
        }

        let calendarData;
        try {
            calendarData = JSON.parse(jsonMatch[1]);
            state.rawEvents = calendarData;
        } catch (e) {
            return [];
        }

        const now = Date.now();
        const parser = new DOMParser();
        const doc = parser.parseFromString(html, 'text/html');

        let semesterFromItems = null;
        if (calendarData.length > 0 && calendarData[0].Semester) {
            semesterFromItems = calendarData[0].Semester;
        }

        const semesterEl = doc.querySelector('#MainContent_lblSemester, .semester-info, #MainContent_ddlSemester option[selected]');
        const semesterFromPage = semesterEl?.textContent?.trim() || null;

        const titleEl = doc.querySelector('.m-portlet__head-text, h1, h2');
        const semesterFromTitle = titleEl?.textContent?.match(/Fall|Spring|Summer\s*\d{4}/i)?.[0] || null;

        state.semester = semesterFromItems || semesterFromPage || semesterFromTitle || 'Current Semester';

        const parseTable = (selector) => {
            return Array.from(doc.querySelectorAll(`${selector} tbody tr`))
                .filter(row => !row.querySelector('th') && row.querySelectorAll('td').length >= 2)
                .map(row => {
                    const cells = Array.from(row.querySelectorAll('td'));
                    return {
                        courseCode: cells[0]?.textContent?.trim() || '',
                        title: cells[1]?.textContent?.trim() || '',
                        cleanTitle: cells[1]?.textContent?.trim().replace(/[^a-zA-Z0-9]/g, '')
                    };
                });
        };

        const todoTables = {
            assignment: parseTable('#MainContent_gvAssignmentsToDo'),
            quiz: parseTable('#MainContent_gvQuizzesToDo'),
            gdb: parseTable('#MainContent_gvGDBsToDo'),
            practical: parseTable('#MainContent_gvPracticalsToDo')
        };

        const todos = calendarData.map(item => {
            let type = CONFIG.COLOR_MAP[item.borderColor];
            let subType = null;
            const courseCode = item.coursecode;
            let title = item.title;

            if (courseCode?.trim().length) {
                title = title.replace(`${courseCode}:`, '');
            }

            if (!type && title.toLowerCase().includes('practical')) {
                type = 'practical';
            }

            const lowerTitle = title.toLowerCase();
            if (lowerTitle.includes('(result)')) {
                type = 'result';
                if (lowerTitle.includes('assignment')) subType = 'assignment';
                else if (lowerTitle.includes('discussion') || lowerTitle.includes('gdb')) subType = 'gdb';
                else if (lowerTitle.includes('quiz')) subType = 'quiz';
                else if (lowerTitle.includes('practical')) subType = 'practical';
                else return null;
            }

            if (!type) return null;

            const getFirstNonEmpty = (...values) => {
                const filtered = values.filter(v => v && v.toString().trim().length > 0);
                return filtered.length > 0 ? filtered[0] : values[0];
            };

            const isAllDay = item.allDay === 'true';
            const rawStartDate = getFirstNonEmpty(item.start, item.Start);
            const startDate = new Date(rawStartDate);
            const endDate = new Date(item.end);

            if (isAllDay) {
                endDate.setDate(endDate.getDate() - 1);
                endDate.setHours(23, 59, 59, 999);
                startDate.setHours(0, 0, 0, 0);
            }

            const isOpen = startDate.getTime() <= now && endDate.getTime() >= now;

            let isSubmitted = false;
            const todoList = todoTables[type];
            if (todoList?.length) {
                const cleanedTitle = (title || '').replace(/[^a-zA-Z0-9]/g, '').toLowerCase();
                const foundIndex = todoList.findIndex(t => {
                    const todoCourse = (t.courseCode || '').trim().toLowerCase();
                    const thisCourse = (courseCode || '').trim().toLowerCase();
                    const todoClean = (t.cleanTitle || '').toLowerCase();
                    return todoCourse === thisCourse && cleanedTitle.includes(todoClean);
                });
                isSubmitted = isOpen && foundIndex === -1;
            }

            return {
                type,
                subType,
                title,
                expired: item.IsExpired === '1',
                submitted: isSubmitted,
                allDay: isAllDay,
                startDate,
                open: isOpen,
                endDate,
                semester: item.Semester,
                courseCode,
                url: item.url,
                important: isOpen && endDate.getTime() - now < CONFIG.MS_PER_DAY
            };
        }).filter(Boolean).sort((a, b) => a.endDate.getTime() - b.endDate.getTime());

        const gradedItems = todos.filter(t =>
            ['assignment', 'gdb', 'quiz', 'practical'].includes(t.type) &&
            t.endDate.getTime() - now > 0 && !t.expired && !t.submitted
        );
        state.hasUrgentGraded = gradedItems.length > 0 &&
            gradedItems.some(t => t.endDate.getTime() - now < CONFIG.MS_PER_DAY);

        const THREE_DAYS_MS = CONFIG.MS_PER_DAY * 3;
        const resultItems = todos.filter(t =>
            t.type === 'result' &&
            ['assignment', 'gdb', 'quiz', 'practical'].includes(t.subType)
        );
        state.hasNewResults = resultItems.length > 0 &&
            resultItems.some(t => now - t.startDate.getTime() < THREE_DAYS_MS);

        return todos;
    }

    // ============================================================
    // TIME FORMATTING
    // ============================================================

    function formatTimeRemaining(date) {
        const now = new Date();
        const diff = date.getTime() - now.getTime();

        if (diff <= 0) return 'Expired';

        const days = Math.floor(diff / CONFIG.MS_PER_DAY);
        let hours = Math.floor((diff / CONFIG.MS_PER_HOUR) % 24);
        const minutes = Math.floor((diff / CONFIG.MS_PER_MINUTE) % 60);

        if (days > 1) return `${days} days`;
        if (days === 1) hours += 24;
        if (hours > 0) return `${hours} hour${hours > 1 ? 's' : ''}`;
        return `${minutes} minute${minutes > 1 ? 's' : ''}`;
    }

    function formatDate(date) {
        return date.toLocaleDateString(undefined, {
            year: 'numeric',
            month: 'short',
            day: 'numeric'
        });
    }

    function parseFeeDueDate(dueDateText) {
        if (!dueDateText) return null;
        const raw = String(dueDateText).trim();
        if (!raw) return null;

        const d1 = new Date(raw);
        if (!isNaN(d1.getTime())) return d1;

        const m = raw.match(/^(\d{1,2})[\/-](\d{1,2})[\/-](\d{2,4})$/);
        if (m) {
            const day = parseInt(m[1], 10);
            const month = parseInt(m[2], 10) - 1;
            let year = parseInt(m[3], 10);
            if (year < 100) year += 2000;
            const d2 = new Date(year, month, day);
            if (!isNaN(d2.getTime())) return d2;
        }

        return null;
    }

    // ============================================================
    // UI RENDERING
    // ============================================================

    function extractStudentName() {
        const navLink = document.querySelector('.m-nav__link-text');
        if (!navLink) return 'To Do Calendar';

        const text = navLink.textContent || '';
        const match = text.match(/\(([^)]+)\)/);
        if (match) {
            return match[1].trim();
        }
        return 'To Do Calendar';
    }

    function createCalendarUI() {
        if (document.querySelector('.vu-calendar-toggle')) return;

        const container = document.createElement('div');
        container.className = 'vu-calendar-container';

        if (document.getElementById('darkModeStyle')) {
            container.classList.add('dark-mode');
        }

        const studentName = extractStudentName();

        container.innerHTML = `
      <div class="vu-calendar-overlay"></div>
      <button class="vu-calendar-toggle">
        <span class="vu-calendar-toggle-ribbon"><span class="vu-calendar-toggle-ribbon-text">New</span></span>
        <span class="vu-calendar-toggle-label"><span class="urgency-dot"></span><span>To Do Calendar</span></span>
      </button>
      <div class="vu-calendar-panel">
        <div class="vu-calendar-header">
          <h1>To Do Calendar - ${studentName}</h1>
          <div style="display: flex; gap: 8px; align-items: center; position: relative;">
            <div style="position: relative;">
              <button class="vu-calendar-download-pdf" title="Download PDF">
                <span class="new-badge">New</span>
                <svg class="download-icon" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                  <path d="M21 15v4a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2v-4"></path>
                  <polyline points="7 10 12 15 17 10"></polyline>
                  <line x1="12" y1="15" x2="12" y2="3"></line>
                </svg>
                <span>Download PDF</span>
              </button>
              <div class="vu-pdf-dropdown">
                <button class="vu-pdf-dropdown-option" data-pdf-type="activities">
                  <span>Download Activities</span>
                </button>
                <button class="vu-pdf-dropdown-option" data-pdf-type="results">
                  <span>Download Results</span>
                </button>
                <button class="vu-pdf-dropdown-option" data-pdf-type="fees">
                  <span>Download Fee Challans</span>
                </button>
                <button class="vu-pdf-dropdown-option" data-pdf-type="all">
                  <span>Download All (Combined)</span>
                </button>
              </div>
            </div>
            <button class="vu-calendar-close" title="Close">✕</button>
          </div>
        </div>
        <div class="vu-calendar-controls">
          <div class="vu-calendar-tabs">
            <button class="vu-calendar-tab active" data-tab="graded">
              <span>Activities</span>
            </button>
            <button class="vu-calendar-tab" data-tab="results">
              <span>Results</span>
            </button>
            <button class="vu-calendar-tab" data-tab="fee">
              <span>Pending Fees</span>
            </button>
          </div>
          <button class="vu-calendar-refresh" title="Refresh"><span class="refresh-icon">↻</span> Refresh</button>
        </div>
        <div class="vu-calendar-content">
          <div class="vu-calendar-loading">
            <div class="vu-spinner"></div>
          </div>
        </div>
      </div>
    `;

        const toggleBtn = container.querySelector('.vu-calendar-toggle');
        if (toggleBtn) {
            toggleBtn.style.position = 'fixed';
            toggleBtn.style.top = '50%';
            toggleBtn.style.right = '0';
            toggleBtn.style.bottom = 'auto';
            toggleBtn.style.left = 'auto';
            toggleBtn.style.transform = 'translate3d(0, -50%, 0)';
            toggleBtn.style.zIndex = '999999';
            toggleBtn.style.margin = '0';
            toggleBtn.style.lineHeight = '1';
        }

        document.body.appendChild(container);
        attachEventListeners(container);

        const observer = new MutationObserver(() => {
            const isDarkMode = !!document.getElementById('darkModeStyle');
            container.classList.toggle('dark-mode', isDarkMode);
        });
        observer.observe(document.head, { childList: true, subtree: true });
    }

    function attachEventListeners(container) {
        const toggle = container.querySelector('.vu-calendar-toggle');
        const overlay = container.querySelector('.vu-calendar-overlay');
        const panel = container.querySelector('.vu-calendar-panel');
        const tabs = container.querySelectorAll('.vu-calendar-tab');
        const refresh = container.querySelector('.vu-calendar-refresh');
        const downloadPdf = container.querySelector('.vu-calendar-download-pdf');
        const closeBtn = container.querySelector('.vu-calendar-close');
        const pdfDropdown = container.querySelector('.vu-pdf-dropdown');
        const pdfDropdownOptions = container.querySelectorAll('.vu-pdf-dropdown-option');

        toggle.addEventListener('click', async (e) => {
            e.stopPropagation();
            state.isOpen = !state.isOpen;
            panel.classList.toggle('open', state.isOpen);
            toggle.classList.toggle('shifted', state.isOpen);
            overlay.classList.toggle('visible', state.isOpen);

            if (state.isOpen) {
                state.activeTab = 'graded';
                tabs.forEach(t => t.classList.remove('active'));
                container.querySelector('[data-tab="graded"]').classList.add('active');

                if (state.todos.length === 0 && !state.isLoading) {
                    await loadData();
                }

                renderContent();
            }
        });

        closeBtn.addEventListener('click', (e) => {
            e.stopPropagation();
            state.isOpen = false;
            panel.classList.remove('open');
            toggle.classList.remove('shifted');
            overlay.classList.remove('visible');
        });

        overlay.addEventListener('click', (e) => {
            e.stopPropagation();
            state.isOpen = false;
            panel.classList.remove('open');
            toggle.classList.remove('shifted');
            overlay.classList.remove('visible');
        });

        panel.addEventListener('click', (e) => {
            e.stopPropagation();
        });

        tabs.forEach(tab => {
            tab.addEventListener('click', (e) => {
                e.stopPropagation();
                tabs.forEach(t => t.classList.remove('active'));
                tab.classList.add('active');
                state.activeTab = tab.dataset.tab;
                renderContent();
            });
        });

        refresh.addEventListener('click', async (e) => {
            e.stopPropagation();
            refresh.classList.add('loading');
            await loadData(true);
            refresh.classList.remove('loading');
        });

        downloadPdf.addEventListener('click', (e) => {
            e.stopPropagation();
            pdfDropdown.classList.toggle('visible');
        });

        document.addEventListener('click', (e) => {
            if (!downloadPdf.contains(e.target) && !pdfDropdown.contains(e.target)) {
                pdfDropdown.classList.remove('visible');
            }
        });

        pdfDropdownOptions.forEach(option => {
            option.addEventListener('click', (e) => {
                e.stopPropagation();
                const pdfType = option.dataset.pdfType;
                pdfDropdown.classList.remove('visible');
                generatePDFByType(pdfType);
            });
        });
    }

    function generatePDFByType(pdfType) {
        var lib = window.jspdf || window.jsPDF;
        if (typeof lib === 'undefined') {
            var s = document.createElement('script');
            s.src = 'https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js';
            s.onload = function() {
                if (pdfType === 'all') generateCombinedPDF();
                else generatePDF(pdfType);
            };
            document.head.appendChild(s);
            return;
        }

        if (pdfType === 'all') {
            generateCombinedPDF();
        } else {
            generatePDF(pdfType);
        }
    }

    function addWatermark(doc, pageWidth, pageHeight) {
        doc.saveGraphicsState();
        doc.setTextColor(200, 200, 200);
        doc.setFontSize(50);
        doc.setFont(undefined, 'bold');
        const centerX = pageWidth / 2;
        const centerY = pageHeight / 2;
        doc.setGState(new doc.GState({ opacity: 0.1 }));
        doc.text('VU TOOLKIT', centerX, centerY, {
            align: 'center',
            angle: 45
        });
        doc.restoreGraphicsState();
    }

    async function generateCombinedPDF() {
        try {
            const lib = window.jspdf || window.jsPDF;
            const jsPDF = lib.jsPDF || lib;
            const doc = new jsPDF();

            const studentName = extractStudentName();
            const currentDate = new Date().toLocaleDateString('en-US', {
                year: 'numeric',
                month: 'long',
                day: 'numeric'
            });

            let yPos = 20;
            const pageWidth = doc.internal.pageSize.getWidth();
            const pageHeight = doc.internal.pageSize.getHeight();
            const margin = 5;
            const contentWidth = pageWidth - (2 * margin);
            const semester = state.semester || 'Current Semester';

            function addHeader(doc, title) {
                doc.setFillColor(0, 98, 194);
                doc.rect(0, 0, pageWidth, 18, 'F');
                doc.setTextColor(255, 255, 255);
                doc.setFontSize(10);
                doc.setFont(undefined, 'bolditalic');
                doc.text(`Student: ${studentName}`, margin, 10);
                doc.setFontSize(12);
                doc.text(`${title} - ${semester}`, pageWidth / 2, 10, { align: 'center' });
                doc.setFontSize(10);
                doc.text(`Generated on: ${currentDate}`, pageWidth - margin, 10, { align: 'right' });
                doc.setTextColor(0, 0, 0);
            }

            addHeader(doc, 'Activities Calendar');
            yPos = 28;
            yPos = generateGradedPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            const activitiesPages = { start: 1, end: doc.internal.pages.length - 1 };

            doc.addPage();
            addHeader(doc, 'Results');
            yPos = 28;
            yPos = generateResultsPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            const resultsPages = { start: activitiesPages.end + 1, end: doc.internal.pages.length - 1 };

            doc.addPage();
            addHeader(doc, 'Pending Fee Challans');
            yPos = 28;
            yPos = generateFeePDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            const feesPages = { start: resultsPages.end + 1, end: doc.internal.pages.length - 1 };

            const totalPages = doc.internal.pages.length - 1;

            for (let i = 1; i <= totalPages; i++) {
                doc.setPage(i);
                addWatermark(doc, pageWidth, pageHeight);

                if (i >= activitiesPages.start && i <= activitiesPages.end && i > 1) {
                    addHeader(doc, 'Activities Calendar');
                } else if (i >= resultsPages.start && i <= resultsPages.end && i > resultsPages.start) {
                    addHeader(doc, 'Results');
                } else if (i >= feesPages.start && i <= feesPages.end && i > feesPages.start) {
                    addHeader(doc, 'Pending Fee Challans');
                }

                doc.setFillColor(230, 240, 250);
                doc.rect(0, pageHeight - 12, pageWidth, 12, 'F');
                doc.setFontSize(8);
                doc.setTextColor(60, 60, 60);
                doc.setFont(undefined, 'italic');
                doc.text('Made With Love By Paradox', margin, pageHeight - 5);
                doc.text('Generated by VU Toolkit App', pageWidth / 2, pageHeight - 5, { align: 'center' });
                doc.text(`Page ${i} of ${totalPages}`, pageWidth - margin, pageHeight - 5, { align: 'right' });
            }

            const fileName = `TO_DO_Complete_${studentName}.pdf`;
            const bridge = window.AndroidPdfBridge || window.AndroidPDF;
            if (bridge && (typeof bridge.saveBase64Pdf === 'function' || typeof bridge.saveBase64File === 'function')) {
                const base64Uri = doc.output('datauristring');
                if (typeof bridge.saveBase64Pdf === 'function') {
                    bridge.saveBase64Pdf(base64Uri, fileName);
                } else {
                    bridge.saveBase64File(base64Uri, fileName);
                }
            } else {
                doc.save(fileName);
            }
        } catch (error) {
            alert('Failed to generate PDF. Please try again.');
        }
    }

    async function generatePDF(pdfType = null) {
        try {
            const lib = window.jspdf || window.jsPDF;
            const jsPDF = lib.jsPDF || lib;
            const doc = new jsPDF();

            const studentName = extractStudentName();
            const currentDate = new Date().toLocaleDateString('en-US', {
                year: 'numeric',
                month: 'long',
                day: 'numeric'
            });

            let yPos = 20;
            const pageWidth = doc.internal.pageSize.getWidth();
            const pageHeight = doc.internal.pageSize.getHeight();
            const margin = 5;
            const contentWidth = pageWidth - (2 * margin);

            doc.setFillColor(0, 98, 194);
            doc.rect(0, 0, pageWidth, 16, 'F');
            doc.setTextColor(255, 255, 255);
            doc.setFontSize(10);
            doc.setFont(undefined, 'bolditalic');
            doc.text(`Student ID: ${studentName}`, margin, 10);

            doc.setFontSize(12);
            doc.setFont(undefined, 'bolditalic');
            const activeTab = pdfType || state.activeTab;
            const tabName = activeTab === 'graded' || activeTab === 'activities' ? 'Activities Calendar' :
                           activeTab === 'results' ? 'Results' : 'Pending Fee Challans';
            const semester = state.semester || 'Current Semester';
            doc.text(`${tabName} - ${semester}`, pageWidth / 2, 10, { align: 'center' });

            doc.setFontSize(10);
            doc.setFont(undefined, 'bolditalic');
            doc.text(`Generated on: ${currentDate}`, pageWidth - margin, 10, { align: 'right' });

            doc.setTextColor(0, 0, 0);
            yPos = 28;

            if (activeTab === 'graded' || activeTab === 'activities') {
                yPos = generateGradedPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            } else if (activeTab === 'results') {
                yPos = generateResultsPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            } else if (activeTab === 'fee' || activeTab === 'fees') {
                yPos = generateFeePDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight);
            }

            const totalPages = doc.internal.pages.length - 1;
            for (let i = 1; i <= totalPages; i++) {
                doc.setPage(i);
                addWatermark(doc, pageWidth, pageHeight);
                doc.setFillColor(230, 240, 250);
                doc.rect(0, pageHeight - 12, pageWidth, 12, 'F');
                doc.setFontSize(8);
                doc.setTextColor(60, 60, 60);
                doc.setFont(undefined, 'italic');
                doc.text('Made With Love By Paradox', margin, pageHeight - 5);
                doc.text('Generated by VU Toolkit App', pageWidth / 2, pageHeight - 5, { align: 'center' });
                doc.text(`Page ${i} of ${totalPages}`, pageWidth - margin, pageHeight - 5, { align: 'right' });
            }

            const tabNameFile = activeTab === 'graded' || activeTab === 'activities' ? 'Activities' :
                           activeTab === 'results' ? 'Results' : 'Fees';
            const fileName = `TO_DO_${tabNameFile}_${studentName}.pdf`;
            const bridge = window.AndroidPdfBridge || window.AndroidPDF;
            if (bridge && (typeof bridge.saveBase64Pdf === 'function' || typeof bridge.saveBase64File === 'function')) {
                const base64Uri = doc.output('datauristring');
                if (typeof bridge.saveBase64Pdf === 'function') {
                    bridge.saveBase64Pdf(base64Uri, fileName);
                } else {
                    bridge.saveBase64File(base64Uri, fileName);
                }
            } else {
                doc.save(fileName);
            }

        } catch (error) {
            alert('Failed to generate PDF. Please try again.');
        }
    }

    function generateGradedPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight) {
        const filtered = state.todos.filter(t => !t.expired);
        const assignments = filtered.filter(t => t.type === 'assignment');
        const quizzes = filtered.filter(t => t.type === 'quiz');
        const gdbs = filtered.filter(t => t.type === 'gdb');
        const practicals = filtered.filter(t => t.type === 'practical');

        yPos = addActivityTableSection(doc, 'Assignments', assignments, yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addActivityTableSection(doc, 'Quizzes', quizzes, yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addActivityTableSection(doc, 'GDB', gdbs, yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addActivityTableSection(doc, 'Practicals', practicals, yPos, margin, contentWidth, pageWidth, pageHeight);

        return yPos;
    }

    function addActivityTableSection(doc, title, items, yPos, margin, contentWidth, pageWidth, pageHeight) {
        if (yPos > pageHeight - 60) {
            doc.addPage();
            yPos = 20;
        }

        doc.setFillColor(0, 98, 194);
        doc.rect(margin, yPos - 5, contentWidth, 8, 'F');
        doc.setTextColor(255, 255, 255);
        doc.setFontSize(11);
        doc.setFont(undefined, 'bold');
        doc.text(title, margin + 2, yPos);
        doc.setTextColor(0, 0, 0);
        yPos += 8;

        if (items.length === 0) {
            doc.setFontSize(9);
            doc.setFont(undefined, 'italic');
            doc.setTextColor(128, 128, 128);
            doc.text(`No ${title.toLowerCase()} pending.`, margin + 2, yPos);
            doc.setTextColor(0, 0, 0);
            yPos += 10;
        } else {
            const colWidths = [25, 75, 30, 30, 30];
            const headers = ['Course', 'Title', 'Start Date', 'Due Date', 'Time Left'];

            doc.setFillColor(240, 240, 240);
            doc.rect(margin, yPos, contentWidth, 7, 'F');

            doc.setFontSize(8);
            doc.setFont(undefined, 'bold');
            let xPos = margin + 1;
            headers.forEach((header, i) => {
                doc.text(header, xPos, yPos + 5);
                xPos += colWidths[i];
            });
            yPos += 7;

            doc.setFont(undefined, 'normal');
            items.forEach((item, index) => {
                if (yPos > pageHeight - 30) {
                    doc.addPage();
                    yPos = 20;
                }

                const rowHeight = 12;

                if (index % 2 === 0) {
                    doc.setFillColor(250, 250, 250);
                    doc.rect(margin, yPos, contentWidth, rowHeight, 'F');
                }

                doc.setDrawColor(220, 220, 220);
                doc.rect(margin, yPos, contentWidth, rowHeight, 'S');

                const courseCode = item.courseCode || '-';
                const itemTitle = item.title || '';
                const startDate = formatDate(item.startDate);
                const endDate = formatDate(item.endDate);
                const timeLeft = formatTimeRemaining(item.endDate);

                doc.setTextColor(0, 0, 0);

                xPos = margin + 1;
                doc.setFont(undefined, 'bold');
                doc.text(courseCode, xPos, yPos + 8, { maxWidth: colWidths[0] - 2 });

                xPos += colWidths[0];
                doc.setFont(undefined, 'normal');
                const titleLines = doc.splitTextToSize(itemTitle, colWidths[1] - 2);
                doc.text(titleLines[0] + (titleLines.length > 1 ? '...' : ''), xPos, yPos + 8);

                xPos += colWidths[1];
                doc.setTextColor(34, 197, 94);
                doc.text(startDate, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[2];
                doc.setTextColor(239, 68, 68);
                doc.text(endDate, xPos, yPos + 8, { maxWidth: colWidths[3] - 2 });
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[3];
                if (timeLeft === 'Expired') {
                    doc.setTextColor(239, 68, 68);
                } else if (item.important) {
                    doc.setTextColor(245, 158, 11);
                } else {
                    doc.setTextColor(34, 197, 94);
                }
                doc.text(timeLeft, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                yPos += rowHeight;
            });

            yPos += 5;
        }

        yPos += 5;
        return yPos;
    }

    function generateResultsPDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight) {
        const assignmentResults = Object.values(state.resultScores)
            .filter(score => score.type === 'assignment' && score.obtained !== 'N/A');

        const resultItems = state.todos.filter(t =>
            t.type === 'result' &&
            ['gdb', 'quiz', 'practical'].includes(t.subType)
        );

        const quizzes = resultItems.filter(t => t.subType === 'quiz');
        const gdbs = resultItems.filter(t => t.subType === 'gdb');
        const practicals = resultItems.filter(t => t.subType === 'practical');

        yPos = addAssignmentResultTableSection(doc, 'Assignment Results', assignmentResults, yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addResultTableSection(doc, 'Quiz Results', quizzes, 'quiz', yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addResultTableSection(doc, 'GDB Results', gdbs, 'gdb', yPos, margin, contentWidth, pageWidth, pageHeight);
        yPos = addResultTableSection(doc, 'Practical Results', practicals, 'practical', yPos, margin, contentWidth, pageWidth, pageHeight);

        return yPos;
    }

    function addAssignmentResultTableSection(doc, title, assignmentResults, yPos, margin, contentWidth, pageWidth, pageHeight) {
        if (yPos > pageHeight - 60) {
            doc.addPage();
            yPos = 20;
        }

        doc.setFillColor(0, 98, 194);
        doc.rect(margin, yPos - 5, contentWidth, 8, 'F');
        doc.setTextColor(255, 255, 255);
        doc.setFontSize(11);
        doc.setFont(undefined, 'bold');
        doc.text(title, margin + 2, yPos);
        doc.setTextColor(0, 0, 0);
        yPos += 8;

        if (assignmentResults.length === 0) {
            doc.setFontSize(9);
            doc.setFont(undefined, 'italic');
            doc.setTextColor(128, 128, 128);
            doc.text('No assignment results available.', margin + 2, yPos);
            doc.setTextColor(0, 0, 0);
            yPos += 10;
        } else {
            const colWidths = [25, 110, 35];
            const headers = ['Course', 'Title', 'Score'];

            doc.setFillColor(240, 240, 240);
            doc.rect(margin, yPos, contentWidth, 7, 'F');

            doc.setFontSize(8);
            doc.setFont(undefined, 'bold');
            let xPos = margin + 1;
            headers.forEach((header, i) => {
                doc.text(header, xPos, yPos + 5);
                xPos += colWidths[i];
            });
            yPos += 7;

            doc.setFont(undefined, 'normal');
            assignmentResults.forEach((score, index) => {
                if (yPos > pageHeight - 30) {
                    doc.addPage();
                    yPos = 20;
                }

                const rowHeight = 12;

                if (index % 2 === 0) {
                    doc.setFillColor(250, 250, 250);
                    doc.rect(margin, yPos, contentWidth, rowHeight, 'F');
                }

                doc.setDrawColor(220, 220, 220);
                doc.rect(margin, yPos, contentWidth, rowHeight, 'S');

                const courseCode = score.courseCode || '-';
                const cleanTitle = (score.title || '-').replace(/^\d+\s*-\s*/, '');
                const obtained = parseFloat(score.obtained) || 0;
                const total = parseFloat(score.total) || 0;
                const scoreText = `${score.obtained} / ${score.total}`;
                const isPassing = total > 0 && obtained >= (total * 0.5);

                xPos = margin + 1;
                doc.setFont(undefined, 'bold');
                doc.setTextColor(0, 98, 194);
                doc.text(courseCode, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[0];
                doc.setFont(undefined, 'normal');
                const titleLines = doc.splitTextToSize(cleanTitle, colWidths[1] - 2);
                doc.text(titleLines[0] + (titleLines.length > 1 ? '...' : ''), xPos, yPos + 8);

                xPos += colWidths[1];
                doc.setFont(undefined, 'bold');
                if (isPassing) {
                    doc.setTextColor(34, 197, 94);
                } else {
                    doc.setTextColor(239, 68, 68);
                }
                doc.text(scoreText, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                yPos += rowHeight;
            });

            yPos += 5;
        }

        yPos += 5;
        return yPos;
    }

    function addResultTableSection(doc, title, items, type, yPos, margin, contentWidth, pageWidth, pageHeight) {
        if (yPos > pageHeight - 60) {
            doc.addPage();
            yPos = 20;
        }

        doc.setFillColor(0, 98, 194);
        doc.rect(margin, yPos - 5, contentWidth, 8, 'F');
        doc.setTextColor(255, 255, 255);
        doc.setFontSize(11);
        doc.setFont(undefined, 'bold');
        doc.text(title, margin + 2, yPos);
        doc.setTextColor(0, 0, 0);
        yPos += 8;

        if (items.length === 0) {
            doc.setFontSize(9);
            doc.setFont(undefined, 'italic');
            doc.setTextColor(128, 128, 128);
            doc.text(`No ${title.toLowerCase()} available.`, margin + 2, yPos);
            doc.setTextColor(0, 0, 0);
            yPos += 10;
        } else {
            const colWidths = [25, 75, 35, 35];
            const headers = ['Course', 'Title', 'Score', 'Announced'];

            doc.setFillColor(240, 240, 240);
            doc.rect(margin, yPos, contentWidth, 7, 'F');

            doc.setFontSize(8);
            doc.setFont(undefined, 'bold');
            let xPos = margin + 1;
            headers.forEach((header, i) => {
                doc.text(header, xPos, yPos + 5);
                xPos += colWidths[i];
            });
            yPos += 7;

            doc.setFont(undefined, 'normal');
            items.forEach((item, index) => {
                if (yPos > pageHeight - 30) {
                    doc.addPage();
                    yPos = 20;
                }

                const rowHeight = 12;

                if (index % 2 === 0) {
                    doc.setFillColor(250, 250, 250);
                    doc.rect(margin, yPos, contentWidth, rowHeight, 'F');
                }

                doc.setDrawColor(220, 220, 220);
                doc.rect(margin, yPos, contentWidth, rowHeight, 'S');

                const courseCode = item.courseCode || '-';
                const itemTitle = item.title || '';
                const cleanTitle = itemTitle.toLowerCase().replace(/[^a-z0-9]/g, '');
                const directKey = `${item.courseCode}:${item.subType}:${cleanTitle}`;

                let scoreData = state.resultScores[directKey];
                if (!scoreData) {
                    for (const key of Object.keys(state.resultScores)) {
                        if (key.startsWith(`${item.courseCode}:${item.subType}:`)) {
                            const keyTitle = key.split(':')[2];
                            if (cleanTitle.includes(keyTitle) || keyTitle.includes(cleanTitle)) {
                                scoreData = state.resultScores[key];
                                break;
                            }
                        }
                    }
                }

                const score = scoreData ? `${scoreData.obtained} / ${scoreData.total}` : 'Loading...';
                const announcedDate = formatDate(item.startDate);

                xPos = margin + 1;
                doc.setFont(undefined, 'bold');
                doc.setTextColor(0, 98, 194);
                doc.text(courseCode, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[0];
                doc.setFont(undefined, 'normal');
                const titleLines = doc.splitTextToSize(itemTitle, colWidths[1] - 2);
                doc.text(titleLines[0] + (titleLines.length > 1 ? '...' : ''), xPos, yPos + 8);

                xPos += colWidths[1];
                doc.setFont(undefined, 'bold');
                doc.setTextColor(34, 197, 94);
                doc.text(score, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[2];
                doc.setFont(undefined, 'normal');
                doc.text(announcedDate, xPos, yPos + 8);

                yPos += rowHeight;
            });

            yPos += 5;
        }

        yPos += 5;
        return yPos;
    }

    function generateFeePDF(doc, yPos, margin, contentWidth, pageWidth, pageHeight) {
        const pendingFees = state.feeData.filter(f => f.isPending);

        if (pendingFees.length === 0) {
            doc.setFontSize(10);
            doc.setFont(undefined, 'italic');
            doc.setTextColor(34, 197, 94);
            doc.text('No pending challans. All fees are paid!', margin, yPos);
            doc.setTextColor(0, 0, 0);
        } else {
            const colWidths = [50, 40, 40, 40];
            const headers = ['Challan No.', 'Type', 'Amount', 'Due Date'];

            doc.setFillColor(240, 240, 240);
            doc.rect(margin, yPos, contentWidth, 7, 'F');

            doc.setFontSize(8);
            doc.setFont(undefined, 'bold');
            let xPos = margin + 1;
            headers.forEach((header, i) => {
                doc.text(header, xPos, yPos + 5);
                xPos += colWidths[i];
            });
            yPos += 7;

            doc.setFont(undefined, 'normal');
            pendingFees.forEach((item, index) => {
                if (yPos > pageHeight - 30) {
                    doc.addPage();
                    yPos = 20;
                }

                const rowHeight = 12;

                if (index % 2 === 0) {
                    doc.setFillColor(250, 250, 250);
                    doc.rect(margin, yPos, contentWidth, rowHeight, 'F');
                }

                doc.setDrawColor(220, 220, 220);
                doc.rect(margin, yPos, contentWidth, rowHeight, 'S');

                xPos = margin + 1;
                doc.setFont(undefined, 'bold');
                doc.text(item.challanNo, xPos, yPos + 8);

                xPos += colWidths[0];
                doc.setFont(undefined, 'normal');
                const typeLines = doc.splitTextToSize(item.challanType, colWidths[1] - 2);
                doc.text(typeLines[0] + (typeLines.length > 1 ? '...' : ''), xPos, yPos + 8);

                xPos += colWidths[1];
                doc.setFont(undefined, 'bold');
                doc.setTextColor(239, 68, 68);
                doc.text(`Rs. ${item.amountDue.toLocaleString()}`, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                xPos += colWidths[2];
                doc.setFont(undefined, 'normal');
                doc.setTextColor(239, 68, 68);
                doc.text(item.dueDate, xPos, yPos + 8);
                doc.setTextColor(0, 0, 0);

                yPos += rowHeight;
            });

            yPos += 10;

            if (state.officialTotalPayable > 0) {
                doc.setFillColor(0, 98, 194);
                doc.rect(margin, yPos, contentWidth, 12, 'F');

                doc.setTextColor(255, 255, 255);
                doc.setFontSize(11);
                doc.setFont(undefined, 'bold');
                doc.text('Total Payable:', margin + 2, yPos + 8);
                doc.text(`Rs. ${state.officialTotalPayable.toLocaleString()}`, pageWidth - margin - 2, yPos + 8, { align: 'right' });
                doc.setTextColor(0, 0, 0);
            }
        }

        return yPos;
    }

    async function loadData(forceRefresh = false) {
        state.isLoading = true;
        renderContent();

        const html = await fetchCalendarPage(forceRefresh);
        state.todos = parseCalendarData(html);

        state.isLoading = false;
        updateUI();
        renderContent();

        const accountHtml = await fetchAccountBookPage();
        const { feeItems, officialTotalPayable } = parseAccountBookData(accountHtml);
        state.feeData = feeItems;
        state.officialTotalPayable = officialTotalPayable;

        const THREE_DAYS_MS = CONFIG.MS_PER_DAY * 3;
        const now = Date.now();
        state.hasUrgentPendingFees = Array.isArray(state.feeData) && state.feeData
            .filter(f => f.isPending)
            .some(f => {
                const due = parseFeeDueDate(f.dueDate);
                if (!due) return false;
                const diff = due.getTime() - now;
                return diff >= 0 && diff <= THREE_DAYS_MS;
            });

        state.resultsLoading = false;
        state.resultsLoaded = false;
        updateUI();
        renderContent();
    }

    async function loadResultScores() {
        if (state.resultsLoaded || state.resultsLoading) return;

        state.resultsLoading = true;
        state.resultsSectionLoading = {
            assignment: true,
            quiz: true,
            gdb: true,
            practical: false
        };
        renderContent();

        const resultScores = await fetchResultScores();
        if (resultScores) {
            state.resultScores = { ...state.resultScores, ...resultScores };
        }
        state.resultsSectionLoading.quiz = false;
        state.resultsSectionLoading.gdb = false;
        renderContent();
        updateUI();

        const assignmentScores = await fetchAllAssignmentResults();
        if (assignmentScores) {
            state.resultScores = { ...state.resultScores, ...assignmentScores };
        }
        state.resultsSectionLoading.assignment = false;
        renderContent();
        updateUI();

        state.resultsLoading = false;
        state.resultsLoaded = true;
        state.resultsSectionLoading.practical = false;
        state.currentFetchingCourse = '';
        state.currentFetchingType = '';
        renderContent();
        updateUI();
    }

    function updateUI() {
        const toggle = document.querySelector('.vu-calendar-toggle');
        const toggleLabel = toggle?.querySelector(':scope > span');
        const existingDot = toggle?.querySelector('.urgency-dot');

        if (state.hasUrgentGraded) {
            if (!existingDot) {
                const dot = document.createElement('span');
                dot.className = 'urgency-dot';
                toggleLabel?.insertBefore(dot, toggleLabel.firstChild);
            } else {
                existingDot.className = 'urgency-dot';
            }
        } else if (state.hasNewResults) {
            if (!existingDot) {
                const dot = document.createElement('span');
                dot.className = 'urgency-dot green';
                toggleLabel?.insertBefore(dot, toggleLabel.firstChild);
            } else {
                existingDot.className = 'urgency-dot green';
            }
        } else if (existingDot) {
            existingDot.remove();
        }

        const gradedTab = document.querySelector('[data-tab="graded"]');
        const resultsTab = document.querySelector('[data-tab="results"]');
        const feeTab = document.querySelector('[data-tab="fee"]');

        const now = Date.now();
        const remainingActivities = state.todos.filter(t =>
            ['assignment', 'gdb', 'quiz', 'practical'].includes(t.type) &&
            !t.expired &&
            !t.submitted &&
            t.open
        ).length;

        const assignmentResultsCount = Object.values(state.resultScores || {})
            .filter(score => score.type === 'assignment' && score.obtained !== 'N/A').length;
        const otherResultsCount = state.todos.filter(t =>
            t.type === 'result' &&
            ['gdb', 'quiz', 'practical'].includes(t.subType)
        ).length;
        const totalResults = assignmentResultsCount + otherResultsCount;

        const currentMonth = new Date().getMonth();
        const currentYear = new Date().getFullYear();
        const currentMonthFees = state.feeData.filter(f => {
            if (!f.isPending) return false;
            const dueDate = parseFeeDueDate(f.dueDate);
            if (!dueDate) return false;
            return dueDate.getMonth() === currentMonth && dueDate.getFullYear() === currentYear;
        }).length;

        updateTabBadge(gradedTab, remainingActivities, 'red');
        updateTabBadge(resultsTab, totalResults, 'green');
        updateTabBadge(feeTab, currentMonthFees, 'red');
    }

    function updateTabBadge(tab, count, color = 'red') {
        if (!tab) return;
        const existingBadge = tab.querySelector('.tab-badge');

        if (count > 0) {
            if (!existingBadge) {
                const badge = document.createElement('span');
                badge.className = `tab-badge ${color}`;
                badge.textContent = count;
                tab.appendChild(badge);
            } else {
                existingBadge.className = `tab-badge ${color}`;
                existingBadge.textContent = count;
            }
        } else if (existingBadge) {
            existingBadge.remove();
        }
    }

    function renderContent() {
        const content = document.querySelector('.vu-calendar-content');
        if (!content) return;

        if (state.isLoading) {
            content.innerHTML = `
        <div class="vu-calendar-loading">
          <div class="vu-spinner"></div>
          <p>Fetching Activity Calendar...</p>
        </div>
      `;
            return;
        }

        switch (state.activeTab) {
            case 'graded':
                renderGradedContent(content);
                break;
            case 'results':
                if (!state.resultsLoaded && !state.resultsLoading) {
                    loadResultScores();
                }
                renderResultsContent(content);
                break;
            case 'fee':
                renderFeeContent(content);
                break;
        }
    }

    function renderGradedContent(container) {
        const filtered = state.todos.filter(t => !t.expired);

        const assignments = filtered.filter(t => t.type === 'assignment');
        const quizzes = filtered.filter(t => t.type === 'quiz');
        const gdbs = filtered.filter(t => t.type === 'gdb');
        const practicals = filtered.filter(t => t.type === 'practical');

        const datesheet = state.todos.find(t => t.type === 'datesheet' && !t.expired);

        let html = '';

        if (datesheet) {
            html += `
        <div class="vu-datesheet-alert">
          <div>
            <h4>Datesheet Available</h4>
            <p>${datesheet.title}<br>Last Date: <span class="deadline">${formatDate(datesheet.endDate)}</span></p>
          </div>
          <a href="https://datesheet.vu.edu.pk" target="_blank" class="vu-action-btn">Make Datesheet</a>
        </div>
      `;
        }

        html += renderActivitySection('Assignments', assignments, 'Submit Now');
        html += renderActivitySection('Quizzes', quizzes, 'Take Quiz');
        html += renderActivitySection('General Discussion Board (GDB)', gdbs, 'Post Comment');
        html += renderActivitySection('Practicals', practicals, 'Submit Practical');

        container.innerHTML = html;
    }

    function renderActivitySection(title, items, actionText) {
        let html = `
      <div class="vu-calendar-section">
        <h3>${title}</h3>
    `;

        if (items.length === 0) {
            html += `<p class="vu-calendar-empty">No ${title.toLowerCase()} pending.</p>`;
        } else {
            html += `
        <table class="vu-calendar-table">
          <thead>
            <tr>
              <th>Course</th>
             <th class="text-center">Title</th>
              <th class="text-center">Start Date</th>
              <th class="text-center">End Date</th>
              <th class="text-center">Due Time</th>
              <th class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>
      `;

            items.forEach(item => {
                const badgeClass = item.important ? 'danger' : 'secondary';
                const timeText = formatTimeRemaining(item.endDate);

                let actionCell = '';
                if (item.submitted) {
                    actionCell = '<span class="vu-action-btn submitted">Submitted</span>';
                } else if (!item.open) {
                    actionCell = '<span class="vu-badge secondary">Upcoming</span>';
                } else {
                    actionCell = `<a href="${item.url}" target="_blank" class="vu-action-btn">${actionText}</a>`;
                }

                html += `
          <tr>
            <td class="course-code">${item.courseCode || '-'}</td>
            <td class="title-cell">
              <div class="title">${item.title}</div>
            </td>
            <td class="text-center date-start" style="font-weight: 600;">${formatDate(item.startDate)}</td>
            <td class="text-center date-end" style="font-weight: 600;">${formatDate(item.endDate)}</td>
            <td class="text-center">
              <span class="vu-badge ${badgeClass}">${timeText}</span>
            </td>
            <td class="text-center">
              ${actionCell}
            </td>
          </tr>
        `;
            });

            html += '</tbody></table>';
        }

        html += '</div>';
        return html;
    }

    function renderResultsContent(container) {
        const results = state.todos.filter(t => t.type === 'result');
        const quizzes = results.filter(t => t.subType === 'quiz');
        const gdbs = results.filter(t => t.subType === 'gdb');
        const practicals = results.filter(t => t.subType === 'practical');

        const assignmentResults = Object.values(state.resultScores)
            .filter(score => score.type === 'assignment' && score.obtained !== 'N/A');

        let html = '';

        const assignmentLoadingMsg = state.resultsSectionLoading.assignment
            ? (state.currentFetchingCourse && state.currentFetchingType === 'Assignments'
                ? `Fetching Assignments Result for ${state.currentFetchingCourse}...`
                : 'Loading assignment results...')
            : '';
        const quizLoadingMsg = state.resultsSectionLoading.quiz
            ? (state.currentFetchingCourse && state.currentFetchingType === 'Quiz'
                ? `Fetching Quiz Results for ${state.currentFetchingCourse}...`
                : 'Loading quiz results...')
            : '';
        const gdbLoadingMsg = state.resultsSectionLoading.gdb
            ? (state.currentFetchingCourse && state.currentFetchingType === 'GDB'
                ? `Fetching GDB Results for ${state.currentFetchingCourse}...`
                : 'Loading GDB results...')
            : '';

        html += renderAssignmentResultSection('Assignment Results', assignmentResults, assignmentLoadingMsg);
        html += renderResultSection('Quiz Results', quizzes, quizLoadingMsg);
        html += renderResultSection('GDB Results', gdbs, gdbLoadingMsg);
        html += renderResultSection('Practical Results', practicals, state.resultsSectionLoading.practical ? 'Loading practical results...' : '');

        container.innerHTML = html;
    }

    function renderLoadingBlock(message) {
        return `
            <div class="vu-section-loading">
                <div class="vu-spinner"></div>
                <p>${message}</p>
            </div>
        `;
    }

    function renderAssignmentResultSection(title, assignmentResults, loadingMessage = '') {
        let html = `
      <div class="vu-calendar-section">
        <h3>${title}</h3>
    `;

        if (loadingMessage) {
            html += renderLoadingBlock(loadingMessage);
            html += '</div>';
            return html;
        }

        if (assignmentResults.length === 0) {
            html += `<p class="vu-calendar-empty">No ${title.toLowerCase()} available.</p>`;
        } else {
            html += `
        <table class="vu-calendar-table">
          <thead>
            <tr>
              <th>Course</th>
              <th class="text-center">Title</th>
              <th class="text-center">Score</th>
              <th class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>
      `;

            assignmentResults.forEach(score => {
                const obtained = parseFloat(score.obtained) || 0;
                const total = parseFloat(score.total) || 0;
                const badgeClass = total > 0 && obtained >= (total * 0.5) ? 'success' : 'danger';
                const scoreDisplay = `<span class="vu-badge ${badgeClass}">${score.obtained} / ${score.total}</span>`;

                const cleanTitle = (score.title || '-').replace(/^\d+\s*-\s*/, '');

                const activityUrl = `/ActivityCalendar/OpenActivitySection.aspx?coursecode=${score.courseCode}&ActivityType=Assignment`;

                html += `
          <tr>
            <td class="course-code">${score.courseCode || '-'}</td>
            <td>${cleanTitle}</td>
            <td class="text-center">${scoreDisplay}</td>
            <td class="text-center">
              <button class="vu-action-btn" onclick="window.open('${activityUrl}', '_blank')">View All Results</button>
            </td>
          </tr>
        `;
            });

            html += '</tbody></table>';
        }

        html += '</div>';
        return html;
    }

    function renderResultSection(title, items, loadingMessage = '') {
        let html = `
      <div class="vu-calendar-section">
        <h3>${title}</h3>
    `;

        if (loadingMessage) {
            html += renderLoadingBlock(loadingMessage);
            html += '</div>';
            return html;
        }

        if (items.length === 0) {
            html += `<p class="vu-calendar-empty">No ${title.toLowerCase()} available.</p>`;
        } else {
            html += `
        <table class="vu-calendar-table">
          <thead>
            <tr>
              <th>Course</th>
                <th class="text-center">Title</th>
              <th class="text-center">Score</th>
              <th class="text-center">Announced Date</th>
              <th class="text-center">Action</th>
            </tr>
          </thead>
          <tbody>
      `;

            items.forEach(item => {
                let scoreDisplay = '-';
                if (item.courseCode && item.subType) {
                    const cleanTitle = item.title.toLowerCase()
                        .replace(/\(result\)/gi, '')
                        .replace(/[^a-z0-9]/g, '')
                        .trim();

                    const directKey = `${item.courseCode}:${item.subType}:${cleanTitle}`;
                    let scoreData = state.resultScores[directKey];

                    if (!scoreData) {
                        for (const key of Object.keys(state.resultScores)) {
                            if (key.startsWith(`${item.courseCode}:${item.subType}:`)) {
                                const keyTitle = key.split(':')[2];
                                if (cleanTitle.includes(keyTitle) || keyTitle.includes(cleanTitle) ||
                                    (cleanTitle.match(/\d+/) && keyTitle.match(/\d+/) &&
                                        cleanTitle.match(/\d+/)[0] === keyTitle.match(/\d+/)[0])) {
                                    scoreData = state.resultScores[key];
                                    break;
                                }
                            }
                        }
                    }

                    if (scoreData && scoreData.obtained !== 'N/A' && scoreData.obtained !== 'Un-Declared') {
                        const obtained = parseFloat(scoreData.obtained) || 0;
                        const total = parseFloat(scoreData.total) || 0;
                        const badgeClass = total > 0 && obtained >= (total * 0.5) ? 'success' : 'danger';
                        scoreDisplay = `<span class="vu-badge ${badgeClass}">${scoreData.obtained} / ${scoreData.total}</span>`;
                    } else if (scoreData && (scoreData.obtained === 'N/A' || scoreData.obtained === 'Un-Declared')) {
                        scoreDisplay = `<span class="vu-badge secondary">${scoreData.obtained}</span>`;
                    }
                }

                html += `
          <tr>
            <td class="course-code">${item.courseCode || '-'}</td>
            <td>${item.title}</td>
            <td class="text-center">${scoreDisplay}</td>
            <td class="text-center">${formatDate(item.startDate)}</td>
            <td class="text-center">
              <a href="${item.url}" target="_blank" class="vu-action-btn">View All Results</a>
            </td>
          </tr>
        `;
            });

            html += '</tbody></table>';
        }

        html += '</div>';
        return html;
    }

    function renderFeeContent(container) {
        const pendingFees = state.feeData.filter(f => f.isPending);
        const totalPayable = state.officialTotalPayable;

        let html = `
      <div class="vu-calendar-section">
        <div style="display: flex; justify-content: space-between; align-items: center; background: var(--vu-card); padding: 8px 12px; border: 1px solid var(--vu-border); margin-bottom: 0;">
          <h3 style="margin: 0; border: none; padding: 0; background: transparent;">Pending Fee Challans</h3>
          <a href="${CONFIG.ACCOUNT_BOOK_URL}" target="_blank" class="vu-action-btn" style="padding: 4px 12px; font-size: 12px;">View Account Book</a>
        </div>
    `;

        if (pendingFees.length === 0) {
            html += `<p class="vu-calendar-empty">No pending challans. All fees are paid!</p>`;
        } else {
            html += `
        <table class="vu-calendar-table">
          <thead>
            <tr>
              <th style="text-align: left;">Challan No.</th>
              <th class="text-center" style="width: 100px;">Payable</th>
              <th class="text-center" style="width: 120px;">Due Date</th>
              <th class="text-center" style="width: 1%;">Action</th>
            </tr>
          </thead>
          <tbody>
      `;

            pendingFees.forEach(item => {
                const printUrl = item.printUrl || CONFIG.ACCOUNT_BOOK_URL;
                html += `
          <tr>
            <td style="font-weight: 500;">${item.challanNo}</td>
            <td class="text-center">
              <span style="font-weight: 600; color: var(--vu-text);">Rs. ${item.amountDue.toLocaleString()}</span>
            </td>
            <td class="text-center" style="color: #ff0000 !important; font-weight: 500;">${item.dueDate}</td>
            <td class="text-center" style="white-space: nowrap;">
              <button class="vu-action-btn" style="margin-right: 6px;" title="Copy Challan Number" onclick="navigator.clipboard.writeText('${item.challanNo}').then(() => { const btn = this; btn.textContent = 'Copied!'; setTimeout(() => btn.textContent = 'Copy Challan No', 1500); })">Copy Challan No</button>
              <a href="${printUrl}" target="_blank" class="vu-action-btn" title="Print Challan">Print voucher</a>
            </td>
          </tr>
        `;
            });

            html += '</tbody></table>';

            if (totalPayable > 0) {
                html += `
        <div style="background: var(--vu-card); padding: 12px 16px; margin-top: 16px; border: 1px solid var(--vu-border);">
          <div style="display: flex; justify-content: space-between; align-items: center;">
            <span style="font-weight: 600; color: var(--vu-text);">Total Payable</span>
            <span style="font-size: 18px; font-weight: 700; color: var(--vu-text);">Rs. ${totalPayable.toLocaleString()}</span>
          </div>
        </div>
      `;
            }
        }

        html += '</div>';
        container.innerHTML = html;
    }

    // ============================================================
    // INITIALIZATION
    // ============================================================

    function init() {
        const url = window.location.href.toLowerCase();

        if (!url.includes('/home.aspx') && !url.includes('/activitycalendar/activitycalendar.aspx')) return;

        if (document.readyState === 'loading') {
            document.addEventListener('DOMContentLoaded', () => {
                injectStyles();
                createCalendarUI();
            });
        } else {
            injectStyles();
            createCalendarUI();
        }
    }

    init();

})();

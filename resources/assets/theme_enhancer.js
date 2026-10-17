// ===========================
// VU LMS Theme Enhancer
// ===========================
// This module provides visual enhancements for VU LMS including:
// - Modern UI styling with CSS variables
// - Customizable header color palette picker
// - Enhanced buttons with icons
// - Dark mode compatibility
// - Responsive design improvements

(function() {
  'use strict';

  // Polyfill chrome storage and runtime for Android WebView compatibility
  if (typeof window.chrome === 'undefined' || !window.chrome.storage) {
    window.chrome = window.chrome || {};
    var storageImpl = {
      get: function(keys, cb) {
        var res = {};
        var keyList = Array.isArray(keys) ? keys : (typeof keys === 'string' ? [keys] : Object.keys(keys || {}));
        keyList.forEach(function(k) {
          try {
            var val = localStorage.getItem(k);
            res[k] = val !== null ? JSON.parse(val) : (typeof keys === 'object' && !Array.isArray(keys) ? keys[k] : undefined);
          } catch(e) { res[k] = undefined; }
        });
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
      }
    };
    window.chrome.storage = {
      local: storageImpl,
      sync: storageImpl,
      onChanged: { addListener: function() {} }
    };
    window.chrome.runtime = {
      getURL: function(path) { return path; },
      sendMessage: function(msg, cb) { if (cb) cb({}); return Promise.resolve({}); },
      onMessage: { addListener: function() {} }
    };
  }

/**
 * URL Helper Functions
 */
const ThemeHelpers = {
  getVuContactUrl() {
    return 'http://www.vu.edu.pk/contact.aspx';
  }
};

// ===========================
// THEME CSS STYLES
// ===========================

/**
 * Comprehensive CSS styling for VU LMS light theme
 * Uses CSS variables for easy customization
 */
const THEME_CSS = `
  :root {
    --vu-primary: #0068d0;
    --vu-primary-dark: #0052a3;
    --vu-sidebar: #111736;
    --vu-header: #0059be;
    --vu-transition: 0.25s ease;
    --course-icon-blue-filter: brightness(0) saturate(100%) invert(27%) sepia(74%) saturate(2860%) hue-rotate(203deg) brightness(89%) contrast(101%);
    --course-icon-hover-text: #0052a3;
  }

  html.extension-dark-mode {
    --course-icon-blue-filter: brightness(0) saturate(100%) invert(41%) sepia(93%) saturate(1813%) hue-rotate(15deg) brightness(96%) contrast(101%);
    --course-icon-hover-text: #ae6600;
  }

  /* Assignment Buttons */
  .assignment-btn {
    display: inline-flex !important;
    align-items: center;
    gap: 6px;
    padding: 6px 12px !important;
    background: var(--vu-primary);
    color: #fff !important;
    text-decoration: none !important;
    border-radius: 5px;
    border: none;
    font-weight: 600 !important;
    font-size: 12px !important;
    cursor: pointer;
    white-space: nowrap;
    transition: all var(--vu-transition);
  }

  .assignment-btn:hover {
    background: var(--vu-primary-dark);
    transform: translateY(-2px);
    box-shadow: 0 4px 12px rgba(0, 104, 208, 0.35);
    color: #fff !important;
  }

  .assignment-btn i {
    pointer-events: none;
  }

  /* Course Cards */
  #MainContent_divCourseList .m-portlet {
    transition: transform var(--vu-transition), box-shadow var(--vu-transition);
    border-radius: 6px;
    overflow: hidden;
  }

  #MainContent_divCourseList .m-portlet:hover {
    box-shadow: 0 10px 18px rgba(0, 0, 0, 0.16) !important;
  }

  #MainContent_divCourseList .m-portlet:hover .m-portlet__head {
    opacity: 1 !important;
  }

  /* Course Icons */
  #MainContent_divCourseList .img-container-zoom input[type="image"] {
    transition: transform var(--vu-transition), filter var(--vu-transition);
    transform-origin: center;
  }

  #MainContent_divCourseList .img-container-zoom span {
    transition: color var(--vu-transition);
  }

  #MainContent_divCourseList .img-container-zoom:hover input[type="image"] {
    transform: translateY(-3px) scale(1.08);
    filter: var(--course-icon-blue-filter) drop-shadow(0 3px 6px rgba(0, 0, 0, 0.18));
  }

  #MainContent_divCourseList .img-container-zoom:hover span {
    color: var(--course-icon-hover-text) !important;
  }

  /* Sidebar */
  #m_ver_menu,
  .m-brand.m-brand--skin-dark {
    background: var(--vu-sidebar) !important;
  }

  #m_ver_menu .m-menu__link {
    border-radius: 0;
    transition: all 0.15s ease;
  }

  #m_ver_menu .m-menu__link-icon,
  #m_ver_menu .m-menu__link-text {
    color: rgba(255, 255, 255, 0.9) !important;
    transition: color 0.15s ease, transform 0.15s ease;
  }

  #m_ver_menu .m-menu__link-icon img {
    transition: filter 0.15s ease, transform 0.15s ease;
  }

  #m_ver_menu .m-menu__item:hover {
    transform: translateX(3px);
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.14);
  }

  #m_ver_menu .m-menu__item:hover .m-menu__link-icon {
    color: #3b82f6 !important;
    transform: rotate(8deg) scale(1.06);
  }

  #m_ver_menu .m-menu__item:hover .m-menu__link-icon img {
    filter: brightness(0) saturate(100%) invert(41%) sepia(93%) saturate(1813%) hue-rotate(203deg) brightness(96%) contrast(101%) !important;
    transform: rotate(8deg) scale(1.06);
  }

  #m_ver_menu .m-menu__item:hover .m-menu__link-text {
    color: #fff !important;
  }

  #m_ver_menu .m-menu__link:hover,
  #m_ver_menu .m-menu__link:active,
  #m_ver_menu .m-menu__item.m-menu__item--submenu:active,
  #m_ver_menu .m-menu__item.current .m-menu__link,
  #m_ver_menu .m-menu__item.m-menu__item--active .m-menu__link {
    background: rgb(64 76 141 / 30%) !important;
  }

  #m_ver_menu .m-menu__item.current,
  #m_ver_menu .m-menu__item.m-menu__item--active {
    box-shadow: inset 3px 0 0 #007bff;
  }

  #m_ver_menu .m-menu__item.m-menu__item--submenu.current {
    background: transparent !important;
  }

  #m_ver_menu .m-menu__item.m-menu__item--submenu:hover,
  #m_ver_menu .m-menu__item.m-menu__item--submenu .m-menu__link:hover,
  #m_ver_menu .m-menu__item.m-menu__item--submenu .m-menu__link:active {
    background: rgb(64 76 141 / 30%) !important;
  }

  /* Table Headers & Results */
  #MainContent_divRecord .text-nowrap,
  #MainContent_divRecord .nopadding,
  #MainContent_divResultCourses thead .hideinMobileView,
  #MainContent_divResultCourses tr th,
  #MainContent_gvStudyScheme tbody th,
  #MainContent_myform tr th,
  .Accounttbl .divborder.nopadding,
  th.text-nowrap.border.m--padding-10,
  .tblWidth th {
    background-color: var(--vu-primary) !important;
    color: #fff !important;
  }

  /* Primary Buttons */
  #MainContent_btnSearchNews,
  #MainContent_btnRefresh,
  #MainContent_btnSearch,
  .btn-primary {
    background-color: var(--vu-primary) !important;
    border-color: var(--vu-primary) !important;
  }

  .btn-primary:hover {
    background-color: var(--vu-primary-dark) !important;
    border-color: var(--vu-primary-dark) !important;
  }

  /* Header */
  #m_header_nav {
    background-color: var(--vu-header) !important;
  }

  #m_header_topbar .m-stack__item {
    background-color: var(--vu-primary) !important;
  }

  #m_header_topbar .m-stack__item .m-topbar__nav .m-nav__item>span {
    color: rgba(255, 255, 255, 0.87) !important;
  }

  /* Dropdown Headers */
  .m-dropdown__header {
    background-color: var(--vu-primary) !important;
    background-image: none !important;
  }

  /* Portlet Headers */
  #MainContent_divCourseList a .m-portlet__head,
  #MainContent_divIndex .m-portlet .m-portlet__head,
  .m-grid--root .m-portlet .m-portlet__head {
    background-image: none !important;
    background-color: var(--vu-header) !important;
  }

  .m-portlet__head-title .m-portlet__head-text,
  .m-portlet__head-title .m-portlet__head-text small {
    color: #fff !important;
  }

  /* Navigation Links */
  a.nav-link.active,
  a.nav-link.m-tabs__link.active,
  .nav-link.active {
    color: #fff !important;
    font-weight: bold !important;
    background-color: var(--vu-primary) !important;
  }

  a.nav-link {
    color: rgba(0, 0, 0, 0.7) !important;
    transition: color var(--vu-transition);
  }

  a.nav-link:hover {
    color: var(--vu-primary) !important;
  }

  /* Color Palette Picker Hover Effect */
  #color-palette-picker .m-nav__link-icon svg {
    transition: all 0.3s ease;
  }

  #color-palette-picker:hover .m-nav__link-icon svg {
    color: #4caf50 !important;
    transform: scale(1.1) rotate(5deg);
  }

  /* Mobile Position Adjustments for Palette Picker */
  @media (max-width: 768px) {
    #color-palette-picker .m-nav__link,
    #header-color-input {
      right: 0px !important;
    }
    #mobile-header-color-palette {
      right: 0px !important;
    }
  }
`;

// ===========================
// THEME MANAGER CLASS
// ===========================

class VUThemeEnhancer {
  constructor() {
    this.STYLE_ID = 'vu-enhancer-styles';
    this.styleElement = null;
    this.initialized = false;
  }

  /**
   * Checks if dark mode is currently active
   */
  isDarkModeActive() {
    return (
      document.body.classList.contains('dark-mode') ||
      document.documentElement.classList.contains('dark-mode') ||
      !!document.getElementById('darkModeStyle')
    );
  }

  /**
   * Syncs the extension-dark-mode class with dark mode state
   */
  syncDarkModeClass() {
    document.documentElement.classList.toggle(
      'extension-dark-mode',
      this.isDarkModeActive()
    );
  }

  /**
   * Observes changes to dark mode state
   */
  observeDarkModeChanges() {
    this.syncDarkModeClass();

    const observer = new MutationObserver(() => {
      this.syncDarkModeClass();
    });

    observer.observe(document.documentElement, {
      attributes: true,
      childList: true,
      subtree: false
    });
  }

  /**
   * Injects theme CSS styles into the page
   */
  injectStyles() {
    if (document.getElementById(this.STYLE_ID)) return;
    if (document.getElementById('darkModeStyle')) return;

    if (!this.styleElement) {
      this.styleElement = document.createElement('style');
      this.styleElement.id = this.STYLE_ID;
      this.styleElement.textContent = THEME_CSS;
    }

    if (!this.styleElement.parentNode) {
      (document.head || document.documentElement).appendChild(this.styleElement);
    }
  }

  /**
   * Adds icon to a button/link element
   */
  addIcon(link, iconClass, text) {
    if (link.dataset.enhanced === 'true') return;

    link.dataset.enhanced = 'true';

    const existingText = link.textContent.trim() || text;
    link.textContent = '';

    const icon = document.createElement('i');
    icon.className = iconClass;

    const span = document.createElement('span');
    span.textContent = existingText;

    link.append(icon, span);
  }

  /**
   * Applies button styling to matching elements
   */
  applyButtonStyle(selector, iconClass, fallbackText) {
    const elements = document.querySelectorAll(
      `${selector}:not(.assignment-btn)`
    );

    elements.forEach(link => {
      link.classList.add('assignment-btn');
      this.addIcon(link, iconClass, fallbackText);
    });
  }

  /**
   * Enhances all buttons on the page
   */
  styleButtons() {
    const isActivityCalendar = location.href.includes('ActivityCalendar.aspx');

    // Assignment files
    this.applyButtonStyle('a[id*="AssignmentFile"]', 'la la-download', 'Download');

    // Submitted assignments
    this.applyButtonStyle('a[id*="lbtnViewSubmittedFile"]', 'la la-download', 'Download');

    // Resource downloads
    this.applyButtonStyle('a[id*="hlDownload"]', 'la la-download', 'Download');

    // View buttons
    this.applyButtonStyle(
      'a[id*="lbtnView"]:not([id*="Lesson"]):not([id*="Assignment"]):not([id*="Submitted"])',
      'fa fa-eye',
      'View'
    );

    // Submit buttons
    this.applyButtonStyle('a[id*="Submit"]:not([id*="Submitted"])', 'fa fa-send', 'Submit');

    // Take Quiz buttons
    this.applyButtonStyle('a[id*="hlnkStartQuiz"]', 'fa fa-pencil-square-o', 'Take Quiz');

    // Activity Calendar specific buttons
    if (isActivityCalendar) {
      const todoButtons = document.querySelectorAll('a[id*="ibtn"]:not(.assignment-btn)');

      todoButtons.forEach(link => {
        const text = link.textContent.trim();
        if (!text) return;

        let icon = 'fa-arrow-right';

        if (text.includes('Submit')) {
          icon = 'fa-check-circle';
        } else if (text.includes('Take')) {
          icon = 'fa-pencil';
        } else if (text.includes('Post') || text.includes('Comment')) {
          icon = 'fa-comment';
        }

        link.classList.add('assignment-btn');
        this.addIcon(link, `fa ${icon}`, text);
      });
    }
  }

  /**
   * Removes sidebar logo element
   */
  removeSidebarLogo() {
    const sidebarLogo = document.getElementById('liSideBarLogo');
    if (sidebarLogo?.parentElement) {
      sidebarLogo.parentElement.remove();
    }
  }

  /**
   * Observes dynamic content changes and re-applies styles
   */
  observeDynamicContent() {
    let timeout;

    const target = document.getElementById('MainContent') || document.body;

    const observer = new MutationObserver(() => {
      clearTimeout(timeout);
      timeout = setTimeout(() => {
        this.styleButtons();
      }, 120);
    });

    observer.observe(target, {
      childList: true,
      subtree: true
    });
  }

  /**
   * Removes unwanted menu items and modifies existing ones
   */
  modifyMenuItems() {
    // Remove "Contact Us" link
    const contactUsLink = document.querySelector(`a[href="${ThemeHelpers.getVuContactUrl()}"]`);
    if (contactUsLink) {
      contactUsLink.closest('li')?.remove() || contactUsLink.remove();
    }

    // Remove "Mail" (Gmail) link
    const mailItem = document.getElementById('liGmail');
    if (mailItem) {
      mailItem.remove();
    }

    // Remove "Notes" (Personal Diary) link
    const notesLink = document.getElementById('lbtnPersonalDiary');
    if (notesLink) {
      notesLink.closest('li')?.remove() || notesLink.remove();
    }
  }

  /**
   * Applies header color theme
   */
  applyHeaderColor(color) {
    // Calculate darker shade for hover effects
    const darkerColor = this.adjustColorBrightness(color, -20);

    // Update CSS variables
    document.documentElement.style.setProperty('--vu-primary', color);
    document.documentElement.style.setProperty('--vu-primary-dark', darkerColor);
    document.documentElement.style.setProperty('--vu-header', color);
  }

  /**
   * Adjusts color brightness
   */
  adjustColorBrightness(color, percent) {
    const num = parseInt(color.replace('#', ''), 16);
    const r = Math.max(0, Math.min(255, (num >> 16) + percent));
    const g = Math.max(0, Math.min(255, ((num >> 8) & 0x00FF) + percent));
    const b = Math.max(0, Math.min(255, (num & 0x0000FF) + percent));

    return '#' + ((r << 16) | (g << 8) | b).toString(16).padStart(6, '0');
  }

  /**
   * Converts HSV color to Hex
   */
  hsvToHex(h, s, v) {
    const c = v * s;
    const x = c * (1 - Math.abs((h / 60) % 2 - 1));
    const m = v - c;
    let r = 0, g = 0, b = 0;

    if (h < 60) [r, g, b] = [c, x, 0];
    else if (h < 120) [r, g, b] = [x, c, 0];
    else if (h < 180) [r, g, b] = [0, c, x];
    else if (h < 240) [r, g, b] = [0, x, c];
    else if (h < 300) [r, g, b] = [x, 0, c];
    else [r, g, b] = [c, 0, x];

    const toHex = (n) => Math.round((n + m) * 255).toString(16).padStart(2, '0');
    return '#' + toHex(r) + toHex(g) + toHex(b);
  }

  /**
   * Converts Hex color to HSV
   */
  hexToHsv(hex) {
    const num = parseInt(hex.replace('#', ''), 16);
    const r = ((num >> 16) & 255) / 255;
    const g = ((num >> 8) & 255) / 255;
    const b = (num & 255) / 255;

    const max = Math.max(r, g, b);
    const min = Math.min(r, g, b);
    const delta = max - min;

    let h = 0;
    if (delta && max === r) h = 60 * (((g - b) / delta) % 6);
    else if (delta && max === g) h = 60 * ((b - r) / delta + 2);
    else if (delta) h = 60 * ((r - g) / delta + 4);
    if (h < 0) h += 360;

    return { h: Math.round(h), s: max ? delta / max : 0, v: max };
  }

  /**
   * Adds color palette picker to header
   * Requires chrome.storage API
   */
  addColorPalettePicker() {
    // Check if already added
    if (document.getElementById('color-palette-picker')) return;

    // Find the right-side ul container and the bell notification icon
    const rightNav = document.querySelector('.m-topbar__nav.float-right');
    if (!rightNav) {
      setTimeout(() => this.addColorPalettePicker(), 500);
      return;
    }

    const notificationItem = rightNav.querySelector('.m-topbar__notifications');
    if (!notificationItem) {
      setTimeout(() => this.addColorPalettePicker(), 500);
      return;
    }

    // Load saved color from storage
    chrome.storage.sync.get(['vuHeaderColor'], (result) => {
      const savedColor = result.vuHeaderColor;
      if (savedColor) {
        this.applyHeaderColor(savedColor);
      }
    });

    // Create color palette icon container
    const colorPaletteItem = document.createElement('li');
    colorPaletteItem.className = 'm-nav__item m-topbar__notifications m-topbar__notifications--img m-dropdown m-dropdown--large m-dropdown--header-bg-fill m-dropdown--arrow m-dropdown--align-center m-dropdown--mobile-full-width';
    colorPaletteItem.id = 'color-palette-picker';
    colorPaletteItem.style.cssText = 'position: relative;';

    // Create the palette icon link
    const paletteLink = document.createElement('a');
    paletteLink.href = '#';
    paletteLink.className = 'm-nav__link';
    paletteLink.style.cssText = 'cursor: pointer; position: relative; top: -1px; right: -20px;';

    // Create custom palette SVG icon
    paletteLink.innerHTML = '<span class="m-nav__link-icon" style="position: relative;"><svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" style="width: 24px; height: 24px; color: rgba(255,255,255,0.9);"><circle cx="13.5" cy="6.5" r=".5"/><circle cx="17.5" cy="10.5" r=".5"/><circle cx="8.5" cy="7.5" r=".5"/><circle cx="6.5" cy="12.5" r=".5"/><path d="M12 2C6.5 2 2 6.5 2 12s4.5 10 10 10c.926 0 1.648-.746 1.648-1.688 0-.437-.18-.835-.437-1.125-.29-.289-.438-.652-.438-1.125a1.64 1.64 0 0 1 1.668-1.668h1.996c3.051 0 5.555-2.503 5.555-5.554C21.965 6.012 17.461 2 12 2z"/></svg></span>';

    // Hidden color input for desktop
    const colorInput = document.createElement('input');
    colorInput.type = 'color';
    colorInput.id = 'header-color-input';
    colorInput.value = '#0059be';
    colorInput.style.cssText = 'position: absolute; top: -1px; right: -20px; width: 44px; height: 44px; opacity: 0; cursor: pointer; z-index: 2; border: 0; padding: 0;';

    // Mobile color palette
    const mobilePalette = document.createElement('div');
    mobilePalette.id = 'mobile-header-color-palette';
    mobilePalette.style.cssText = 'display: none; position: absolute; top: 38px; right: -20px; width: 176px; padding: 8px; background: white; border-radius: 10px; box-shadow: 0 4px 18px rgba(0,0,0,0.22); z-index: 10000;';

    const mobileColorCanvas = document.createElement('canvas');
    mobileColorCanvas.width = 160;
    mobileColorCanvas.height = 105;
    mobileColorCanvas.style.cssText = 'display: block; width: 160px; height: 105px; border-radius: 8px; cursor: crosshair; touch-action: none;';

    const mobileHueSlider = document.createElement('input');
    mobileHueSlider.type = 'range';
    mobileHueSlider.min = '0';
    mobileHueSlider.max = '360';
    mobileHueSlider.value = '211';
    mobileHueSlider.style.cssText = 'display: block; width: 160px; height: 16px; margin-top: 8px; accent-color: #0059be;';

    mobilePalette.appendChild(mobileColorCanvas);
    mobilePalette.appendChild(mobileHueSlider);

    colorPaletteItem.appendChild(paletteLink);
    colorPaletteItem.appendChild(colorInput);
    colorPaletteItem.appendChild(mobilePalette);

    rightNav.insertBefore(colorPaletteItem, notificationItem);

    // Mobile color picker state
    let mobileHue = 211;
    let mobileSaturation = 1;
    let mobileValue = 0.75;

    const isMobileColorPicker = () =>
      window.matchMedia('(max-width: 768px)').matches ||
      /Android|iPhone|iPad|iPod/i.test(navigator.userAgent);

    const drawMobilePalette = () => {
      const ctx = mobileColorCanvas.getContext('2d');
      if (!ctx) return;

      const w = mobileColorCanvas.width;
      const h = mobileColorCanvas.height;

      // Draw base hue
      ctx.fillStyle = this.hsvToHex(mobileHue, 1, 1);
      ctx.fillRect(0, 0, w, h);

      // White gradient (left to right)
      const white = ctx.createLinearGradient(0, 0, w, 0);
      white.addColorStop(0, '#fff');
      white.addColorStop(1, 'rgba(255,255,255,0)');
      ctx.fillStyle = white;
      ctx.fillRect(0, 0, w, h);

      // Black gradient (top to bottom)
      const black = ctx.createLinearGradient(0, 0, 0, h);
      black.addColorStop(0, 'rgba(0,0,0,0)');
      black.addColorStop(1, '#000');
      ctx.fillStyle = black;
      ctx.fillRect(0, 0, w, h);

      // Draw selection marker
      const markerX = mobileSaturation * w;
      const markerY = (1 - mobileValue) * h;
      ctx.beginPath();
      ctx.arc(markerX, markerY, 6, 0, Math.PI * 2);
      ctx.lineWidth = 3;
      ctx.strokeStyle = '#fff';
      ctx.stroke();
      ctx.lineWidth = 1.5;
      ctx.strokeStyle = 'rgba(0,0,0,0.85)';
      ctx.stroke();
    };

    const setSelectedMobileColor = (color) => {
      const hsv = this.hexToHsv(color);
      mobileHue = hsv.h;
      mobileSaturation = hsv.s;
      mobileValue = hsv.v;
      mobileHueSlider.value = String(mobileHue);
      drawMobilePalette();
    };

    const syncPickerMode = () => {
      const isMobile = isMobileColorPicker();
      colorInput.style.pointerEvents = isMobile ? 'none' : 'auto';
      if (!isMobile) {
        mobilePalette.style.display = 'none';
        paletteLink.style.right = '-20px';
        colorInput.style.right = '-20px';
        mobilePalette.style.right = '-20px';
      } else {
        paletteLink.style.right = '0px';
        colorInput.style.right = '0px';
        mobilePalette.style.right = '0px';
      }
    };

    const saveHeaderColor = (color) => {
      colorInput.value = color;
      this.applyHeaderColor(color);
      setSelectedMobileColor(color);
      chrome.storage.sync.set({ vuHeaderColor: color });

      // If dark mode is active, automatically disable it
      const darkModeActive = !!document.getElementById('darkModeStyle');
      if (darkModeActive) {
        const darkModeBtn = document.getElementById('darkModeToggleBtn');
        if (darkModeBtn) darkModeBtn.click();
      }
    };

    syncPickerMode();
    window.addEventListener('resize', syncPickerMode);

    // Load saved color
    chrome.storage.sync.get(['vuHeaderColor'], (result) => {
      const savedColor = result.vuHeaderColor || '#0059be';
      colorInput.value = savedColor;
      setSelectedMobileColor(savedColor);
    });

    // Event listeners
    paletteLink.addEventListener('click', (e) => {
      e.preventDefault();
      e.stopPropagation();
      if (isMobileColorPicker()) {
        mobilePalette.style.display = mobilePalette.style.display === 'block' ? 'none' : 'block';
        return;
      }
      if (colorInput.showPicker) {
        colorInput.showPicker();
      } else {
        colorInput.click();
      }
    });

    const pickMobilePaletteColor = (clientX, clientY) => {
      const rect = mobileColorCanvas.getBoundingClientRect();
      mobileSaturation = Math.max(0, Math.min(1, (clientX - rect.left) / rect.width));
      mobileValue = 1 - Math.max(0, Math.min(1, (clientY - rect.top) / rect.height));
      saveHeaderColor(this.hsvToHex(mobileHue, mobileSaturation, mobileValue));
    };

    const handleMobilePalettePick = (e) => {
      e.preventDefault();
      const point = e.touches ? e.touches[0] : e;
      pickMobilePaletteColor(point.clientX, point.clientY);
    };

    mobileColorCanvas.addEventListener('mousedown', handleMobilePalettePick);
    mobileColorCanvas.addEventListener('mousemove', (e) => {
      if (e.buttons === 1) handleMobilePalettePick(e);
    });
    mobileColorCanvas.addEventListener('touchstart', handleMobilePalettePick, { passive: false });
    mobileColorCanvas.addEventListener('touchmove', handleMobilePalettePick, { passive: false });

    mobileHueSlider.addEventListener('input', (e) => {
      mobileHue = Number(e.target.value);
      drawMobilePalette();
      saveHeaderColor(this.hsvToHex(mobileHue, mobileSaturation, mobileValue));
    });

    document.addEventListener('click', (e) => {
      if (!colorPaletteItem.contains(e.target)) {
        mobilePalette.style.display = 'none';
      }
    });

    colorInput.addEventListener('input', (e) => saveHeaderColor(e.target.value));
    colorInput.addEventListener('change', (e) => saveHeaderColor(e.target.value));
  }

  /**
   * Initializes the theme enhancer
   */
  init() {
    if (this.initialized) return;
    this.initialized = true;

    this.injectStyles();
    this.syncDarkModeClass();
    this.observeDarkModeChanges();
    this.styleButtons();
    this.removeSidebarLogo();
    this.modifyMenuItems();
    this.addColorPalettePicker();
    this.observeDynamicContent();

    // Listen for restore event from dark mode toggle
    window.addEventListener('vuEnhancerRestore', () => {
      if (!document.getElementById('darkModeStyle') && !document.getElementById(this.STYLE_ID)) {
        this.injectStyles();
      }
    });

    // Listen for storage changes (dark mode toggle)
    chrome.storage.onChanged.addListener((changes, area) => {
      if (area === 'sync' && changes.darkModeVulms) {
        const isDarkMode = changes.darkModeVulms.newValue === true;
        const enhancerStyles = document.getElementById(this.STYLE_ID);

        if (isDarkMode && enhancerStyles) {
          enhancerStyles.remove();
        } else if (!isDarkMode && !enhancerStyles) {
          this.injectStyles();
        }
      }
    });
  }
}

// ===========================
// AUTO-INITIALIZATION
// ===========================

// Auto-run if this script is loaded in a browser context
if (typeof window !== 'undefined' && typeof chrome !== 'undefined' && chrome.storage) {
  // Prevent double initialization
  if (!window.__vuEnhancerInitialized) {
    window.__vuEnhancerInitialized = true;

    const enhancer = new VUThemeEnhancer();

    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', () => enhancer.init());
    } else {
      enhancer.init();
    }
  }
}

// Export for use in other modules
if (typeof module !== 'undefined' && module.exports) {
  module.exports = {
    VUThemeEnhancer,
    ThemeHelpers,
    THEME_CSS
  };
}
})();

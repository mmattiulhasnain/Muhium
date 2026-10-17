// ===========================
// VU LMS Grading Scheme Extractor
// ===========================
// This module extracts and displays the assessment scheme (grading breakdown)
// for courses on VU LMS home page

(function () {
  'use strict';

  const cf = {
    et: "__EVENTTARGET",
    ea: "__EVENTARGUMENT"
  };

  // ===========================
  // UTILITY FUNCTIONS
  // ===========================

  /**
   * Extracts postback event target and argument from href attribute
   * @param {string} hr - href attribute containing __doPostBack call
   * @returns {Object|null} Object with et (event target) and ea (event argument)
   */
  function extractPostbackMagic(hr) {
    if (!hr) return null;
    const m = hr.match(/__doPostBack\(['"]([^'"]+)['"],\s*['"]([^'"]*)['"]\)/);
    if (!m) return null;
    return { et: m[1], ea: m[2] || "" };
  }

  // ===========================
  // ASSESSMENT SCHEME INJECTION
  // ===========================

  /**
   * Injects assessment scheme panel into course portlet
   * @param {HTMLElement} portlet - Course portlet element
   * @param {Array} scheme - Array of grade items with weightage
   */
  function injectAssessmentScheme(portlet, scheme) {
    const titleEl = portlet?.querySelector('a[id*="ibtnCourseHome"][title]');
    const debugTitle = titleEl ? titleEl.getAttribute('title').trim() : 'UNKNOWN';

    if (!Array.isArray(scheme) || scheme.length === 0) {
      return;
    }

    const cardBody = portlet?.querySelector('.m-portlet__body');
    if (!cardBody) {
      return;
    }

    // Check if panel already exists
    if (cardBody.querySelector('.ab-scheme-panel')) {
      return;
    }

    // Create panel container
    const panel = document.createElement('div');
    panel.className = 'ab-scheme-panel';

    // Add dark mode class if active
    if (document.getElementById('darkModeStyle')) {
      panel.classList.add('dark-mode');
    }

    // Create items container
    const items = document.createElement('div');
    items.className = 'ab-scheme-panel__items';

    // Add each grade item to the panel
    scheme.forEach(item => {
      const div = document.createElement('div');
      div.className = 'ab-scheme-panel__item';

      // Extract grade item name and weightage
      let name = item.GradeItem || item.gradeItem || 'N/A';
      if (name === 'Discussion') name = 'GDB'; // Rename Discussion to GDB

      const weight = item.Weightage || item.weightage || '0';

      div.innerHTML = `
        <span class="ab-scheme-panel__name">${name}:</span>
        <span class="ab-scheme-panel__weight">${weight}%</span>
      `;

      items.appendChild(div);
    });

    panel.appendChild(items);

    // Insert panel before separator or at the beginning
    const sep = cardBody.querySelector('.m-portlet__body-separator');
    sep
      ? sep.parentElement.insertBefore(panel, sep)
      : cardBody.insertBefore(panel, cardBody.firstChild);
  }

  // ===========================
  // STYLES
  // ===========================

  /**
   * Injects CSS styles for assessment scheme panels
   */
  function injectAssessmentSchemeStyles() {
    if (document.getElementById('ab-style')) return;

    const s = document.createElement('style');
    s.id = 'ab-style';
    s.textContent = `
      .ab-scheme-panel {
        display: flex;
        justify-content: center;
        padding: 4px 0;
        border-top: 1px solid #c7c7c7;
      }
      
      .ab-scheme-panel__items {
        display: flex;
        flex-wrap: nowrap;
        gap: 6px;
        justify-content: center;
        overflow: hidden;
      }
      
      .ab-scheme-panel__item {
        padding: 5px 10px;
        background: rgba(223, 239, 253, 0.6);
        font-size: 11.5px;
        white-space: nowrap;
        min-width: 0;
        flex-shrink: 1;
        border-radius: 4px;
      }
      
      .ab-scheme-panel__weight {
        font-weight: 700;
        color: #0080ff;
      }
      
      .ab-scheme-panel.dark-mode .ab-scheme-panel__item {
        background: rgba(75, 85, 120, 0.7);
      }
      
      .vu-handouts-badge {
        background: #03d3b4;
      }
      
      .dark-mode-active .vu-handouts-badge {
        background: #d30303;
      }
      
      @media (max-width: 600px) {
        .ab-scheme-panel {
          padding: clamp(1px, 0.5vw, 3px) 0;
        }
        
        .ab-scheme-panel__items {
          gap: clamp(1px, 1vw, 4px);
        }
        
        .ab-scheme-panel__item {
          padding: clamp(1px, 0.8vw, 3px) clamp(2px, 1.5vw, 6px);
          font-size: clamp(7px, 2.2vw, 11px);
        }
      }
    `;
    (document.head || document.documentElement).appendChild(s);
  }

  // ===========================
  // DARK MODE SYNCHRONIZATION
  // ===========================

  /**
   * Syncs dark mode styling for all assessment panels
   */
  function syncDarkMode() {
    const el = document.getElementById('darkModeStyle');
    const isDark = !!el && !el.hasAttribute('disabled') && el.getAttribute('media') !== 'none';
    
    // Update all panels
    document.querySelectorAll('.ab-scheme-panel').forEach(panel => {
      panel.classList.toggle('dark-mode', isDark);
    });
    
    // Update body class
    document.body?.classList.toggle('dark-mode-active', isDark);
    
    // Update handout badges
    document.querySelectorAll('.vu-handouts-badge').forEach(badge => {
      badge.style.background = isDark ? '#03d3b4' : '#d30303';
    });
  }

  // ===========================
  // STORAGE HELPERS (localStorage based for Android WebView)
  // ===========================

  const STORAGE_KEY = 'vu_assessment_schemes_db_v1';

  function loadSchemesFromStorage() {
    try {
      const raw = localStorage.getItem(STORAGE_KEY);
      return raw ? JSON.parse(raw) : {};
    } catch (_) {
      return {};
    }
  }

  function saveSchemesToStorage(data) {
    try {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(data));
    } catch (_) {}
  }

  // ===========================
  // MAIN SCANNER FUNCTION
  // ===========================

  /**
   * Main function to scan and inject assessment schemes
   */
  async function scanAndInjectAssessmentSchemes() {
    // Only run on VU LMS home page
    const href = window.location.href.toLowerCase();
    const lmsHost = 'vulms.vu.edu.pk';
    
    if (!href.includes(lmsHost) || !href.includes('/home.aspx')) {
      return;
    }

    // Inject styles
    injectAssessmentSchemeStyles();

    // Setup dark mode observer
    if (document.head) {
      const obs = new MutationObserver(syncDarkMode);
      obs.observe(document.head, { 
        childList: true, 
        subtree: true, 
        attributes: true, 
        attributeFilter: ['disabled', 'media'] 
      });
    }

    syncDarkMode();

    // Load cached schemes from storage
    const schemeDb = loadSchemesFromStorage();

    // Find all course tiles
    const tiles = [...document.querySelectorAll('a[id*="ibtnCourseHome"][title]')];
    if (!tiles.length) {
      return;
    }

    // Build course map
    const courses = new Map();
    tiles.forEach(a => {
      const t = a.title.trim();
      if (!courses.has(t)) {
        const p = a.closest('.m-portlet');
        if (p) courses.set(t, { t, a, p });
      }
    });

    const pending = [];

    // Process cached courses first
    courses.forEach(({ t, p }) => {
      const scheme = schemeDb[t];
      if (scheme) {
        injectAssessmentScheme(p, scheme);
      } else {
        pending.push(courses.get(t));
      }
    });

    if (!pending.length) {
      return;
    }

    // Get form and hidden inputs for postback
    const form = document.querySelector('form');
    const action = form?.action || location.href;

    const hidden = {};
    document.querySelectorAll('input[type="hidden"]').forEach(i => {
      if (i.name) hidden[i.name] = i.value;
    });

    // Scan each pending course
    for (const { t, a, p } of pending) {
      const pb = extractPostbackMagic(a.getAttribute('href'));
      if (!pb) {
        continue;
      }

      // Build form data
      const fd = new URLSearchParams(hidden);
      fd.set(cf.et, pb.et);
      fd.set(cf.ea, pb.ea);

      try {
        // Fetch course page
        const res = await fetch(action, {
          method: 'POST',
          credentials: 'include',
          headers: { 'Content-Type': 'application/x-www-form-urlencoded' },
          body: fd
        });

        const html = await res.text();
        
        // Extract JsonData variable containing grading scheme
        const m = html.match(/var\s+JsonData\s*=\s*(\[[\s\S]*?\])\s*;/);

        if (!m) {
          continue;
        }

        const scheme = JSON.parse(m[1]);
        if (!scheme.length) {
          continue;
        }

        // Save to cache
        schemeDb[t] = scheme;
        saveSchemesToStorage(schemeDb);

        injectAssessmentScheme(p, scheme);

      } catch (e) {
        console.error(`[AB][scan] ${t}: failed`, e);
      }
    }
  }

  // Auto-run scanner
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', scanAndInjectAssessmentSchemes);
  } else {
    scanAndInjectAssessmentSchemes();
  }
})();

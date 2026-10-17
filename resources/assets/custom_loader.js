(function () {
  try {
    if (window.__vuToolkitLoaderInstalled) {
      return;
    }
    if (!window.location.hostname.includes('vulms.vu.edu.pk')) {
      return;
    }
    window.__vuToolkitLoaderInstalled = true;

    const LOADER_ID = 'MLoaderDiv';

    const fontLink = document.createElement('link');
    fontLink.rel = 'stylesheet';
    fontLink.href = 'https://fonts.googleapis.com/css2?family=Scheherazade+New&display=swap';
    document.documentElement.appendChild(fontLink);

    const style = document.createElement('style');
    style.textContent = `
      #MLoaderDiv * { visibility: hidden !important; }

      #kiro-overlay {
        position: fixed;
        inset: 0;
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        pointer-events: none;
        z-index: 999999;
        background: transparent;
      }
      .kiro-spinner {
        width: 70px;
        height: 70px;
        border: 6px solid #f0f0f0;
        border-top-color: #0051a7;
        border-radius: 50%;
        animation: kiro-spin 0.8s linear infinite;
      }
      .kiro-label {
        margin-top: 16px;
        color: #ffffffff;
        font-size: 28px;
        font-weight: 800;
        font-family: 'Scheherazade New', 'Traditional Arabic', serif;
        text-align: center;
        direction: rtl;
        line-height: 1.8;
      }
      @keyframes kiro-spin {
        to { transform: rotate(360deg); }
      }
    `;
    document.documentElement.appendChild(style);

    const overlay = document.createElement('div');
    overlay.id = 'kiro-overlay';
    overlay.innerHTML = `
      <div class="kiro-spinner"></div>
      <div class="kiro-label">صَلَّى ٱللَّهُ عَلَيْهِ وَآلِهِ وَسَلَّمَ</div>
    `;

    function showOverlay() {
      if (!document.body) {
        return;
      }
      if (!document.body.contains(overlay)) {
        document.body.appendChild(overlay);
      }
      overlay.style.display = 'flex';
    }

    function hideOverlay() {
      overlay.style.display = 'none';
    }

    function syncWithLoader(loader) {
      const computed = window.getComputedStyle(loader);
      const isVisible =
        computed.visibility !== 'hidden' &&
        computed.display !== 'none' &&
        computed.opacity !== '0';
      if (isVisible) {
        showOverlay();
      } else {
        hideOverlay();
      }
    }

    function watchLoader(loader) {
      syncWithLoader(loader);
      new MutationObserver(function () {
        syncWithLoader(loader);
      }).observe(loader, { attributes: true, attributeFilter: ['class', 'style'] });
    }

    new MutationObserver(function () {
      const loader = document.getElementById(LOADER_ID);
      if (loader && !loader._watched) {
        loader._watched = true;
        watchLoader(loader);
      }
      if (!loader) {
        hideOverlay();
      }
    }).observe(document.documentElement, { childList: true, subtree: true });

    const existing = document.getElementById(LOADER_ID);
    if (existing && !existing._watched) {
      existing._watched = true;
      watchLoader(existing);
    }
  } catch (e) {
    // Keep VU LMS usable if the overlay script fails.
  }
})();

// GDB & Inline Assignment Copy/Paste Enabler with Toast Notifications

(function() {
  'use strict';

  /* =========================================================
     TOAST MANAGER
  ========================================================= */
  const ToastManager = {
    show(message, type = 'success', duration = 3000) {
      const existing = document.getElementById('vutk-toast');
      if (existing) existing.remove();

      const toast = document.createElement('div');
      toast.id = 'vutk-toast';

      const icon = '<svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"></path><polyline points="22 4 12 14.01 9 11.01"></polyline></svg>';

      toast.innerHTML = `<span class="toast-icon" style="display:flex;align-items:center;justify-content:center;flex-shrink:0;">${icon}</span><span class="toast-message" style="flex:1;line-height:1.4;word-break:break-word;">${message}</span>`;

      Object.assign(toast.style, {
        position: 'fixed',
        top: '20px',
        left: '50%',
        transform: 'translateX(-50%) translateY(-100px)',
        background: '#2563eb',
        color: 'white',
        padding: '14px 22px',
        borderRadius: '12px',
        boxShadow: '0 10px 25px rgba(37, 99, 235, 0.4)',
        zIndex: '1000000',
        opacity: '0',
        transition: 'all 0.3s ease',
        width: 'auto',
        minWidth: '200px',
        maxWidth: '90%',
        display: 'flex',
        alignItems: 'center',
        gap: '12px',
        fontSize: '14px',
        fontWeight: '500',
        fontFamily: '-apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, sans-serif'
      });

      (document.body || document.documentElement).appendChild(toast);

      requestAnimationFrame(() => {
        toast.style.opacity = '1';
        toast.style.transform = 'translateX(-50%) translateY(0)';
      });

      if (duration !== Infinity) {
        setTimeout(() => {
          toast.style.opacity = '0';
          toast.style.transform = 'translateX(-50%) translateY(-100px)';
          setTimeout(() => toast.remove(), 300);
        }, duration);
      }
    }
  };

  /* =========================================================
     COPY-PASTE ENABLER FUNCTION
  ========================================================= */
  function nf() {
    const _u1 = '/GDB/StudentMessage.aspx';
    const _u2 = '/Assignments/InlineStudentSolution.aspx';
    const _h = window.location.href;
    const _p = window.location.pathname;

    if (!_h.includes(_u1) && !_h.includes(_u2)) return;

    // Add hidden input to enable copy/paste
    if (!document.getElementById('hfAllowCopyPaste')) {
      const input = document.createElement('input');
      input.type = 'hidden';
      input.name = 'hfAllowCopyPaste';
      input.id = 'hfAllowCopyPaste';
      input.value = '1';
      (document.body || document.documentElement).prepend(input);
    }

    // Update the paste disabled message
    function updateLabel() {
      const label = document.getElementById('MainContent_lblCopyPaste');
      if (label) {
        label.className = 'blue-label';
        label.innerHTML = 'The Paste <span class="red-text">(Ctrl + V)</span> Option That Was Disabled by the Course Instructor Has Been <span class="green-text">Enabled</span> by Paradoxical Enjoye 🤡 ...!';
        return true;
      }
      return false;
    }

    // Hide the Math Guide div
    function hideMathGuide() {
      const mathGuide = document.getElementById('MainContent_divMathGuide');
      if (mathGuide) {
        mathGuide.style.display = 'none';
        return true;
      }
      return false;
    }

    // Update both elements
    function updateElements() {
      updateLabel();
      hideMathGuide();
    }

    updateElements();

    // Show toast notification
    if (_p.includes(_u1)) {
      ToastManager.show('GDB copy paste has been enabled', 'success', 3000);
    } else if (_p.includes(_u2)) {
      ToastManager.show('Assignment Copy paste has been enabled', 'success', 3000);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', nf);
  } else {
    nf();
  }
})();

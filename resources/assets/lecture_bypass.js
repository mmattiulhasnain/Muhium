// Standalone VU LMS / DigiSkills lecture bypass script
// Extracted from the VU Toolkit WebView injection.

(function() {
  'use strict';

  function lv() {
    return 'vulms.vu.edu.pk/lessonviewer.aspx';
  }
  function dk() {
    return 'lms.digiskills.pk/coursetopicdetail.aspx';
  }
  function fi() {
    return 'https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap';
  }

  function init() {
    var url = window.location.href.toLowerCase();
    var site = null;
    if (url.includes(lv())) site = 'vulms';
    else if (url.includes(dk())) site = 'digiskills';
    if (!site) return;
    if (document.getElementById('vu-bypass-container')) return;

    var fontUrl = fi();
    function n(sel) { return document.querySelector(sel); }
    function randomInt(a, b) { return Math.floor(Math.random() * (b - a + 1) + a); }

    var LS_AUTO_KEY = 'bypass_auto_' + site;
    var LS_PREV_KEY = 'bypass_prev_' + site;
    var LS_RETRIES_KEY = 'bypass_retries_' + site;

    (function injectStyles() {
      if (document.getElementById('vu-bypass-styles')) return;
      var s = document.createElement('style');
      s.id = 'vu-bypass-styles';
      s.textContent = [
        "@import url('" + fontUrl + "');",
        '#vu-bypass-container{position:fixed;bottom:28px;left:50%;transform:translateX(-50%);z-index:2147483647;display:flex;align-items:center;gap:5px;font-family:"Inter",system-ui,sans-serif}',
        '.vu-btn{display:inline-flex;align-items:center;gap:8px;border:none;border-radius:40px;padding:15px 20px;font-size:15px;font-weight:600;font-family:"Inter",system-ui,sans-serif;cursor:pointer;letter-spacing:.2px;transition:opacity .15s,transform .15s,box-shadow .15s;user-select:none;white-space:nowrap;outline:none}',
        '.vu-btn:hover{opacity:.95;transform:translateY(-2px) scale(1.05)}',
        '.vu-btn:active{opacity:1;transform:translateY(0) scale(.97)}',
        '.vu-btn:disabled{opacity:.95;cursor:not-allowed;transform:none}',
        '.vu-btn-primary{background:#1a56db;color:#fff;box-shadow:0 2px 12px rgba(91,94,246,.5)}',
        '.vu-btn-auto{background:#1a56db;color:#fff;border:none;box-shadow:0 2px 12px rgba(26,86,219,.45)}',
        '.vu-btn-auto:hover{background:#1e4fc2}',
        '.vu-btn-stop{background:#dc2626;color:#fff;border:none;box-shadow:0 2px 12px rgba(220,38,38,.4)}',
        '.vu-btn-stop:hover{background:#b91c1c}',
        '.vu-divider{width:1px;height:22px;background:rgba(0,0,0,.15);flex-shrink:0}',
        '#vu-bypass-toast{position:fixed;top:20px;left:50%;transform:translateX(-50%) translateY(-8px);z-index:2147483647;display:flex;align-items:center;gap:10px;background:#1a56db;border-radius:12px;padding:14px 24px;font-size:15px;font-weight:500;font-family:"Inter",system-ui,sans-serif;color:#fff;box-shadow:0 4px 20px rgba(26,86,219,.5);pointer-events:none;opacity:0;transition:opacity .22s ease,transform .22s ease;max-width:520px;white-space:nowrap}',
        '#vu-bypass-toast.vu-toast-show{opacity:1;transform:translateX(-50%) translateY(0)}',
        '.vu-toast-spinner{width:17px;height:17px;border:2px solid rgba(255,255,255,.3);border-top-color:#fff;border-radius:50%;animation:vu-spin .8s linear infinite;flex-shrink:0}',
        '@keyframes vu-spin{to{transform:rotate(360deg)}}',
        '@media(max-width:640px){#vu-bypass-toast{padding:9px 16px;font-size:12px;gap:7px}.vu-toast-spinner{width:13px;height:13px}}'
      ].join('\n');
      document.head.appendChild(s);
    })();

    var toastTimer = null;
    function setStatus(msg, hideSpinner, bgColor) {
      var toast = document.getElementById('vu-bypass-toast');
      if (!toast) {
        toast = document.createElement('div');
        toast.id = 'vu-bypass-toast';
        var spinner = document.createElement('div');
        spinner.className = 'vu-toast-spinner';
        spinner.id = 'vu-toast-spinner';
        var text = document.createElement('span');
        text.id = 'vu-toast-text';
        toast.appendChild(spinner);
        toast.appendChild(text);
        document.body.appendChild(toast);
      }
      var spinnerEl = document.getElementById('vu-toast-spinner');
      var textEl = document.getElementById('vu-toast-text');
      if (spinnerEl) spinnerEl.style.display = hideSpinner ? 'none' : 'block';
      if (textEl) textEl.textContent = msg;
      toast.style.background = bgColor || '#1a56db';
      toast.classList.add('vu-toast-show');
      clearTimeout(toastTimer);
      toastTimer = setTimeout(function () { toast.classList.remove('vu-toast-show'); }, 4000);
    }

    function vuBypass() {
      function skipVideo(tabIndex) {
        var _, x, w, m, j, A, C;
        var d = (_ = n('#hfTabCompletionStatus' + tabIndex)) == null ? void 0 : _.value;
        if (d === 'Completed') return Promise.resolve(d);
        var h = (x = n('#hfIsVideo' + tabIndex)) == null ? void 0 : x.value;
        var u = (w = n('#hfContentID' + tabIndex)) == null ? void 0 : w.value;
        var b = (m = n('#hfVideoID' + tabIndex)) == null ? void 0 : m.value;
        var y = '';
        var E = (j = n('#hfStudentID')) == null ? void 0 : j.value;
        var M = (A = n('#hfCourseCode')) == null ? void 0 : A.value;
        var T = (C = n('#hfEnrollmentSemester')) == null ? void 0 : C.value;
        var titleEl = document.getElementById('MainContent_lblLessonTitle');
        if (!titleEl) return Promise.reject(new Error('Lesson title not found'));
        var S = titleEl.title.split(':')[0].replace('Lesson', '').trim();
        var p = randomInt(400, 800);
        return new Promise(function (D) {
          PageMethods.SaveStudentVideoLog(E, M, T, S, u, p, y, b, h, window.location.href, function (P) { D(P); });
        });
      }

      function skipReading(tabIndex) {
        var S, v, p, _, x;
        var d = (S = n('#hfTabCompletionStatus' + tabIndex)) == null ? void 0 : S.value;
        if (d === 'Completed') return Promise.resolve(d);
        var h = (v = n('#hfContentID' + tabIndex)) == null ? void 0 : v.value;
        var u = 3;
        var b = (p = n('#hfStudentID')) == null ? void 0 : p.value;
        var y = (_ = n('#hfCourseCode')) == null ? void 0 : _.value;
        var E = (x = n('#hfEnrollmentSemester')) == null ? void 0 : x.value;
        var titleEl = document.getElementById('MainContent_lblLessonTitle');
        if (!titleEl) return Promise.reject(new Error('Lesson title not found'));
        var M = titleEl.title.split(':')[0].replace('Lesson', '').trim();
        var T = randomInt(5, 12);
        return new Promise(function (w) {
          PageMethods.SaveStudentVideoLog(b, y, E, M, h, T, u, '', '0', window.location.href, function (m) { w(m); });
        });
      }

      return (async function () {
        var s = Array.from(document.querySelectorAll('.tab-content .tab-pane'))
          .map(function (l) { return l.id.replace('tab', ''); });
        if (!s.length) return { success: false, error: 'No lesson tabs found' };
        if (typeof PageMethods === 'undefined' || !PageMethods.SaveStudentVideoLog)
          return { success: false, error: 'PageMethods not available' };
        try {
          var tabPromises = s.map(function (h) {
            var isVid = (n('#hfIsVideo' + h) || {}).value;
            return (!isVid || isVid == '0')
              ? skipReading(h).catch(function () { throw new Error('Unable to skip reading'); })
              : skipVideo(h).catch(function () { throw new Error('Unable to skip video'); });
          });
          var firstResult = await Promise.race([
            new Promise(function (_, reject) { setTimeout(function () { reject(new Error('Timeout')); }, 30000); }),
            tabPromises[0]
          ]);
          if (typeof firstResult === 'string' && firstResult.toLowerCase().includes('tracking disabled')) {
            return { success: false, error: 'This course does not have attendance' };
          }
          var results = await Promise.race([
            new Promise(function (_, reject) { setTimeout(function () { reject(new Error('Timeout')); }, 30000); }),
            Promise.all(tabPromises)
          ]);
          var trackingDisabled = results.find(function (r) {
            return typeof r === 'string' && r.toLowerCase().includes('tracking disabled');
          });
          if (trackingDisabled) return { success: false, error: 'This course does not have attendance' };
        } catch (error) {
          return { success: false, error: error && error.message ? error.message : String(error) };
        }
        var lastTab = s[s.length - 1];
        var af = n('#hfActiveTab');
        if (af) af.value = lastTab;
        if (typeof UpdateTabStatus === 'function') { try { UpdateTabStatus('Completed', lastTab, '-1'); } catch(e) {} }
        s.forEach(function (id) {
          var f = document.getElementById('hfTabCompletionStatus' + id);
          if (f) f.value = 'Completed';
          ['lblRCompletionStatus', 'lblDBRCompletionStatus', 'lblVCompletionStatus'].forEach(function (pfx) {
            var el = document.getElementById(pfx + id);
            if (el) el.innerHTML = "<i class='fa fa-check text-success'></i>Completed";
          });
          var li = document.getElementById('liHeader' + id);
          if (li) li.classList.remove('disabled');
          var th = document.getElementById('tabHeader' + id);
          if (th) th.classList.remove('disabled');
        });
        var nextLessonButton = n('#lbtnNextLesson');
        if (nextLessonButton instanceof HTMLAnchorElement) {
          nextLessonButton.classList.remove('disabled');
          nextLessonButton.click();
          return { success: true };
        } else {
          return { success: true, lastLesson: true };
        }
      })();
    }

    function digiBypass() {
      return (async function () {
        var q = function (sel) { return document.querySelector(sel); };
        var $ = window.$;
        var hfIsVideo = (q('#hfIsVideo') || {}).value || ($ ? $('#hfIsVideo').val() : null);
        var hfVideoContentId = (q('#hfVideoContentId') || {}).value || ($ ? $('#hfVideoContentId').val() : null);
        var hfStudentID = (q('#hfStudentID') || {}).value || ($ ? $('#hfStudentID').val() : null);
        var hfCourseCode = (q('#hfCourseCode') || {}).value || ($ ? $('#hfCourseCode').val() : null);
        var hfEnrollmentSemester = (q('#hfEnrollmentSemester') || {}).value || ($ ? $('#hfEnrollmentSemester').val() : null);
        if (!hfIsVideo || hfIsVideo === 'No') return { success: false, error: 'Not a video page' };
        var videoDuration = 0;
        var videoId = '';
        try {
          if (typeof window.CurrentPlayer !== 'undefined' && window.CurrentPlayer) {
            videoDuration = window.CurrentPlayer.getDuration();
            videoId = window.CurrentPlayer.videoId || (q('#hfVideoID') || {}).value || '';
          } else if (typeof window.CurrentLVPlayer !== 'undefined' && window.CurrentLVPlayer) {
            videoDuration = window.CurrentLVPlayer.duration;
          } else {
            videoDuration = 600;
          }
        } catch (err) { videoDuration = 600; }
        var timeSpent = randomInt(120, 180);
        if (videoDuration > 0) timeSpent = randomInt(Math.floor(videoDuration / 3), Math.floor(videoDuration / 2));
        var params = {
          hfVideoDuration: JSON.stringify(videoDuration),
          hfIsVideo: JSON.stringify(hfIsVideo),
          hfVideoContentId: JSON.stringify(hfVideoContentId),
          hfStartTime: JSON.stringify(0),
          hfEndTime: JSON.stringify(timeSpent),
          hfVideoID: JSON.stringify(videoId),
          hfDomain: JSON.stringify(window.location.href),
          hfIsLastContent: JSON.stringify(0),
          hfTimeSpent: JSON.stringify(timeSpent),
          hfStudentID: JSON.stringify(hfStudentID),
          hfCourseCode: JSON.stringify(hfCourseCode),
          hfEnrollmentSemester: JSON.stringify(hfEnrollmentSemester)
        };
        var response = await new Promise(function (resolve) {
          if (typeof $ === 'function') {
            $.ajax({
              type: 'POST',
              url: '/CourseTopicDetail.aspx/SaveTrackDetail',
              data: JSON.stringify(params),
              contentType: 'application/json; charset=utf-8',
              dataType: 'json',
              success: function (data) { resolve({ success: true, data: data }); },
              error: function (xhr, _status, error) { resolve({ success: false, error: error, responseText: xhr && xhr.responseText }); }
            });
          } else {
            fetch('/CourseTopicDetail.aspx/SaveTrackDetail', {
              method: 'POST',
              headers: { 'Content-Type': 'application/json; charset=utf-8' },
              body: JSON.stringify(params)
            })
            .then(function (res) {
              return res.json().then(function (data) {
                if (!res.ok) { resolve({ success: false, status: res.status, data: data }); return; }
                resolve({ success: true, data: data });
              }).catch(function () { resolve({ success: false, error: 'Invalid JSON response' }); });
            })
            .catch(function (error) { resolve({ success: false, error: error && error.message ? error.message : String(error) }); });
          }
        });
        if (response.success) {
          try {
            var indicator = q('#ctl00_ContentPlaceHolder1_lblcompletion');
            if (indicator) {
              indicator.classList.remove('fa-times-circle', 'text-red');
              indicator.classList.add('fa-check-circle', 'text-green');
            }
          } catch(e) {}
          var nextBtn = q('#ctl00_ContentPlaceHolder1_lbtnNextLessonTop');
          if (nextBtn) { nextBtn.click(); return { success: true }; }
          return { success: true, lastLesson: true };
        }
        return { success: false, error: response.error || 'API request failed' };
      })();
    }

    function runBypass() { return site === 'vulms' ? vuBypass() : digiBypass(); }

    var ICON_CHECK = '<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" viewBox="0 0 16 16" style="stroke:currentColor;stroke-width:.5"><path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0"/><path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0z"/></svg>';
    var ICON_AUTO = '<svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round"><polyline points="17 1 21 5 17 9"/><path d="M3 11V9a4 4 0 0 1 4-4h14"/><polyline points="7 23 3 19 7 15"/><path d="M21 13v2a4 4 0 0 1-4 4H3"/></svg>';
    var ICON_STOP = '<svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor"><rect x="4" y="4" width="16" height="16" rx="2"/></svg>';

    function resetManualBtn() {
      var btn = document.getElementById('vu-bypass-btn');
      if (btn) { btn.disabled = false; btn.innerHTML = ICON_CHECK + ' Manual Bypass'; }
    }
    function setAutoBtnStart() {
      var btn = document.getElementById('vu-auto-bypass-btn');
      if (btn) { btn.className = 'vu-btn vu-btn-auto'; btn.innerHTML = ICON_AUTO + ' Auto Bypass'; }
    }
    function setAutoBtnStop() {
      var btn = document.getElementById('vu-auto-bypass-btn');
      if (btn) { btn.className = 'vu-btn vu-btn-stop'; btn.innerHTML = ICON_STOP + ' Stop'; }
    }

    async function onManualClick() {
      var btn = document.getElementById('vu-bypass-btn');
      btn.disabled = true;
      btn.style.opacity = '0.7';
      var dotCount = 1;
      btn.innerHTML = ICON_CHECK + ' Bypassing.';
      var dotInterval = setInterval(function () {
        dotCount = (dotCount % 3) + 1;
        btn.innerHTML = ICON_CHECK + ' Bypassing' + '.'.repeat(dotCount);
      }, 500);
      setStatus('Bypassing...');
      var result = await runBypass();
      clearInterval(dotInterval);
      btn.style.opacity = '';
      if (!result.success) { setStatus(result.error || 'Bypass failed', true, '#dc2626'); resetManualBtn(); return; }
      if (result.lastLesson) { setStatus('Done! This appears to be the last lesson.', true); resetManualBtn(); return; }
      setStatus('Done! Going to next lesson...', true);
    }

    async function onAutoClick() {
      if (localStorage.getItem(LS_AUTO_KEY)) {
        localStorage.removeItem(LS_AUTO_KEY);
        localStorage.removeItem(LS_PREV_KEY);
        localStorage.removeItem(LS_RETRIES_KEY);
        setAutoBtnStart();
        setStatus('Auto Bypass stopped.', true);
        return;
      }
      localStorage.setItem(LS_AUTO_KEY, '1');
      setAutoBtnStop();
      setStatus('Auto Bypass started...');
      await runAutoBypass();
    }

    async function runAutoBypass() {
      setStatus('Bypassing...');
      var result = await runBypass();
      if (!result.success) { setStatus(result.error + ' - stopping.', true, '#dc2626'); stopAutoBypass(); return; }
      if (result.lastLesson) { setStatus('Auto Bypass complete! Last lesson reached.', true); stopAutoBypass(); return; }
      setStatus('Done. Moving to next lesson...', true);
    }

    function stopAutoBypass() {
      localStorage.removeItem(LS_AUTO_KEY);
      localStorage.removeItem(LS_PREV_KEY);
      localStorage.removeItem(LS_RETRIES_KEY);
      setAutoBtnStart();
    }

    var container = document.createElement('div');
    container.id = 'vu-bypass-container';
    var btn = document.createElement('button');
    btn.id = 'vu-bypass-btn';
    btn.className = 'vu-btn vu-btn-primary';
    btn.innerHTML = ICON_CHECK + ' Manual Bypass';
    btn.title = 'Mark all tabs as viewed then go to next lesson';
    btn.addEventListener('click', onManualClick);
    var divider = document.createElement('div');
    divider.className = 'vu-divider';
    var autoBtn = document.createElement('button');
    autoBtn.id = 'vu-auto-bypass-btn';
    autoBtn.className = 'vu-btn vu-btn-auto';
    autoBtn.innerHTML = ICON_AUTO + ' Auto Bypass';
    autoBtn.title = 'Automatically complete and advance through all lessons';
    autoBtn.addEventListener('click', onAutoClick);
    container.appendChild(btn);
    container.appendChild(divider);
    container.appendChild(autoBtn);
    document.body.appendChild(container);

    if (localStorage.getItem(LS_AUTO_KEY)) {
      setAutoBtnStop();
      var prevLesson = localStorage.getItem(LS_PREV_KEY);
      var currentId = window.location.href;
      if (site === 'vulms') {
        try {
          var titleEl = document.getElementById('MainContent_lblLessonTitle');
          if (titleEl) currentId = (titleEl.title || titleEl.textContent).split(':')[0].replace(/Lesson/i, '').trim();
        } catch(e) {}
      }
      if (prevLesson && prevLesson === currentId) {
        var retries = parseInt(localStorage.getItem(LS_RETRIES_KEY) || '0', 10) + 1;
        if (retries >= 3) { setStatus('Auto Bypass complete! - stopping.', true); stopAutoBypass(); return; }
        localStorage.setItem(LS_RETRIES_KEY, String(retries));
        setStatus('Same lesson, retrying... (attempt ' + retries + '/3)');
      } else {
        localStorage.removeItem(LS_RETRIES_KEY);
      }
      localStorage.setItem(LS_PREV_KEY, currentId);
      setStatus('Auto Bypass resuming...');
      runAutoBypass();
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();

(function () {
  'use strict';

  try {
    if (window.__vuToolkitPasswordManagerInstalled) {
      return;
    }
    if (!window.location.hostname.includes('vulms.vu.edu.pk')) {
      return;
    }
    window.__vuToolkitPasswordManagerInstalled = true;

    const DEBUG_LOGS = false;

    function dbg() {
      if (!DEBUG_LOGS) return;
      try {
        console.log.apply(console, ['[VU-PM]'].concat([].slice.call(arguments)));
      } catch (_) { }
    }

    const STORAGE_KEY = 'vu_password_manager_entries_v1';

    function getEntries() {
      return new Promise(function (resolve) {
        try {
          const raw = localStorage.getItem(STORAGE_KEY);
          if (!raw) return resolve([]);
          const parsed = JSON.parse(raw);
          if (Array.isArray(parsed)) {
            return resolve(parsed);
          }
          // Agar purana encrypted object ho to fallback
          if (parsed && typeof parsed === 'object' && parsed.payload) {
            return resolve([]);
          }
          resolve([]);
        } catch (_) {
          resolve([]);
        }
      });
    }

    function setEntries(entries) {
      return new Promise(function (resolve) {
        try {
          localStorage.setItem(STORAGE_KEY, JSON.stringify(entries || []));
        } catch (_) { }
        resolve();
      });
    }

    const SELECTORS = {
      form: '.m-login__form.m-form',
      studentId: '#txtStudentID',
      password: '#txtPassword',
      loginButton: '#ibtnLogin'
    };

    function isLoginPage() {
      const href = String(window.location.href || '').toLowerCase();
      if (href.includes('/home.aspx')) return false;
      return !!document.querySelector(SELECTORS.loginButton);
    }

    function injectStyles() {
      if (document.getElementById('vu-pm-styles')) return;

      const style = document.createElement('style');
      style.id = 'vu-pm-styles';
      style.textContent = `.vu-pm-wrap{display:flex;align-items:center;gap:12px;width:100%;margin-top:16px}.vu-pm-wrap>*{flex:1 1 0}@media(max-width:480px){.vu-pm-wrap{flex-direction:column}.vu-pm-wrap>*{width:100%}}.vu-pm-btn.vu-btn{display:inline-block;text-align:center;white-space:nowrap;transition:all .2s ease}.vu-pm-btn-badge-wrap{position:relative;flex:1 1 0;display:inline-flex}.vu-pm-btn-badge-wrap>.vu-pm-btn.vu-btn{width:100%}.vu-pm-new-badge{position:absolute;top:-5px;right:0;z-index:1;padding:2px 5px;font-size:10px;font-weight:800;letter-spacing:.6px;line-height:1.2;color:#fff;background:red;border-radius:0;pointer-events:none;user-select:none;font-style:italic}.vu-pm-modal-overlay{position:fixed;inset:0;background:rgba(15,23,42,.35);z-index:2147483646;display:none;align-items:center;justify-content:center;padding:16px}.vu-pm-modal-overlay.open{display:flex}.vu-pm-modal{width:400px;max-width:94vw;max-height:76vh;background:#fff;box-shadow:0 25px 80px rgba(0,0,0,.28);overflow:hidden;font-family:system-ui,-apple-system,Segoe UI,Roboto,Arial,sans-serif;animation:vuPmFadeIn .25s ease-out;display:flex;flex-direction:column}@keyframes vuPmFadeIn{from{opacity:0;transform:scale(.95)}to{opacity:1;transform:scale(1)}}@keyframes vuPmHeartBeat{0%,100%{transform:scale(1)}20%{transform:scale(1.18)}40%{transform:scale(1)}60%{transform:scale(1.12)}80%{transform:scale(1)}}.vu-pm-heart{display:inline-block;animation:vuPmHeartBeat 1.1s ease-in-out infinite;transform-origin:center;color:#ef4444;position:relative;top:3px}.vu-pm-modal-header{display:flex;align-items:center;justify-content:space-between;padding:12px 16px;background:linear-gradient(135deg,#2563eb,#3b82f6);color:#fff;flex-shrink:0}.vu-pm-modal-title{font-weight:700;font-size:15px;flex:1;text-align:center}.vu-pm-close{border:none;background:rgba(255,255,255,.15);color:#fff;cursor:pointer;width:36px;height:36px;display:inline-flex;align-items:center;justify-content:center;font-size:20px;transition:background .2s}.vu-pm-modal-body{padding:16px;flex:1;overflow-y:auto;overscroll-behavior:contain;display:flex;flex-direction:column}.vu-pm-content{flex:1}.vu-pm-grid{display:grid;grid-template-columns:1fr 1fr;gap:16px}.vu-pm-field label{display:block;font-size:13px;font-weight:600;color:#374151;margin-bottom:8px}.vu-pm-field input{width:100%;border:1.5px solid #e2e8f0;padding:10px 12px;font-size:14px;background:#f8fafc;transition:all .2s}.vu-pm-field input:focus{border-color:#3b82f6;box-shadow:0 0 0 4px rgba(59,130,246,.2);background:#fff}.vu-pm-password-wrap{position:relative}.vu-pm-password-wrap input{padding-right:52px}.vu-pm-password-toggle{position:absolute;right:6px;top:50%!important;transform:translateY(-50%)!important;box-sizing:border-box;margin:0;border:1.5px solid #e2e8f0;border-radius:10px;background:#fff;color:#475569;width:34px;height:34px;display:inline-flex;align-items:center;justify-content:center;cursor:pointer;padding:0;line-height:0;font:inherit;appearance:none;-webkit-appearance:none;z-index:3}.vu-pm-password-toggle svg{width:18px;height:18px;display:block}.vu-pm-actions{display:flex;gap:12px;margin-top:20px}#vuPmAddNew{width:100%;padding:12px;border:2px dashed #94a3b8;background:#f1f5f9;color:#475569;font-weight:600;font-size:14px;cursor:pointer;transition:all .2s}.vu-pm-primary,.vu-pm-secondary{padding:10px 14px;font-weight:600;font-size:14px;cursor:pointer;transition:all .2s;flex:1}.vu-pm-primary{background:linear-gradient(135deg,#2563eb,#3b82f6);color:#fff;border:none;box-shadow:0 4px 12px rgba(37,99,235,.22)}.vu-pm-secondary{background:#fff;color:#475569;border:1.5px solid #e2e8f0}.vu-pm-list{flex:1}.vu-pm-row{display:flex;align-items:center;justify-content:space-between;gap:12px;padding:14px 16px;border:1.5px solid #e2e8f0;margin-bottom:12px;background:#fff;box-shadow:0 2px 8px rgba(0,0,0,.05);transition:all .25s}.vu-pm-row.vu-pm-clickable{cursor:pointer}.vu-pm-row.vu-pm-clickable:hover{border-color:#3b82f6;box-shadow:0 4px 16px rgba(59,130,246,.2);transform:translateY(-2px);background:#f8faff}.vu-pm-row-left{min-width:0;flex:1 1 60%;max-width:65%;overflow:hidden}.vu-pm-row-title{font-weight:700;color:#1e293b;font-size:16px;word-break:break-word;line-height:1.4}.vu-pm-row-sub{font-size:13px;color:#64748b;font-weight:500;margin-top:4px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap}.vu-pm-row-btns{display:flex;gap:8px;flex-shrink:0}.vu-pm-small{min-width:72px;padding:6px 10px;font-weight:600;font-size:12px;cursor:pointer;transition:all .2s}.vu-pm-small:first-child{background:#eff6ff;color:#2563eb;border:1.5px solid #bfdbfe}.vu-pm-danger{background:#fef2f2;color:#dc2626;border:1.5px solid #fecaca}.vu-pm-footer{margin-top:auto;padding-top:20px;text-align:center;font-size:13.5px;color:#0055ff;font-style:italic;font-weight:700;border-top:1px solid #e2e8f0}.vu-pm-tap-note{font-size:12px;color:#000;font-weight:600;font-style:italic;margin:5px 0}.vu-pm-toast-container{position:fixed;top:30px;left:50%;transform:translateX(-50%);z-index:2147483647;display:flex;flex-direction:column;gap:12px;align-items:center;pointer-events:none}.vu-pm-toast{min-width:300px;max-width:90vw;padding:16px 24px;border-radius:12px;color:#fff;font-weight:600;font-size:15px;box-shadow:0 12px 40px rgba(0,0,0,.35);opacity:0;transform:translateY(-40px);transition:all .45s cubic-bezier(.175,.885,.32,1.275);display:flex;align-items:center;gap:14px;backdrop-filter:blur(10px)}.vu-pm-toast.show{opacity:1;transform:translateY(0)}.vu-pm-toast.success{background:linear-gradient(135deg,#06f,#06f)}.vu-pm-toast.error{background:linear-gradient(135deg,#dc2626,#ef4444)}.vu-pm-toast svg{width:20px;height:20px;flex-shrink:0}@media(max-width:480px){.vu-pm-grid{grid-template-columns:1fr;gap:12px}.vu-pm-row{flex-direction:row;align-items:flex-start;gap:10px;padding:10px 12px}.vu-pm-small{min-width:56px;padding:6px 8px;font-size:11.5px}.vu-pm-footer{font-size:13px;padding-top:16px}}`;
      (document.head || document.documentElement).appendChild(style);
    }

    function showToast(message, type) {
      type = type || 'success';
      let container = document.getElementById('vu-pm-toast-container');
      if (!container) {
        container = document.createElement('div');
        container.id = 'vu-pm-toast-container';
        container.className = 'vu-pm-toast-container';
        document.body.appendChild(container);
      }

      const toast = document.createElement('div');
      toast.className = 'vu-pm-toast ' + type;

      const icon = type === 'success'
        ? '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3"><path d="M20 6L9 17l-5-5"/></svg>'
        : '<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="3"><path d="M18 6L6 18M6 6l12 12"/></svg>';

      toast.innerHTML = icon + '<span></span>';
      toast.querySelector('span').textContent = message;
      container.appendChild(toast);

      setTimeout(function () { toast.classList.add('show'); }, 100);

      setTimeout(function () {
        toast.classList.remove('show');
        setTimeout(function () {
          if (toast.parentElement) toast.parentElement.removeChild(toast);
        }, 400);
      }, 1000);
    }

    function uid() {
      return Date.now() + '_' + Math.random().toString(36).substr(2, 9);
    }

    function safeQuery(sel) { return document.querySelector(sel); }

    function setNativeValue(el, value) {
      const prototype = Object.getPrototypeOf(el);
      const setter = (Object.getOwnPropertyDescriptor(prototype, 'value') || {}).set ||
        (Object.getOwnPropertyDescriptor(el, 'value') || {}).set;
      if (setter) setter.call(el, value);
      else el.value = value;
    }

    function fillAndLogin(entry) {
      const studentEl = safeQuery(SELECTORS.studentId);
      const passEl = safeQuery(SELECTORS.password);
      const loginEl = safeQuery(SELECTORS.loginButton);
      if (!studentEl || !passEl || !loginEl) return;

      setNativeValue(studentEl, entry.studentId || '');
      studentEl.dispatchEvent(new Event('input', { bubbles: true }));
      studentEl.dispatchEvent(new Event('change', { bubbles: true }));

      setTimeout(function () {
        setNativeValue(passEl, entry.password || '');
        passEl.dispatchEvent(new Event('input', { bubbles: true }));
        passEl.dispatchEvent(new Event('change', { bubbles: true }));
        loginEl.click();
      }, 50);
    }

    function ensureButton() {
      const loginBtn = safeQuery(SELECTORS.loginButton);
      if (!loginBtn || document.getElementById('vu-pm-btn')) return;

      const actionContainer = loginBtn.closest('.m-login__form-action') || loginBtn.parentElement;
      if (!actionContainer) return;

      const wrap = document.createElement('div');
      wrap.className = 'vu-pm-wrap';
      actionContainer.insertBefore(wrap, loginBtn);
      wrap.appendChild(loginBtn);

      const pmBtnWrap = document.createElement('span');
      pmBtnWrap.className = 'vu-pm-btn-badge-wrap';
      wrap.appendChild(pmBtnWrap);

      const pmBtn = document.createElement('button');
      pmBtn.type = 'button';
      pmBtn.id = 'vu-pm-btn';
      pmBtn.className = 'vu-pm-btn vu-btn btn btn-primary m-btn m-btn--pill m-btn--custom m-btn--air';
      pmBtn.textContent = 'Accounts Manager';
      pmBtnWrap.appendChild(pmBtn);

      const pmNewBadge = document.createElement('span');
      pmNewBadge.className = 'vu-pm-new-badge';
      pmNewBadge.textContent = 'New';
      pmBtnWrap.appendChild(pmNewBadge);

      const modal = createModal();
      document.body.appendChild(modal.overlay);

      pmBtn.addEventListener('click', function () { modal.open(); });
    }

    function createModal() {
      const overlay = document.createElement('div');
      overlay.className = 'vu-pm-modal-overlay';

      const modal = document.createElement('div');
      modal.className = 'vu-pm-modal';
      modal.innerHTML = '<div class="vu-pm-modal-header"><div class="vu-pm-modal-title">LMS Accounts Manager</div><button class="vu-pm-close" type="button" aria-label="Close">✕</button></div><div class="vu-pm-modal-body"><div class="vu-pm-content"><div class="vu-pm-actions" style="margin-top:0;"><button id="vuPmAddNew" type="button" class="vu-pm-secondary">+ Add New Student</button></div><div id="vuPmForm" style="display:none;"><div class="vu-pm-grid"><div class="vu-pm-field"><label for="vuPmLabel">Student Name</label><input id="vuPmLabel" type="text" placeholder="e.g. Ahmed Ali"/></div><div class="vu-pm-field"><label for="vuPmStudentId">Student ID</label><input id="vuPmStudentId" type="text" placeholder="e.g. bc123456789"/></div><div class="vu-pm-field" style="grid-column:1/-1;"><label for="vuPmPassword">Password</label><div class="vu-pm-password-wrap"><input id="vuPmPassword" type="password" placeholder="Enter password"/><button id="vuPmTogglePassword" type="button" class="vu-pm-password-toggle" aria-label="Show password"><svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/><circle cx="12" cy="12" r="3"/></svg></button></div></div></div><div class="vu-pm-actions"><button id="vuPmSave" type="button" class="vu-pm-primary">Save</button><button id="vuPmCancelEdit" type="button" class="vu-pm-secondary">Cancel</button></div></div><div id="vuPmTapNote" class="vu-pm-tap-note">Click on any Account to Login</div><div class="vu-pm-list" id="vuPmList"></div></div><div class="vu-pm-footer">Made with <span class="vu-pm-heart"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16"><path fill-rule="evenodd" d="M8 1.314C12.438-3.248 23.534 4.735 8 15-7.534 4.736 3.562-3.248 8 1.314"/></svg></span> By #Paradoxical</div></div>';

      overlay.appendChild(modal);

      const closeBtn = modal.querySelector('.vu-pm-close');
      const formWrap = modal.querySelector('#vuPmForm');
      const addNewBtn = modal.querySelector('#vuPmAddNew');
      const labelEl = modal.querySelector('#vuPmLabel');
      const studentIdEl = modal.querySelector('#vuPmStudentId');
      const passwordEl = modal.querySelector('#vuPmPassword');
      const toggleBtn = modal.querySelector('#vuPmTogglePassword');
      const saveBtn = modal.querySelector('#vuPmSave');
      const cancelBtn = modal.querySelector('#vuPmCancelEdit');
      const tapNoteEl = modal.querySelector('#vuPmTapNote');
      const listEl = modal.querySelector('#vuPmList');
      const addNewActions = addNewBtn ? addNewBtn.closest('.vu-pm-actions') : null;

      let editingId = null;

      function showForm() {
        formWrap.style.display = 'block';
        if (addNewActions) addNewActions.style.display = 'none';
        listEl.style.display = 'none';
        tapNoteEl.style.display = 'none';
      }
      function hideForm() {
        formWrap.style.display = 'none';
        if (addNewActions) addNewActions.style.display = '';
        listEl.style.display = '';
        if (document.querySelectorAll('.vu-pm-row').length > 0) {
          tapNoteEl.style.display = '';
        }
      }

      function resetForm() {
        editingId = null;
        labelEl.value = '';
        studentIdEl.value = '';
        passwordEl.value = '';
        passwordEl.type = 'password';
        toggleBtn.setAttribute('aria-label', 'Show password');
        toggleBtn.querySelector('svg').innerHTML = '<path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle><path d="M2 2l20 20" stroke-linecap="round"/>';
        saveBtn.textContent = 'Save';
      }

      async function renderList() {
        const entries = await getEntries();
        listEl.innerHTML = '';

        if (!entries.length) {
          tapNoteEl.style.display = 'none';
          listEl.innerHTML = '<div style="text-align:center; color:#64748b; padding:32px 20px; font-size:14px;"><div style="font-size:16px; font-weight:700; color:#1e293b; margin-bottom:12px;">Welcome to LMS Accounts Manager!</div><div style="margin-bottom:16px; line-height:1.6;">Securely save and manage multiple student accounts for quick login. No more typing credentials every time!</div><div style="color:#475569; font-weight:600;">No accounts saved yet.</div><br>Tap "+ Add New Student" to get started.</div>';
          return;
        }

        tapNoteEl.style.display = '';

        entries.forEach(function (entry) {
          const row = document.createElement('div');
          row.className = 'vu-pm-row vu-pm-clickable';

          row.addEventListener('click', function (e) {
            if (e.target.closest('.vu-pm-row-btns')) return;
            overlay.classList.remove('open');
            fillAndLogin(entry);
          });

          const left = document.createElement('div');
          left.className = 'vu-pm-row-left';

          const title = document.createElement('div');
          title.className = 'vu-pm-row-title';
          title.textContent = entry.label || 'Unnamed Student';

          const sub = document.createElement('div');
          sub.className = 'vu-pm-row-sub';
          sub.textContent = entry.studentId ? ('ID: ' + entry.studentId) : '';

          left.appendChild(title);
          left.appendChild(sub);

          const btns = document.createElement('div');
          btns.className = 'vu-pm-row-btns';

          const editBtn = document.createElement('button');
          editBtn.type = 'button';
          editBtn.className = 'vu-pm-small';
          editBtn.textContent = 'Edit';
          editBtn.addEventListener('click', function (e) {
            e.stopPropagation();
            editingId = entry.id;
            labelEl.value = entry.label || '';
            studentIdEl.value = entry.studentId || '';
            passwordEl.value = entry.password || '';
            saveBtn.textContent = 'Update';
            showForm();
          });

          const delBtn = document.createElement('button');
          delBtn.type = 'button';
          delBtn.className = 'vu-pm-small vu-pm-danger';
          delBtn.textContent = 'Delete';
          delBtn.addEventListener('click', async function (e) {
            e.stopPropagation();
            row.style.opacity = '0.5';
            row.style.pointerEvents = 'none';

            try {
              const currentEntries = await getEntries();
              const filtered = currentEntries.filter(function (x) { return x.id !== entry.id; });
              await setEntries(filtered);

              if (editingId === entry.id) {
                resetForm();
                hideForm();
              }

              await renderList();
              showToast('Account deleted successfully', 'success');
            } catch (err) {
              console.error('Delete failed:', err);
              showToast('Failed to delete account', 'error');
              row.style.opacity = '';
              row.style.pointerEvents = '';
            }
          });

          btns.appendChild(editBtn);
          btns.appendChild(delBtn);
          row.appendChild(left);
          row.appendChild(btns);
          listEl.appendChild(row);
        });
      }

      async function upsertEntry() {
        const label = labelEl.value.trim();
        const studentId = studentIdEl.value.trim();
        const password = passwordEl.value.trim();

        if (!label) {
          showToast('Please enter a Student Name', 'error');
          return;
        }

        if (!studentId || !password) {
          showToast('Please fill Student ID and Password', 'error');
          return;
        }

        const entries = await getEntries();
        const duplicate = entries.find(function (e) {
          return e.studentId.toLowerCase() === studentId.toLowerCase() && e.id !== editingId;
        });

        if (duplicate) {
          showToast('Error: Student ID already exists!', 'error');
          return;
        }

        if (editingId) {
          const updated = entries.map(function (e) {
            if (e.id === editingId) {
              return {
                id: e.id,
                label: label,
                studentId: studentId,
                password: password,
                createdAt: e.createdAt,
                updatedAt: Date.now()
              };
            }
            return e;
          });
          await setEntries(updated);
          showToast('Account updated successfully', 'success');
        } else {
          const newEntry = {
            id: uid(),
            label: label,
            studentId: studentId,
            password: password,
            createdAt: Date.now(),
            updatedAt: Date.now()
          };
          await setEntries([newEntry].concat(entries));
          showToast('Account added successfully', 'success');
        }

        resetForm();
        hideForm();
        await renderList();
      }

      function open() {
        overlay.classList.add('open');
        renderList();
      }

      function close() {
        overlay.classList.remove('open');
        resetForm();
        hideForm();
      }

      closeBtn.addEventListener('click', close);
      addNewBtn.addEventListener('click', function () { resetForm(); showForm(); });
      cancelBtn.addEventListener('click', function () { resetForm(); hideForm(); });
      saveBtn.addEventListener('click', upsertEntry);

      toggleBtn.addEventListener('click', function () {
        const isPass = passwordEl.type === 'password';
        passwordEl.type = isPass ? 'text' : 'password';
        toggleBtn.setAttribute('aria-label', isPass ? 'Hide password' : 'Show password');
        toggleBtn.querySelector('svg').innerHTML = isPass
          ? '<path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle>'
          : '<path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"></path><circle cx="12" cy="12" r="3"></circle><path d="M2 2l20 20" stroke-linecap="round"/>';
      });

      document.addEventListener('keydown', function (e) {
        if (overlay.classList.contains('open') && e.key === 'Escape') close();
      });

      return { overlay: overlay, open: open, close: close };
    }

    function init() {
      if (isLoginPage()) {
        injectStyles();
        ensureButton();
      }

      const root = document.documentElement || document;
      if (root && !window.__vuPmObserverInstalled) {
        window.__vuPmObserverInstalled = true;
        const observer = new MutationObserver(function () {
          if (isLoginPage()) {
            injectStyles();
            ensureButton();
          }
        });
        observer.observe(root, { childList: true, subtree: true });
      }
    }

    init();
    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', init);
    }
  } catch (_) { }
})();

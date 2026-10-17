// Attendance Check - Course Badges

(function() {
  'use strict';

  const cfg = {
    lb: {
      lc: "Lecture Based Attendance",
      qz: "Quiz Based Attendance",
      no: "No Attendance Required"
    },
    pu: "https://vulms.vu.edu.pk/ProgressTimeline/ProgressTimeline.aspx"
  };

  const dc = {
    lc: "rgb(189 7 38)",
    qz: "rgb(189 7 38)",
    no: "green"
  };

  function ip(cn) {
    return /\(Practical\)/i.test(cn);
  }

  function dt(ht, cn) {
    const cm = cn.match(/^([A-Z]+\d+[A-Z]?)/i);

    if (!cm) return "none";

    const cc = cm[1].toLowerCase();
    const fe = ht.toLowerCase().includes(`hfattendancedata${cc}`);

    if (!fe) {
      const ep = /[A-Z]+\d+P$/i.test(cc);
      const ic = ep || ip(cn);
      const vu = /^vu001$/i.test(cc);

      if (vu) return "lecture";
      if (ic) return "quiz";

      return "none";
    }

    return "lecture";
  }

  function gl(tp) {
    if (tp === "lecture") return cfg.lb.lc;
    if (tp === "quiz") return cfg.lb.qz;

    return cfg.lb.no;
  }

  async function gc(tp) {
    if (typeof chrome === 'undefined' || !chrome.storage) {
      return dc[tp === "lecture" ? "lc" : tp === "quiz" ? "qz" : "no"];
    }

    try {
      const rs = await chrome.storage.local.get("BADGE_COLORS");
      const cl = rs.BADGE_COLORS || {};
      return cl[tp] || dc[tp === "lecture" ? "lc" : tp === "quiz" ? "qz" : "no"];
    } catch (e) {
      return dc[tp === "lecture" ? "lc" : tp === "quiz" ? "qz" : "no"];
    }
  }

  async function cb(cd, tp) {
    const ex = cd.querySelector('.ab');

    if (ex) ex.remove();

    if (cd.style.position !== 'relative') {
      cd.style.position = 'relative';
    }

    const bg = document.createElement('span');

    bg.className = `ab ${tp}`;
    bg.textContent = gl(tp);
    bg.style.fontStyle = "italic";

    const cc = await gc(tp);

    bg.style.background = cc;

    cd.appendChild(bg);
  }

  function is() {
    if (document.getElementById('vu-attendance-styles')) return;
    const sy = document.createElement('style');
    sy.id = 'vu-attendance-styles';

    sy.textContent = `
      .ab {
        position: absolute;
        top: 50%;
        right: 0px;
        transform: translateY(-50%);
        padding: 8px 10px;
        font-weight: 600;
        font-size: 1rem;
        color: white;
        white-space: nowrap;
        border-radius: 6px;
        border: 1px solid white;
        transition: all 0.3s ease;
        z-index: 10;
      }

      .ab:hover {
        opacity: 0.9;
        transform: translateY(-50%) scale(1.05);
      }

      @media screen and (max-width:768px) {
        .ab {
          padding: 4px 8px;
          font-size: 11px;
          right: -5px;
          top: 75px;
          font-weight: 500;
        }
      }
    `;

    document.head.appendChild(sy);
  }

  async function init() {

    const cu = window.location.href.toLowerCase();
    const baseUrl = new URL(cu).pathname.toLowerCase();

    if (
      baseUrl !== "/home.aspx" &&
      baseUrl !== "/home.aspx/"
    ) {
      return;
    }

    is();

    const al = document.querySelectorAll('a[id*="ibtnCourseHome"][title]');
    const cm = new Map();

    al.forEach(lk => {
      const tl = lk.getAttribute("title").trim();

      if (cm.has(tl)) return;

      const pt = lk.closest('.m-portlet');
      const cd = pt?.querySelector('.m-portlet__head-caption');

      if (cd) {
        cm.set(tl, { tl, cd });
      }
    });

    const cs = Array.from(cm.values());

    if (!cs.length) {
      return;
    }

    try {
      const rs = await fetch(cfg.pu, {
        credentials: "include"
      });

      if (!rs.ok) {
        throw new Error("Fetch failed");
      }

      const ht = await rs.text();

      const tr = /<a\s+id=["']tabHeader([^"']+)["'][^>]*>([^<]+)<\/a>/gi;

      const tc = new Map();
      let mt;

      while ((mt = tr.exec(ht)) !== null) {
        const fn = mt[2].trim();

        const sm = fn.match(/^[A-Z]+\d+[A-Z]?-(.+)$/i);

        if (sm) {
          tc.set(sm[1].trim(), fn);
        }
      }

      for (const { tl, cd } of cs) {
        const ln = tc.get(tl) || tl;
        const tp = dt(ht, ln);

        await cb(cd, tp);
      }

    } catch (er) {
      console.error("Attendance scan failed:", er);
    }
  }

  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', init);
  } else {
    init();
  }
})();

// ===========================
// VU LMS Dark Mode Toggle Module
// ===========================

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
  const DarkModeHelpers = {
    getVuLmsUrl() {
      return 'https://vulms.vu.edu.pk/';
    },
    getVuLmsHostname() {
      return 'vulms.vu.edu.pk';
    },
    getLoginUrl() {
      return 'https://vulms.vu.edu.pk/LMS_LP.aspx';
    },
    getHomeUrl() {
      return 'https://vulms.vu.edu.pk/Home.aspx';
    },
    getLessonViewerPath() {
      return 'vulms.vu.edu.pk/LessonViewer.aspx';
    },
    getSurveyHostname() {
      return 'survey.vu.edu.pk';
    },
    getVuDomain() {
      return 'vu.edu.pk';
    },
    getBackgroundImage1() {
      return 'https://images.unsplash.com/photo-1588421357574-87938a86fa28?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wzNTc5fDB8MXxzZWFyY2h8MTJ8fGJsdWV8ZW58MHx8fHwxNzQwNjkzOTF8MA&ixlib=rb-4.0.3&q=80&w=1990';
    },
    getBackgroundImage2() {
      return 'https://images.unsplash.com/photo-1538947151057-dfe933d68d1?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3wzNTc5fDB8MXxzZWFyY2gxMnx8Ymx1ZXxlbnwwfHx8fDE3NDA2NDEzOTF8MA&ixlib=rb-4.0.3&q=80&w=2240';
    }
  };

  // ===========================
  // DARK MODE STYLES
  // ===========================

  const DARK_MODE_CSS = `
    #jsEnabled {
      background-color: #2c2e3e;
    }

    .quizTimer {
      background-color: #287cac !important;
      border: solid 1px #287cac !important;
    }

    .m-grid__item {
      background-image: none !important;
    }

    .m-grid__item .m-error_subtitle,
    .m-grid__item .m-error_description {
      color: #fff !important;
    }

    html button {
      transform: translatex(0) !important;
      translatey(0) !important;
    }

    .m-portlet .chart .text-nowrap {
      background-color: #282a3c !important;
    }

    .custom-file-label {
      background-color: #2c2e3e !important;
      color: #fff !important;
    }

    /* Common Elements - Text Colors */
    #MainContent_Scrolling_News1_gvNews_lnkNews_1,
    #MainContent_divCompletionLegend,
    #MainContent_divCourseList .form-c span,
    #MainContent_divGS,
    #MainContent_divMain .tab-content,
    #MainContent_divMidtermHeading h5,
    #MainContent_divRL,
    #MainContent_divSGB,
    #MainContent_lblInstructor,
    #MainContent_lblStdName,
    #MainContent_lblStudent,
    #MainContent_lblStudyStatus,
    #MainContent_liCalculator a,
    #MainContent_updatePanel .accordion-header span,
    #StudentProfile .form-group label.col-form-label,
    #UpdatePanel2,
    #m_form_1 .form-group .col-form-label,
    .d-flex .mr-auto h3,
    .m-card-profile .m-card-profile__details .m-card-profile__email,
    .m-card-user__details,
    .m-card-user__email,
    .m-card-user__name,
    .m-grid--root .m-grid__item .m-container--fluid .m-stack--ver #m_header_nav #m_header_topbar .m-stack__item .m-topbar__nav .m-nav__item>span,
    .m-section div .fa-clock-o,
    .m-widget3__header>.m-widget3__info>div>.m-widget3__body .text-justify,
    .pt-2>span,
    .small,
    a.aspNetDisabled,
    a.m-datatable__pager-link.m-datatable__pager-link-number,
    a.nav-link,
    a.nav-link.m-tabs__link,
    a.newstext.m--font-bolder,
    body,
    div p span,
    div.Content,
    div.hideinMobileView.col-xs-9.col-sm-9.col-md-1.rightBorder.pt-2.pb-3.pt-s-0.pb-s-0,
    div.m-widget4__info,
    h3.m-subheader__title,
    h3.m-widget1__title,
    h4.m-widget24__title,
    h5.m-subheader__title,
    h5.modal-title,
    label.col-form-label.col-lg-4.col-md-3.col-sm-12.col-xs-12,
    label.col-form-label.col-lg-4.col-md-3.col-sm-6.col-xs-6,
    li.MsoNormal,
    p span b,
    p.auto-style1,
    p.auto-style2,
    p.m-widget3__text,
    small,
    span.label,
    span.m-accordion__item-mode,
    span.m-nav__link-text,
    span.m-widget1__desc,
    span.m-widget3__username,
    span.m-widget4__sub,
    span.m-widget4__text,
    span.text-capitalize,
    span.text-right.m--font-boldest.m--icon-font-size-sm2,
    span.txt,
    span.txtsmall,
    tbody tr td,
    tbody tr th,
    td.heading,
    td.label,
    td.txt,
    tr td label,
    ul.m-datatable__pager-nav {
      color: #fff !important;
    }

    /* Elements with transform fix */
    #GradingScheme,
    #MainContent_divMainGradeBook .m-portlet,
    #MainContent_updatePanel .accordion-header,
    #StudentProfile .m-form--fit .m-portlet__body,
    .m-content .col-xl-3 .m-portlet,
    .m-nav__item .m-widget3__info>div,
    .m-section .text-nowrap {
      transform: translatex(0) translatey(0) !important;
    }

    /* Body Background */
    body {
      background-color: #282a3c !important;
    }

    /* Content Background */
    .m-grid--root .m-grid__item .m-content {
      background-image: none !important;
      background-color: #2c2e3e !important;
    }

    /* Portlets and Containers */
    #MainContent_divCourseList .m-portlet .m-portlet__body,
    #MainContent_divCourseList .m-portlet .m-widget19,
    #MainContent_divNoRecord tr .pageHeading,
    #MainContent_gvReasons tr td,
    #MainContent_gvStudyScheme tr td,
    .ListTable4-Accent11 td:first-child,
    .MsoNormalTable td:first-child,
    .MsoNormalTable td:nth-child(2),
    .MsoNormalTable td:nth-child(3),
    .MsoNormalTable tr:first-child td:nth-child(2),
    .m-dropdown__body,
    .m-grid--root .m-grid__item .m-subheader,
    .m-grid--root .m-portlet .col-12,
    .m-list-search__form .m-grid--root>.m-grid__item,
    .m-nav__item .m-widget3__info>div,
    .m-portlet,
    .m-widget3__header>.m-widget3__info>div,
    .text-nowrap.divborder.Highlight,
    div.container-fluid.m--padding-right-30.m--padding-left-30.m--padding-top-10,
    p.MsoNormal,
    table.table.table-bordered.table-striped.m-table.m-table--head-bg-brand td,
    tbody tr th,
    td .table>tbody>tr>td {
      background-color: #2c2e3e !important;
    }

    /* Headers and Primary Elements */
    #MainContent_divCourseList a .m-portlet__head,
    #MainContent_divRecord .nopadding,
    #MainContent_divRecord .text-nowrap,
    #m_header_topbar .m-stack__item,
    .m-dropdown__header,
    a.btn.btn-primary,
    form#form1>div:nth-child(6)>table#tblQuizQuestions>tbody>tr:nth-child(3)>td>table>tbody>tr.tblrow:nth-child(5)>td>table#tblAnswer>tbody>tr:first-child>td:first-child,
    form#form1>div:nth-child(6)>table#tblQuizQuestions>tbody>tr:nth-child(3)>td>table>tbody>tr.tblrow:nth-child(5)>td>table#tblAnswer>tbody>tr:nth-child(2)>td:first-child,
    form#form1>div:nth-child(6)>table#tblQuizQuestions>tbody>tr:nth-child(3)>td>table>tbody>tr.tblrow:nth-child(5)>td>table#tblAnswer>tbody>tr:nth-child(3)>td:first-child,
    form#form1>div:nth-child(6)>table#tblQuizQuestions>tbody>tr:nth-child(3)>td>table>tbody>tr.tblrow:nth-child(5)>td>table#tblAnswer>tbody>tr:nth-child(4)>td:first-child {
      background-color: #0068ad !important;
    }

    /* Special Text Colors */
    #MainContent_divCourseList .m-nav__item span,
    i.flaticon-search-1,
    select.form-control {
      color: #000 !important;
    }

    #m_header_topbar .m-stack__item .m-topbar__nav .m-nav__item>span,
    #pnlIframeContent span {
      color: rgba(255, 255, 255, 0.87) !important;
    }

    /* Inverted Elements */
    #MainContent_divCourseList .m-portlet .m-nav__link,
    #MainContent_lblDepartment ul img,
    .m-portlet div .text-center {
      filter: invert(1) !important;
    }

    /* Buttons and Forms */
    a.btn.m-btn--pill.btn-secondary.m-btn.m-btn--hover-brand.m-btn.m-btn--custom,
    div.m-portlet__body {
      background-color: #2c2e3e !important;
      color: #fff !important;
    }

    /* Sections with Dark Background */
    #Books,
    #DownloadFiles,
    #FAQs,
    #FooterContainer,
    #Glossary,
    #GradingScheme,
    #Index,
    #InternetLinks,
    #MainContent_divIndex .m-portlet .m-portlet__body,
    #Overview,
    #m_login .m-grid__item .m_login_Container_bgImg,
    #m_login>.m-grid__item,
    .col-xl-3 .m-portlet .m-portlet__body,
    .m-accordion .m-accordion__item .m-accordion__item-content,
    .m-accordion .m-accordion__item .m-accordion__item-head,
    .m-content .col-xl-3 .m-portlet,
    .m-grid--root .m-portlet .p-4,
    .m-list-search__form .m-grid--root .m-grid__item .m-grid__item,
    .m-section .text-nowrap,
    div.m-accordion__item-body.collapse.show,
    div.m-portlet.m-portlet--full-height,
    div.modal-body,
    div.modal-content,
    div.modal-header {
      background-color: #282a3c !important;
    }

    /* Background Images */
    .m-grid--root .m-portlet .m-portlet__head {
      background-image: url("${DarkModeHelpers.getBackgroundImage1()}") !important;
    }

    .modal-header {
      background: url("${DarkModeHelpers.getBackgroundImage2()}") !important;
    }

    /* Special Color Highlights */
    #MDBItems> div p {
      color: #0aff0a !important;
    }

    #MDBItems .m-nav__sub span {
      color: #2cf62c !important;
    }

    .m-widget3__header>.m-widget3__info>div>div span {
      color: #3863ff !important;
    }

    .m-section .text-nowrap {
      color: #fff !important;
    }

    #MainContent_updatePanel .accordion-header {
      background-color: #282a3c !important;
      color: #fff !important;
    }

    /* Tables and Textareas */
    #MainContent_divMainGradeBook .m-portlet,
    table td,
    table th,
    textarea {
      background-color: #2c2e3e !important;
    }

    /* Form Controls */
    #dvTab,
    div.col-lg-12,
    div.container-fluid.m--padding-right-40.m--padding-left-40.m--padding-top-10.m--padding-bottom-10,
    div.tab-content.p-3,
    input.form-control.m-input,
    textarea.form-control.m-input {
      background-color: #2c2e3e !important;
      color: #fff !important;
    }

    /* Additional Text Elements */
    div div h6,
    div p span,
    div.col-12.m--padding-top-10,
    span.m-accordion__item-title.m--font-bold,
    span.m-timeline-3__item-time.m--regular-font-size-,
    span.showinFullView.hideinMobileView {
      color: #fff;
    }

    #MainContent_divMainGradeBook .m-portlet {
      color: #fff !important;
    }

    /* Primary Buttons */
    a.btn.btn-primary {
      background-color: #4a86e8 !important;
      color: #ffffff !important;
    }

    /* Form Inputs */
    input.form-control {
      color: #000 !important;
      background-color: #fff !important;
    }

    /* Special Labels */
    #MainContent_lblNote {
      color: #ea0000 !important;
    }

    /* Icons */
    i.fa.fa-list-alt.text-dark {
      color: #43a047 !important;
    }

    i.fa.fa-refresh {
      background-color: #d84315 !important;
    }

    /* Dividers */
    hr {
      border-top: 1px solid #fff !important;
    }

    /* Dropdown Headers */
    .m-dropdown__header {
      background-image: none !important;
    }

    /* User Card */
    .m-card-user__pic {
      display: none !important;
    }

    .m-grid--root .m-portlet .p-4 {
      color: #fff !important;
    }

    /* Buttons and Navigation */
    .fc-unthemed .fc-toolbar .fc-button,
    .m-table.m-table--head-bg-brand thead th,
    .nav.nav-pills.nav-pills--brand .nav-link.active {
      background: #0068ad !important;
      color: #fff !important;
    }

    /* Login Page */
    #m_login .m-alert--icon .m-alert__icon,
    #m_login .m-alert--icon .m-alert__text {
      background-color: #004475 !important;
    }

    #m_login {
      background-image: none !important;
      background-color: #282a3c !important;
    }

    /* Calendar Buttons */
    .fc-unthemed> .fc-toolbar .fc-button {
      border: 0 !important;
      text-shadow: none !important;
    }

    /* Grid Columns */
    .col, .col-1, .col-10, .col-11, .col-12, .col-2, .col-3, .col-4, .col-5, .col-6, .col-7, .col-8, .col-9,
    .col-auto, .col-lg, .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4,
    .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-auto, .col-md, .col-md-1, .col-md-10,
    .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8,
    .col-md-9, .col-md-auto, .col-sm, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3,
    .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-auto, .col-xl, .col-xl-1,
    .col-xl-10, .col-xl-11, .col-xl-12, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7,
    .col-xl-8, .col-xl-9, .col-xl-auto {
      position: relative !important;
      width: 100% !important;
      min-height: 1px !important;
      padding-right: 11px !important;
      padding-left: 11px !important;
    }

    /* Table Headers */
    .m-table.m-table--head-bg-brand thead th {
      border-bottom: 0 !important;
      border-top: 1px solid #716aca !important;
      text-align: center !important;
      border: 1px solid #847fc6 !important;
    }

    /* Alerts */
    .alert-brand:not(.m-alert--outline) {
      color: #fff !important;
      background-color: #0068ad !important;
      border-color: #0068ad !important;
    }

    /* Tabs */
    .nav-tabs .nav-item.show .nav-link,
    .nav-tabs .nav-link.active {
      color: #fff !important;
      border: 1px solid #828282 !important;
      background-color: #0068ad !important;
    }

    /* Calendar Today & Footer */
    .fc-unthemed td.fc-today,
    .m-footer {
      background: #2c2e3e !important;
    }

    /* Links */
    .m-link,
    [id^="MainContent_lstWeeklySchedule_rptIndex_"] {
      color: #7688ff !important;
    }

    /* Status Labels - Red */
    #MainContent_lblCurrentStatus,
    #MainContent_lblMailingAddress,
    .m--font-bolder.m--icon-font-size-sm3.txtPurple,
    body [id^="MainContent_gvTileRepeaterAssignment_lblDueDate_"],
    body [id^="MainContent_gvTileRepeaterGDB_Label3_"],
    body [id^="MainContent_gvTileRepeaterQuiz_lblEndDate_"] {
      color: red !important;
    }

    /* Textareas */
    textarea {
      color: #fff !important;
    }

    div p span {
      background-color: #2c2e3e;
    }

    /* Scroll to Top */
    .m-scroll-top {
      background: #2b2525 !important;
    }

    /* Links - Blue */
    #lbtnProjectFile,
    #lnkViewDiscussion,
    [id^="MainContent_gvTileRepeaterAssignment_lbtnViewAssignmentFile_"],
    [id^="MainContent_gvTileRepeaterAssignment_lbtnViewSolutionFile_"],
    [id^="MainContent_gvTileRepeaterGDB_lbtnInstructorComments_"],
    [id^="MainContent_gvTileRepeaterGDB_lbtnView_"],
    [id^="gvProjectAssignments_lbtnAssignmentTitle_"],
    [id^="gvProjectAssignments_lbtnReadComment_"],
    [id^="gvProjectAssignments_lbtnViewCommentedFile_"],
    [id^="gvProjectAssignments_lbtnViewSubmittedFile_"],
    a.paraGraphtext,
    i.la.la-download,
    i.la.la-eye,
    span.paraGraphtext {
      color: #009dff !important;
    }

    /* Status Labels - Green */
    [id^="MainContent_gvTileRepeaterAssignment_lblScore_"],
    [id^="MainContent_gvTileRepeaterAssignment_lblsubmittedCKE_"],
    [id^="MainContent_gvTileRepeaterAssignment_score_"],
    [id^="MainContent_gvTileRepeaterGDB_lblSubmissionStatus_"]>span:first-child,
    [id^="MainContent_gvTileRepeaterQuiz_lblSubmitted_"] span:first-of-type,
    body [id^="MainContent_gvTileRepeaterGDB_Label4_"],
    body [id^="MainContent_gvTileRepeaterQuiz_lblStartDate_"],
    span.blue-label,
    span.green-text,
    span.txtGreen,
    span.txtbold {
      color: #0f0 !important;
    }

    span.red-text {
      color: red;
    }

    /* Various Links */
    #TicketListingTableHeading a,
    #display-inline-block-example li a,
    #pnlVideo .m--padding-top-10 {
      color: #fff !important;
    }

    .divSetting a,
    .m-accordion .titletruncate a {
      color: #75c3ff !important;
    }

    span.text-capitalize.text-primary {
      color: #478eff !important;
    }

    #MainContent_lblSubmitted {
      color: #ff8400 !important;
    }

    [id^="MainContent_gvAssignmentsToDo_ibtnAssignments_"],
    [id^="MainContent_gvGDBsToDo_ibtnGDB"],
    [id^="MainContent_gvQuizzesToDo_ibtnQuizzes_"] {
      color: #6ba4ff !important;
    }

    /* Sidebar Menu Hover */
    .m-aside-menu .m-menu__nav .m-menu__item:hover>.m-menu__link,
    .m-aside-menu .m-menu__nav .m-menu__item.m-menu__item--active>.m-menu__link,
    .m-aside-menu .m-menu__nav .m-menu__item.current>.m-menu__link {
      background: #3a3d52 !important;
      border-left: 3px solid #287cac !important;
    }

    .mb-3 div .newstext {
      color: #fff !important;
    }

    /* Buttons */
    #MainContent_btnAdd {
      background-color: #c6e519 !important;
    }

    #MainContent_btnAdd i {
      color: #000205 !important;
    }

    #MainContent_ibtnCancel i {
      color: #000105 !important;
    }

    #MainContent_ibtnCancel {
      background-color: #c6e519 !important;
    }

    /* Badges */
    .m-badge--danger {
      background-color: #03d3b4 !important;
    }

    /* Sidebar Styling */
    #m_ver_menu,
    .m-brand.m-brand--skin-dark {
      background: #111736 !important;
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

    #m_ver_menu .m-menu__item:hover {
      transform: translateX(3px);
      box-shadow: 0 4px 10px rgba(0, 0, 0, 0.14);
    }

    #m_ver_menu .m-menu__item:hover .m-menu__link-icon {
      color: #3b82f6 !important;
      transform: rotate(8deg) scale(1.06);
    }

    #m_ver_menu .m-menu__item:hover .m-menu__link-text {
      color: #fff !important;
    }

    #m_ver_menu .m-menu__link:hover,
    #m_ver_menu .m-menu__link:active,
    #m_ver_menu .m-menu__item.current .m-menu__link,
    #m_ver_menu .m-menu__item.m-menu__item--active .m-menu__link {
      background: rgb(64 76 141/30%) !important;
    }

    #m_ver_menu .m-menu__item.current,
    #m_ver_menu .m-menu__item.m-menu__item--active {
      box-shadow: inset 3px 0 0 #007bff;
    }
  `;

  const IFRAME_DARK_MODE_CSS = `
    * { color: white !important; }
    body, html { background-color: #282a3c !important; }
    div, p, span, table, tr, td, th { background-color: #2c2e3e !important; }
    input, textarea, select { background-color: #2c2e3e !important; color: white !important; }
  `;

  let vutkActiveToast = null;

  function showDarkToast(message, isDarkMode) {
    try {
      if (vutkActiveToast) vutkActiveToast.remove();

      const toast = document.createElement('div');
      toast.id = 'vutk-dark-toast';

      Object.assign(toast.style, {
        position: 'fixed',
        top: '-100px',
        left: '50%',
        transform: 'translate(-50%, 0)',
        backgroundColor: '#007bff',
        color: '#fff',
        padding: '10px 20px',
        borderRadius: '8px',
        fontSize: '16px',
        fontWeight: 'bold',
        boxShadow: '0 4px 15px rgba(0, 123, 255, 0.4)',
        zIndex: '999999',
        transition: 'all 0.3s ease',
        display: 'flex',
        alignItems: 'center',
        gap: '8px',
        whiteSpace: 'nowrap',
        overflow: 'hidden',
        textOverflow: 'ellipsis',
        maxWidth: '90vw'
      });

      vutkActiveToast = toast;

      const icon = document.createElement('span');
      icon.textContent = isDarkMode ? '🌙' : '☀️';
      icon.style.fontSize = '20px';
      toast.appendChild(icon);

      const text = document.createElement('span');
      text.textContent = message;
      text.style.fontStyle = 'italic';
      toast.appendChild(text);

      if (document.body) {
        document.body.appendChild(toast);
      } else if (document.documentElement) {
        document.documentElement.appendChild(toast);
      }

      requestAnimationFrame(() => {
        toast.style.top = '20px';
      });

      setTimeout(() => {
        toast.style.top = '-100px';
        setTimeout(() => {
          try {
            toast.remove();
            if (vutkActiveToast === toast) vutkActiveToast = null;
          } catch (_) { }
        }, 300);
      }, 1000);
    } catch (error) {
      console.error('[VU Toolkit] Error showing toast:', error);
    }
  }

  function applyIframeDarkMode() {
    if (!window.location.href.includes(DarkModeHelpers.getLessonViewerPath())) return;

    const iframes = document.getElementsByTagName('iframe');
    Array.from(iframes).forEach(f => {
      try {
        if (f.src && f.src.includes(DarkModeHelpers.getVuDomain()) && f.contentDocument) {
          if (f.contentDocument.getElementById('vutk-iframe-dark-mode')) return;

          const st = f.contentDocument.createElement('style');
          st.id = 'vutk-iframe-dark-mode';
          st.innerHTML = IFRAME_DARK_MODE_CSS;
          f.contentDocument.head.appendChild(st);
        }
      } catch (_) { }
    });
  }

  function removeIframeDarkMode() {
    if (!window.location.href.includes(DarkModeHelpers.getLessonViewerPath())) return;

    const iframes = document.getElementsByTagName('iframe');
    Array.from(iframes).forEach(f => {
      try {
        if (f.contentDocument) {
          const darkStyle = f.contentDocument.getElementById('vutk-iframe-dark-mode');
          if (darkStyle) {
            darkStyle.remove();
          }
        }
      } catch (_) { }
    });
  }

  function initDarkMode() {
    const href = window.location.href;

    if (!href.includes(DarkModeHelpers.getVuLmsUrl())) return;

    const excludedPages = [
      "QuizStart.aspx",
      "AccountBook.aspx",
      "ChallanPrintPreview.aspx",
      "PrintStudentECardView"
    ];

    for (const page of excludedPages) {
      if (href.includes(page)) return;
    }

    const isDigiSkills = href.includes('digiskills');
    const isQuizQuestionPage = href.includes('Quiz/QuizQuestion.aspx');

    const se = document.createElement('style');
    se.id = 'darkModeStyle';
    se.textContent = DARK_MODE_CSS;

    try {
      chrome.storage.sync.get(['darkModeVulms'], (result) => {
        const isDarkMode = result.darkModeVulms === true;
        if (isDarkMode && !document.getElementById('darkModeStyle')) {
          document.head.appendChild(se);
          const enhancerStyles = document.getElementById('vu-enhancer-styles');
          if (enhancerStyles) enhancerStyles.remove();
        }
      });
    } catch (e) {}

    const btn = document.createElement('button');
    btn.id = 'darkModeToggleBtn';
    btn.type = 'button';
    btn.innerHTML = '☀️';

    Object.assign(btn.style, {
      position: 'fixed',
      left: (isDigiSkills || isQuizQuestionPage) ? '5px' : 'auto',
      right: (isDigiSkills || isQuizQuestionPage) ? 'auto' : '10px',
      bottom: '10px',
      zIndex: '2147483647',
      width: '56px',
      height: '56px',
      borderRadius: '9999px',
      cursor: 'pointer',
      display: 'flex',
      alignItems: 'center',
      justifyContent: 'center',
      fontSize: '24px',
      userSelect: 'none',
      transition: 'all 0.1s cubic-bezier(0.16, 1, 0.3, 1)',
      backdropFilter: 'blur(6px)',
      outline: 'none',
      border: 'none',
      backgroundColor: '#007bff'
    });

    btn.addEventListener('click', function() {
      const styleElement = document.getElementById('darkModeStyle');
      const enhancerStyles = document.getElementById('vu-enhancer-styles');

      if (styleElement) {
        styleElement.remove();
        btn.innerHTML = '☀️';
        showDarkToast('Light Mode Activated', false);
        chrome.storage.sync.set({ darkModeVulms: false });
        removeIframeDarkMode();
      } else {
        if (!se.parentNode) {
          document.head.appendChild(se);
        }
        btn.innerHTML = '🌙';
        showDarkToast('Dark Mode Activated', true);
        chrome.storage.sync.set({ darkModeVulms: true });
        if (enhancerStyles) {
          enhancerStyles.remove();
        }
        applyIframeDarkMode();
      }
    });

    function addDarkModeButton() {
      if (!document.getElementById('darkModeToggleBtn') && document.body) {
        document.body.appendChild(btn);
        chrome.storage.sync.get(['darkModeVulms'], (result) => {
          const isDarkMode = result.darkModeVulms === true;
          btn.innerHTML = isDarkMode ? '🌙' : '☀️';
        });

        if (window.location.href.includes(DarkModeHelpers.getLessonViewerPath())) {
          setInterval(() => {
            if (document.getElementById('darkModeStyle')) {
              applyIframeDarkMode();
            }
          }, 1000);
        }
      }
    }

    if (document.readyState === 'loading') {
      document.addEventListener('DOMContentLoaded', addDarkModeButton);
    } else {
      addDarkModeButton();
    }
  }

  initDarkMode();
})();

var CG2111A = {
  title: 'CG2111A ROS Tutorial',
  course: 'Engineering Principles and Practice II',
  courseUrl: 'https://nusmods.com/courses/CG2111A/engineering-principles-and-practice-ii',
  authors: 'Boyd Anderson; Chen Guoyi',
  supervisors: 'Henry Tan; Nguyen Tien Khoa; Ravi S/O Suppiah; Sean Tan Rui Xiang; Tan Keng Yan, Colin',
  sponsor: 'Sponsored by the NUS School of Computing and brought to you by the AY23/24 CG2111A Teaching Team.',
  pages: [
  {
    "key": "home",
    "title": "CG2111A ROS Tutorial",
    "short": "Tutorial Homepage",
    "label": "Home",
    "href": "",
    "group": "main",
    "summary": "Robot Operating System tutorial materials for CG2111A Engineering Principles and Practice II."
  },
  {
    "key": "setup",
    "title": "Setup ROS on Raspberry Pi 4",
    "short": "1. Setup ROS on RPi 4",
    "label": "Setup ROS",
    "href": "ros-setup/",
    "group": "main",
    "summary": "Prepare a Raspberry Pi 4 and verify a ROS Noetic installation."
  },
  {
    "key": "topics",
    "title": "Talker & Listener",
    "short": "2. Talker & Listener",
    "label": "Talker & Listener",
    "href": "ros-topics/",
    "group": "main",
    "summary": "Create a ROS workspace, package, publisher, subscriber, message, and launch file."
  },
  {
    "key": "slam",
    "title": "Raspberry Pi LiDAR & SLAM",
    "short": "3. RPi LiDAR & SLAM",
    "label": "LiDAR & SLAM",
    "href": "ros-slam/",
    "group": "main",
    "summary": "Set up RPLidar and Hector SLAM under ROS on Raspberry Pi."
  },
  {
    "key": "network",
    "title": "ROS Networking",
    "short": "4. ROS Networking",
    "label": "ROS Networking",
    "href": "ros-network/",
    "group": "main",
    "summary": "Run ROS across Raspberry Pi and PC for remote SLAM visualization."
  },
  {
    "key": "release",
    "title": "System Images",
    "short": "System Images",
    "label": "System Images",
    "href": "system-images/",
    "group": "reference",
    "summary": "PurplePet Raspberry Pi OS image information and release notes."
  },
  {
    "key": "forum",
    "title": "Q&A Forum",
    "short": "Forum",
    "label": "Q&A Forum",
    "href": "forum/",
    "group": "reference",
    "summary": "Question submission guidance and archived solved questions."
  },
  {
    "key": "archive-bookworm",
    "title": "Archived Setup Guide: Debian 12",
    "short": "Archive: Debian 12 setup",
    "label": "Debian 12 setup",
    "href": "archive/ros-setup-bookworm/",
    "group": "archive",
    "summary": "Archived Bookworm-era setup guide kept for completeness."
  },
  {
    "key": "archive-eol",
    "title": "Archived Setup Guide: Debian 10 EOL",
    "short": "Archive: Debian 10 EOL setup",
    "label": "Debian 10 EOL setup",
    "href": "archive/ros-setup-eol/",
    "group": "archive",
    "summary": "Older Debian 10 setup guide retained as historical reference."
  }
]
};

function initCg2111aPage(options) {
  options = options || {};
  var base = options.base || '../../';
  var root = options.root || '';
  var key = options.page || 'home';
  var page = findCgPage(key) || CG2111A.pages[0];

  document.title = page.title + ' - CG2111A - Chen Guoyi';
  initLayout(base, {
    active: 'projects',
    breadcrumb: {
      items: [
        { label: 'Projects', href: 'projects/' },
        { label: CG2111A.title, href: 'projects/cg2111a/' }
      ],
      title: page.title
    }
  });

  renderCgCoursePanel(root, key);
  renderCgPager(root, key);
  initCgCheckboxes(key);
}

function findCgPage(key) {
  for (var i = 0; i < CG2111A.pages.length; i += 1) {
    if (CG2111A.pages[i].key === key) return CG2111A.pages[i];
  }
  return null;
}

function cgHref(root, page) {
  return root + (page.href || '');
}

function renderCgCoursePanel(root, activeKey) {
  var panel = document.getElementById('cg-course-panel');
  if (!panel) return;

  var mainPages = CG2111A.pages.filter(function (page) { return page.group === 'main'; });
  var refPages = CG2111A.pages.filter(function (page) { return page.group === 'reference'; });
  var archiveNotice = activeKey === 'home' ?
    '<div class="cg-archive-notice">' +
      '<strong>ARCHIVE NOTICE</strong>' +
      '<p>This tutorial applies only to AY2024/25 students. Students in later cohorts should refer to the materials provided by the instructors on Canvas. This page is archived to support future teaching work.</p>' +
    '</div>' :
    '';
  var facts = activeKey === 'home' ?
    '<div class="cg-doc-facts">' +
      '<div><span>Authors</span><strong>' + escapeHtml(CG2111A.authors) + '</strong></div>' +
      '<div><span>Supervisors</span><strong>' + escapeHtml(CG2111A.supervisors) + '</strong></div>' +
      '<div><span>Credit</span><strong>' + escapeHtml(CG2111A.sponsor) + '</strong></div>' +
    '</div>' :
    '';

  panel.innerHTML =
    archiveNotice +
    facts +
    '<nav class="cg-doc-nav" aria-label="CG2111A tutorial directory">' +
      renderCgNavGroup('Tutorial', mainPages, root, activeKey) +
      renderCgNavGroup('Resources', refPages, root, activeKey) +
    '</nav>';
}

function renderCgNavGroup(label, pages, root, activeKey) {
  if (!pages.length) return '';
  return '<section class="cg-nav-group"><h3>' + escapeHtml(label) + '</h3><div class="cg-directory-list">' +
    pages.map(function (page, index) {
      var active = page.key === activeKey;
      var number = page.short && page.short.match(/^\d+/);
      var badge = number ? number[0] : (page.key === 'home' ? 'Start' : String(index + 1));
      return '<a href="' + cgHref(root, page) + '" class="cg-directory-item' +
        (active ? ' active" aria-current="page"' : '"') + '>' +
          '<span class="cg-directory-badge">' + escapeHtml(badge) + '</span>' +
          '<span class="cg-directory-text">' +
            '<strong>' + escapeHtml(page.label || page.short || page.title) + '</strong>' +
            '<small>' + escapeHtml(page.summary || '') + '</small>' +
          '</span>' +
        '</a>';
    }).join('') +
    '</div></section>';
}

function renderCgPager(root, activeKey) {
  var pager = document.getElementById('cg-page-pager');
  if (!pager) return;
  var flow = CG2111A.pages.filter(function (page) { return page.group === 'main' || page.group === 'reference'; });
  var index = -1;
  for (var i = 0; i < flow.length; i += 1) {
    if (flow[i].key === activeKey) index = i;
  }
  if (index < 0) {
    pager.innerHTML = '<a href="' + root + '">Back to tutorial homepage</a>';
    return;
  }
  var prev = flow[index - 1];
  var next = flow[index + 1];
  var html = '';
  if (prev) html += '<a class="cg-prev" href="' + cgHref(root, prev) + '">&lt; ' + escapeHtml(prev.short) + '</a>';
  html += '<a class="cg-home" href="' + root + '">Tutorial homepage</a>';
  if (next) html += '<a class="cg-next" href="' + cgHref(root, next) + '">' + escapeHtml(next.short) + ' &gt;</a>';
  pager.innerHTML = html;
}

function initCgCheckboxes(pageKey) {
  var checkboxes = Array.prototype.slice.call(document.querySelectorAll('.task-checkbox'));
  if (!checkboxes.length) return;
  var storageKey = 'cg2111a:' + pageKey + ':tasks';
  var saved = {};
  try { saved = JSON.parse(window.localStorage.getItem(storageKey) || '{}'); } catch (e) { saved = {}; }

  checkboxes.forEach(function (checkbox, index) {
    var id = checkbox.id || ('task-' + index);
    if (!checkbox.id) checkbox.id = id;
    if (saved[id]) checkbox.checked = true;
    updateCgStatus(checkbox);
    checkbox.addEventListener('change', function () {
      saved[id] = checkbox.checked;
      try { window.localStorage.setItem(storageKey, JSON.stringify(saved)); } catch (e) {}
      updateCgStatus(checkbox);
      updateCgCount();
    });
  });
  updateCgCount();
}

function updateCgStatus(checkbox) {
  var label = checkbox.nextElementSibling;
  if (!label || !label.classList || !label.classList.contains('status')) return;
  if (checkbox.checked) {
    label.textContent = 'Marked as Completed';
    label.classList.remove('waiting');
    label.classList.add('completed');
  } else {
    label.textContent = 'Waiting Complete';
    label.classList.remove('completed');
    label.classList.add('waiting');
  }
}

function updateCgCount() {
  var count = document.getElementById('completedCount');
  if (!count) return;
  count.textContent = document.querySelectorAll('.task-checkbox:checked').length;
}

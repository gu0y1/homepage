/**
 * common.js — Shared utilities for the academic homepage.
 * Centralised header/footer + auto-loading item lists.
 *
 * ============================================================
 *  SITE CONFIG — Edit this section to update every page at once
 * ============================================================
 */
var SITE = {
  name: 'Chen Guoyi',
  nav: [
    { key: 'research',     label: 'Research',     href: 'research/' },
    { key: 'publications', label: 'Publications', href: 'publications/' },
    { key: 'projects',     label: 'Projects',     href: 'projects/' },
    { key: 'teaching',     label: 'Teaching',     href: 'teaching/' },
    { key: 'contact',      label: 'Contact',      href: 'contact/' }
  ],
  footer: '&copy; 2026 Chen Guoyi. Last updated: May 2026.'
};

/**
 * Inject the shared header and footer into the page.
 * @param {string} base - relative path to site root, e.g. '' | '../' | '../../'
 * @param {Object} opts
 * @param {string} opts.active - active top-level nav key
 * @param {Object} opts.breadcrumb - detail page breadcrumb settings
 */
function initLayout(base, opts) {
  base = base || '';
  opts = opts || {};
  var activeKey = opts.active || detectActiveSection();

  var header = document.getElementById('site-header');
  if (header) {
    var navHtml = SITE.nav.map(function (n) {
      var isActive = activeKey === n.key;
      return '<a href="' + base + n.href + '"' +
        (isActive ? ' class="active" aria-current="page"' : '') +
        '>' + n.label + '</a>';
    }).join('');
    header.innerHTML =
      '<div class="container">' +
        renderTerminalLogo(base, opts.logoSection || detectTerminalSection(activeKey)) +
        '<nav>' + navHtml + '</nav>' +
      '</div>';
    initTerminalLogo(header.querySelector('[data-terminal-logo]'));
  }

  renderBreadcrumb(base, opts.breadcrumb);

  var footer = document.getElementById('site-footer');
  if (footer) {
    footer.innerHTML = '<div class="container">' + SITE.footer + '</div>';
  }
}

/**
 * Load items from items.json and render them into a container.
 * @param {string} containerId - ID of the target container element
 * @param {string} section - 'publications' | 'research' | 'projects' | 'teaching'
 * @param {Object} opts
 * @param {string} opts.jsonPath - path to items.json (default: 'items.json')
 * @param {string} opts.basePath - prefix for item folder paths (default: '')
 * @param {string} opts.linkBase - prefix for relative links in metadata (default: '')
 * @param {number} opts.limit   - max items to show, 0 = all (default: 0)
 * @param {string} opts.emptyMessage - placeholder shown when the list is empty
 */
async function loadItems(containerId, section, opts) {
  var o = opts || {};
  var jsonPath = o.jsonPath || 'items.json';
  var basePath = o.basePath || '';
  var linkBase = o.linkBase || '';
  var limit = o.limit || 0;
  var container = document.getElementById(containerId);
  if (!container) return;
  container.innerHTML = '';

  try {
    var res = await fetch(jsonPath);
    if (!res.ok) throw new Error('not found');
    var items = await res.json();

    if (items.length === 0) {
      container.innerHTML =
        '<p class="empty-note">' + escapeHtml(o.emptyMessage || 'No items yet.') + '</p>';
      return;
    }

    var list = document.createElement('div');
    list.className = 'item-list';
    var display = limit > 0 ? items.slice(0, limit) : items;

    display.forEach(function (item) {
      list.appendChild(renderItem(item, section, basePath, linkBase));
    });

    container.appendChild(list);
  } catch (e) {
    container.innerHTML =
      '<p class="empty-note">Run <code>python build.py</code> to generate the item list.</p>';
  }
}

async function loadNews(containerId, opts) {
  var o = opts || {};
  var jsonPath = o.jsonPath || 'news/items.json';
  var basePath = o.basePath || 'news/';
  var linkBase = o.linkBase || '';
  var limit = o.limit || 0;
  var timeline = Boolean(o.timeline);
  var container = document.getElementById(containerId);
  if (!container) return;
  container.innerHTML = '';

  try {
    var res = await fetch(jsonPath);
    if (!res.ok) throw new Error('not found');
    var items = await res.json();

    if (items.length === 0) {
      container.innerHTML =
        '<p class="empty-note">' + escapeHtml(o.emptyMessage || 'No news yet.') + '</p>';
      return;
    }

    var display = limit > 0 ? items.slice(0, limit) : items;
    var list = document.createElement('div');
    list.className = timeline ? 'news-timeline' : 'news-list';

    display.forEach(function (item) {
      list.appendChild(renderNewsItem(item, basePath, linkBase, timeline));
    });

    container.appendChild(list);
  } catch (e) {
    container.innerHTML =
      '<p class="empty-note">Run <code>python build.py</code> to generate the news list.</p>';
  }
}

function renderNewsItem(item, basePath, linkBase, timeline) {
  var el = document.createElement('article');
  el.className = timeline ? 'news-entry timeline-entry' : 'news-entry';

  var date = document.createElement('time');
  date.className = 'news-date';
  date.textContent = item.date || item.year || '';
  if (item.date) date.setAttribute('datetime', item.date);
  el.appendChild(date);

  var body = document.createElement('div');
  body.className = 'news-body';

  var title = document.createElement('div');
  title.className = 'news-title';
  var href = getItemHref(item, basePath);
  if (href) {
    var a = document.createElement('a');
    a.href = href;
    a.textContent = item.title || 'Untitled';
    title.appendChild(a);
  } else {
    title.textContent = item.title || 'Untitled';
  }
  body.appendChild(title);

  var summary = item.summary || item.brief || item.description;
  if (summary) {
    var p = document.createElement('div');
    p.className = 'news-summary';
    p.textContent = summary;
    body.appendChild(p);
  }

  if (item.links) {
    var links = document.createElement('div');
    links.className = 'item-links';
    normalizeLinks(item.links, linkBase).forEach(function (link) {
      if (!link.href) return;
      var la = document.createElement('a');
      la.href = link.href;
      la.textContent = '[' + link.label + ']';
      links.appendChild(la);
    });
    if (links.children.length) body.appendChild(links);
  }

  el.appendChild(body);
  return el;
}

function renderItem(item, section, basePath, linkBase) {
  var el = document.createElement('div');
  el.className = 'item';
  if (section) el.className += ' item-' + section;

  // Thumbnail
  if (item.thumbnail) {
    var img = document.createElement('img');
    img.className = 'item-thumbnail';
    img.src = resolveItemPath(item.thumbnail, item, basePath);
    img.alt = item.title || '';
    img.loading = 'lazy';
    el.appendChild(img);
  }

  var body = document.createElement('div');
  body.className = 'item-body';

  // Title
  var heading = document.createElement('div');
  heading.className = 'item-heading';

  var title = document.createElement('div');
  title.className = 'item-title';
  var href = getItemHref(item, basePath);
  if (href) {
    var a = document.createElement('a');
    a.href = href;
    a.textContent = item.title || 'Untitled';
    title.appendChild(a);
  } else {
    title.textContent = item.title || 'Untitled';
  }
  heading.appendChild(title);

  if (section === 'publications' && item.year) {
    var year = document.createElement('span');
    year.className = 'item-year publication-year';
    year.textContent = item.year;
    heading.appendChild(year);
  }

  body.appendChild(heading);

  // Section-specific metadata
  if (section === 'publications') {
    if (item.authors) addMeta(body, item.authors, true);
    if (item.venue) {
      var v = '<em>' + (item.venue || '') + '</em>';
      addMeta(body, v, true);
    }
  } else if (section === 'research') {
    if (item.status) addMeta(body, item.status);
  } else if (section === 'projects') {
    var projectParts = [item.status, item.year].filter(Boolean).join(' · ');
    if (projectParts) addMeta(body, projectParts);
  } else if (section === 'teaching') {
    var parts = [item.semester, item.role].filter(Boolean).join(' · ');
    if (parts) addMeta(body, parts);
  }

  // Summary
  var summary = item.summary || item.brief || item.description;
  if (summary) {
    var sum = document.createElement('div');
    sum.className = 'item-summary';
    sum.textContent = summary;
    body.appendChild(sum);
  }

  // Tags
  if (item.tags && item.tags.length) {
    var tags = document.createElement('div');
    tags.className = 'item-tags';
    item.tags.forEach(function (t) {
      var span = document.createElement('span');
      span.className = 'tag';
      span.textContent = t;
      tags.appendChild(span);
    });
    body.appendChild(tags);
  }

  // Links
  if (item.links) {
    var links = document.createElement('div');
    links.className = 'item-links';
    normalizeLinks(item.links, linkBase).forEach(function (link) {
      if (!link.href) return;
      var la = document.createElement('a');
      la.href = link.href;
      la.textContent = '[' + link.label + ']';
      links.appendChild(la);
    });
    if (links.children.length) body.appendChild(links);
  }

  el.appendChild(body);
  return el;
}

function getItemHref(item, basePath) {
  if (item.url) return item.url;
  if (item.page_url) return item.page_url;
  if (item.page === true && item.folder) return basePath + item.folder + '/';
  if (typeof item.page === 'string') return resolveItemPath(item.page, item, basePath);
  if (item.has_page && item.folder) return basePath + item.folder + '/';
  return '';
}

function resolveItemPath(path, item, basePath) {
  if (!path) return '';
  path = String(path);
  if (/^(https?:|mailto:|tel:|#|\/)/.test(path)) return path;
  if (item.folder) return basePath + item.folder + '/' + path;
  return basePath + path;
}

function normalizeLinks(links, linkBase) {
  if (Array.isArray(links)) {
    return links.map(function (link) {
      return {
        label: link.label || link.name || 'link',
        href: resolveDirectPath(link.href || link.url || '', linkBase)
      };
    });
  }

  return Object.keys(links).map(function (label) {
    var value = links[label];
    if (value && typeof value === 'object') {
      return {
        label: value.label || value.name || label,
        href: resolveDirectPath(value.href || value.url || '', linkBase)
      };
    }
    return { label: label, href: resolveDirectPath(value, linkBase) };
  });
}

function resolveDirectPath(path, base) {
  if (!path) return '';
  path = String(path);
  if (/^(https?:|mailto:|tel:|#|\/)/.test(path)) return path;
  return (base || '') + path;
}

function addMeta(parent, html, useHtml) {
  var d = document.createElement('div');
  d.className = 'item-meta';
  if (useHtml) d.innerHTML = html; else d.textContent = html;
  parent.appendChild(d);
}

function detectActiveSection() {
  var path = window.location.pathname.replace(/\/index\.html$/, '/');
  for (var i = 0; i < SITE.nav.length; i += 1) {
    var key = SITE.nav[i].key;
    if (path.indexOf('/' + key + '/') !== -1 || path.slice(-key.length - 1) === '/' + key) {
      return key;
    }
  }
  return '';
}

function detectTerminalSection(activeKey) {
  if (activeKey) return normalizeTerminalSection(activeKey);

  var parts = window.location.pathname
    .replace(/\/index\.html$/, '/')
    .split('/')
    .filter(Boolean);

  if (parts[0] === 'homepage') parts.shift();
  return normalizeTerminalSection(parts[0] || '');
}

function normalizeTerminalSection(section) {
  return String(section || '')
    .toLowerCase()
    .split('/')[0]
    .replace(/[^a-z0-9-]/g, '');
}

function renderTerminalLogo(base, section) {
  section = normalizeTerminalSection(section);
  var label = section ?
    'Terminal logo, current directory ' + section :
    'Terminal logo, home directory';

  return '<h1 class="site-logo">' +
    '<a class="terminal-logo" href="' + base + '" aria-label="' + escapeHtml(label) + '"' +
      ' data-terminal-logo data-terminal-section="' + escapeHtml(section) + '">' +
      '<span class="terminal-text">guoyi@nus:~$ </span>' +
      '<span class="terminal-cursor" aria-hidden="true">_</span>' +
    '</a>' +
  '</h1>';
}

function initTerminalLogo(logo) {
  if (!logo) return;

  var text = logo.querySelector('.terminal-text');
  if (!text) return;

  var timers = [];
  var section = normalizeTerminalSection(logo.getAttribute('data-terminal-section'));
  var homePrompt = 'guoyi@nus:~$ ';
  var finalPrompt = section ? 'guoyi@nus:~/' + section + '$ ' : homePrompt;
  var command = section ? homePrompt + 'cd ' + section + '/' : homePrompt;
  var reduceMotion = window.matchMedia &&
    window.matchMedia('(prefers-reduced-motion: reduce)').matches;
  var isReturningHome = false;

  function queue(callback, delay) {
    var id = window.setTimeout(callback, delay);
    timers.push(id);
    return id;
  }

  function clearTimers() {
    timers.forEach(function (id) {
      window.clearTimeout(id);
    });
    timers = [];
  }

  function typeText(start, full, delay, done) {
    var index = start.length;
    text.textContent = start;

    queue(function typeNext() {
      index += 1;
      renderTerminalText(text, full.slice(0, index), start.length);

      if (index < full.length) {
        queue(typeNext, delay);
        return;
      }

      if (done) done();
    }, delay);
  }

  logo.addEventListener('click', function (event) {
    if (event.defaultPrevented || event.button !== 0 || event.metaKey || event.ctrlKey || event.shiftKey || event.altKey) {
      return;
    }

    if (reduceMotion) return;

    event.preventDefault();
    if (isReturningHome) return;
    isReturningHome = true;

    clearTimers();
    typeText(finalPrompt, finalPrompt + 'cd ~', 38, function () {
      queue(function () {
        if (section) {
          window.location.href = logo.href;
        } else {
          text.textContent = finalPrompt;
          isReturningHome = false;
        }
      }, 220);
    });
  });

  if (!section || reduceMotion) {
    text.textContent = finalPrompt;
    return;
  }

  queue(function () {
    typeText(homePrompt, command, 38, function () {
      queue(function () {
        text.textContent = finalPrompt;
      }, 260);
    });
  }, 160);
}

function renderTerminalText(target, value, commandStart) {
  var prompt = value.slice(0, commandStart);
  var command = value.slice(commandStart);

  target.textContent = '';
  target.appendChild(document.createTextNode(prompt));

  if (!command) return;

  if (command.indexOf('cd') === 0) {
    var keyword = document.createElement('span');
    keyword.className = 'terminal-command';
    keyword.textContent = command.slice(0, Math.min(2, command.length));
    target.appendChild(keyword);
    target.appendChild(document.createTextNode(command.slice(2)));
    return;
  }

  target.appendChild(document.createTextNode(command));
}

function renderBreadcrumb(base, breadcrumb) {
  if (!breadcrumb) return;

  var header = document.getElementById('site-header');
  if (!header) return;

  var title = breadcrumb.title || '';
  var items = breadcrumb.items || [];

  if (!items.length && breadcrumb.sectionLabel) {
    items.push({
      label: breadcrumb.sectionLabel,
      href: breadcrumb.sectionHref || ''
    });
  }

  var itemHtml = items.map(function (item) {
    var href = item.href || '';
    return '<span aria-hidden="true">&gt;</span>' +
      (href ?
        '<a href="' + base + href + '">' + escapeHtml(item.label || '') + '</a>' :
        '<span>' + escapeHtml(item.label || '') + '</span>');
  }).join('');

  var wrap = document.createElement('div');
  wrap.className = 'breadcrumb-wrap';
  wrap.innerHTML =
    '<div class="breadcrumb container">' +
      '<nav class="breadcrumb-path" aria-label="Breadcrumb">' +
        '<a href="' + base + '">Home</a>' +
        itemHtml +
      '</nav>' +
      (title ? '<h2>' + escapeHtml(title) + '</h2>' : '') +
    '</div>';

  header.insertAdjacentElement('afterend', wrap);
}

function escapeHtml(value) {
  return String(value)
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;');
}

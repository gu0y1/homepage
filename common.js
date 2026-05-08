/**
 * common.js — Shared utilities for the academic homepage.
 * Centralised header/footer + auto-loading item lists.
 *
 * ============================================================
 *  SITE CONFIG — Edit this section to update every page at once
 * ============================================================
 */
var SITE = {
  name: 'Your Name',
  nav: [
    { key: 'research',     label: 'Research',     href: 'research/' },
    { key: 'publications', label: 'Publications', href: 'publications/' },
    { key: 'projects',     label: 'Projects',     href: 'projects/' },
    { key: 'teaching',     label: 'Teaching',     href: 'teaching/' },
    { key: 'contact',      label: 'Contact',      href: 'contact/' }
  ],
  footer: '&copy; 2025 Your Name. Last updated: March 2025.'
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
        '<h1><a href="' + base + '">' + SITE.name + '</a></h1>' +
        '<nav>' + navHtml + '</nav>' +
      '</div>';
  }

  renderBreadcrumb(base, opts.breadcrumb);

  var footer = document.getElementById('site-footer');
  if (footer) {
    footer.innerHTML = SITE.footer;
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
      container.innerHTML = '<p class="empty-note">No items yet.</p>';
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
      container.innerHTML = '<p class="empty-note">No news yet.</p>';
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

function renderBreadcrumb(base, breadcrumb) {
  if (!breadcrumb) return;

  var header = document.getElementById('site-header');
  if (!header) return;

  var sectionLabel = breadcrumb.sectionLabel || '';
  var sectionHref = breadcrumb.sectionHref || '';
  var title = breadcrumb.title || '';

  var wrap = document.createElement('div');
  wrap.className = 'breadcrumb-wrap';
  wrap.innerHTML =
    '<div class="breadcrumb container">' +
      '<nav class="breadcrumb-path" aria-label="Breadcrumb">' +
        '<a href="' + base + '">Home</a>' +
        (sectionLabel ? '<span aria-hidden="true">&gt;</span><a href="' + base + sectionHref + '">' + escapeHtml(sectionLabel) + '</a>' : '') +
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

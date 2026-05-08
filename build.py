#!/usr/bin/env python3
"""
build.py — Scan section folders and generate items.json for each.

Usage:
    python build.py

For each section (research, publications, projects, teaching, news), this script:
1. Scans all sub-folders
2. Reads meta.json from each sub-folder
3. Generates items.json sorted by date/year (newest first)
"""

import json
import os

SECTIONS = ['research', 'publications', 'projects', 'teaching', 'news']
ROOT = os.path.dirname(os.path.abspath(__file__))


def build_section(section):
    section_dir = os.path.join(ROOT, section)
    if not os.path.isdir(section_dir):
        print(f'  {section}/ not found, skipping.')
        return

    items = []

    for entry in sorted(os.scandir(section_dir), key=lambda e: e.name):
        if not entry.is_dir():
            continue

        meta_path = os.path.join(entry.path, 'meta.json')
        if not os.path.exists(meta_path):
            continue

        try:
            with open(meta_path, 'r', encoding='utf-8') as f:
                meta = json.load(f)
        except json.JSONDecodeError as exc:
            raise SystemExit(
                f'Invalid JSON in {os.path.relpath(meta_path, ROOT)}: '
                f'line {exc.lineno}, column {exc.colno}: {exc.msg}'
            ) from exc

        if meta.get('hidden'):
            continue

        meta['folder'] = entry.name

        # Auto-detect thumbnail
        if 'thumbnail' not in meta:
            for ext in ['jpg', 'jpeg', 'png', 'gif', 'webp', 'svg']:
                thumb = os.path.join(entry.path, f'thumbnail.{ext}')
                if os.path.exists(thumb):
                    meta['thumbnail'] = f'thumbnail.{ext}'
                    break

        # Check for detail page
        if os.path.exists(os.path.join(entry.path, 'index.html')):
            meta['has_page'] = True

        items.append(meta)

    # Sort: date desc → year desc → order asc → title asc
    items.sort(key=lambda x: (
        -sort_date(x.get('date', '')),
        -sort_year(x.get('year', 0)),
        x.get('order', 999),
        x.get('title', '')
    ))

    output_path = os.path.join(section_dir, 'items.json')
    new_content = json.dumps(items, indent=2, ensure_ascii=False) + '\n'
    old_content = None
    if os.path.exists(output_path):
        with open(output_path, 'r', encoding='utf-8') as f:
            old_content = f.read()

    if old_content != new_content:
        with open(output_path, 'w', encoding='utf-8') as f:
            f.write(new_content)
        action = 'updated'
    else:
        action = 'unchanged'

    print(f'  {section}/items.json — {len(items)} item(s), {action}')


def sort_year(value):
    try:
        return int(value)
    except (TypeError, ValueError):
        return 0


def sort_date(value):
    digits = ''.join(ch for ch in str(value) if ch.isdigit())
    if len(digits) >= 8:
        return int(digits[:8])
    if len(digits) >= 6:
        return int(digits[:6] + '00')
    if len(digits) >= 4:
        return int(digits[:4] + '0000')
    return 0


def main():
    print('Building items.json for each section...\n')
    for section in SECTIONS:
        build_section(section)
    print('\nDone.')


if __name__ == '__main__':
    main()

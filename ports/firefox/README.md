# Firefox

`manifest.json` — a Firefox static theme.

Install for testing: open `about:debugging#/runtime/this-firefox`, click
**Load Temporary Add-on**, and pick `manifest.json`. It stays until Firefox
restarts — after every restart it must be loaded again, or replaced with a
signed permanent install (below).

A permanent install needs the theme signed by Mozilla. Zip the folder's
contents (not the folder itself) and upload it at
[addons.mozilla.org/developers](https://addons.mozilla.org/developers/),
either listed (public) or unlisted (you get a signed `.xpi` to install
yourself).

## Design (v1.2.0, settled 2026-10-04 — the reference look)

Flat `bg` #0c0a20 on every surface: frame, toolbar, tabs, address bar,
menus, sidebar, new-tab page. No lines anywhere — every separator, border
and tab-line key is set to `bg`. Firefox's theme API is the only one of
the three browsers with keys for all of them.

- **Active tab = magenta square** (`tab_selected` = magenta) with dark
  title and dark × (`tab_text` = `bg`). The × has no slot of its own — it
  inherits the tab text colour (verified in Firefox's source:
  `--button-text-color-ghost` resolves to inherit).
- No line around or under the square (`tab_line` = `bg`).
- Selection (address bar, menus, sidebar rows) is `base3`; hover `base1`.
- Toolbar icons magenta; `icons_attention` (download finished, etc.) is
  `yellow` — one small mark.
- Firefox's tab shape (floating rounded tabs) can't be changed by a theme,
  so tabs will still look like Firefox tabs.

## Built-in pages and blank tabs (optional, not part of the theme)

A theme can't colour Firefox's own pages (Settings, Add-ons,
`about:debugging`) or a blank tab. Two extra files do:

- `userContent.css` — recolours the built-in pages with the palette. Copy it
  into a `chrome` folder inside your Firefox profile (find the profile via
  `about:profiles` → Root Directory → Open).
- `user.js` — copy into the profile folder itself. It turns on the setting
  that lets Firefox read `userContent.css`, and makes blank tabs `bg`
  instead of grey.

Restart Firefox after copying. To undo, delete both. Firefox changes its
built-in pages now and then, so a spot may fall back to grey after an update.

# Brave

`manifest.json` — a Chrome-format theme (MV3), tuned for **Brave's vertical
tabs**. Chrome proper should use [`ports/chrome/`](../chrome/) instead.

Install: open `chrome://extensions`, turn on **Developer mode** (top right),
**remove** any previously loaded Outrun Electric, click **Load unpacked**,
and pick this folder.

## Why this is a separate file

Brave's vertical tab strip paints the **active** tab's square from the
`background_tab` slot — the slot that paints **inactive** tabs in Chrome's
horizontal mode. Verified experimentally on 2026-10-04 with diagnostic
builds that gave every candidate slot a distinct colour. One file cannot
serve both browsers: magenta there is the square in Brave vertical and a
row of magenta inactive tabs in Chrome horizontal.

## Design (v1.5.4, settled 2026-10-04)

Flat `bg` #0c0a20 everywhere: window frame, tab strip, toolbar, address
bar, new-tab page.

- **Active tab = magenta square** (`background_tab` = magenta), with dark
  title and dark × (`tab_text` = `bg`) — the same mark Firefox's port has.
- Inactive tabs: flat, grey titles.
- Hover pill (`button_background`) stays `bg` — magenta there made the
  sidebar divider above the + button glow magenta.

## Known limits (verified live 2026-10-04)

- The address bar ignores `omnibox_background`: two different values
  produced an identical lighter pill. Brave owns that pill; no theme
  reaches it. (Chrome respects the key — this is Brave-specific.)
- The hairline under the toolbar and the vertical line between page and
  sidebar have no theme keys — they stay.
- **Vertical-tabs-only design:** in horizontal tab mode this file shows
  magenta inactive tabs (the same inverted slot at work).
- Hide Brave's new-tab cards via new-tab page → **Customize** → turn off
  Stats, Shortcuts, etc.

## Brave's new tab page

Brave ignores the theme's new-tab colour and draws its own gradient. To
match: open a new tab → gear icon → Background Image → turn on
**Show Background Images** → **Upload from device**, and pick
`brave-newtab.png` from this folder (a flat `bg` #0c0a20 image).

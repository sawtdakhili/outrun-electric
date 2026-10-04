# Chrome

`manifest.json` — a Chrome theme (MV3), built for Chrome's horizontal tabs.
For Brave's vertical tabs use [`ports/brave/`](../brave/) instead — the two
browsers need opposite values in one slot, see that README for why.

Install: open `chrome://extensions`, turn on **Developer mode** (top right),
click **Load unpacked**, and pick this folder. To remove it, go to
Settings → Appearance → Theme → **Reset to default**.

## Design (v1.6.1, settled 2026-10-04)

Flat `bg` #0c0a20 everywhere: window frame, tab strip, toolbar, address
bar, new-tab page. One surface, no patches.

- **Active tab** is marked by colour only: `tab_text` is magenta, so the
  active title **and its ×** (Chrome gives the × no slot of its own — it
  follows the tab text) read magenta against grey inactive titles.
- Inactive tab titles are `grey`, toolbar icons magenta, everything else
  text is `fg`.
- Chrome has **no slot for the active tab's background** — the active tab
  shares the toolbar's colour. A magenta tab means a magenta toolbar
  (built as 1.6.0, seen, rejected, reverted same day). The magenta-text
  mark is this port's ceiling.

## Known limits (verified live 2026-10-04)

- The hairline under the toolbar has no theme key — it stays.
- The "Ask Gemini" chip follows the background-tab colour family: its pill
  was magenta while `background_tab` was magenta; with the flat values it
  renders dark with light text.

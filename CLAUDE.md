# CLAUDE.md — `outrun-electric`

Collection of Outrun Electric theme ports. Public repo, published 2026-07-28:
https://github.com/sawtdakhili/outrun-electric. Started 2026-07-27.

`PALETTE.md` is the canonical colour spec and the reason this repo exists —
the palette was written down nowhere and had to be reverse-engineered from the
Doom Emacs theme file. Read it before adding a port; it includes the presence
scores and the three assignment rules learned from getting a port wrong three
times.

## Next up

**Browser themes — designed, settled, committed and pushed 2026-10-04
(`12d4d6c`; Pi port in `32f440e` before it).** The flat minimal design is
final and verified live: one `bg` surface everywhere, active tab marked
magenta (a square in Firefox and Brave vertical, magenta title + × text in
Chrome horizontal), dark × on the square. Three ports:
`ports/firefox` 1.2.0 (the reference — the only browser whose theme API
reaches every line), `ports/brave` 1.5.4 (vertical tabs only — Brave paints
the active square from `background_tab`, inverted vs Chrome horizontal,
hence a separate file; do not merge with `ports/chrome/`), `ports/chrome`
1.6.1 (Chrome has no active-tab slot; a magenta toolbar was built as 1.6.0,
seen, rejected the same day). Known limits are documented in each port's
README. Open items:

1. Screenshots for the README's Screenshots table (browsers are missing
   from it), then commit.
2. **Publish** to addons.mozilla.org (free) and the Chrome Web Store ($5
   one-time fee; also covers Brave/Edge). Still unanswered: icon
   (placeholder now, real one after the visual rework below?), is the $5
   fee OK, listing name "Outrun Electric" with samrap/ema2159 credited?
   CWS needs a 128px icon + a 1280×800 screenshot; AMO takes the manifest
   only (userContent.css can't ship in a store theme). Firefox also needs a
   packed, signed xpi — until then its theme is re-loaded by hand after
   every restart.
3. Optional Firefox polish, low priority: userContent.css
   destructive-button red + `--input-text-background-color`,
   `ntp_card_background`.

**Visual rework of the repo — not started, start here next session.** The
user wants the repo itself to look better, not just document the theme:
a logo, and the palette's own colours actually shown off in the README's
presentation (not just terminal screenshots of it in use — think a styled
header, colour swatches, badges). Explicitly asked for this to be researched
and benchmarked, not just implemented from scratch — look at how other
well-regarded palette/dotfile repos present themselves (e.g. Catppuccin,
Rosé Pine, Tokyo Night, Gruvbox) before designing anything here. Study first,
then propose an approach — don't jump straight to a logo or a README rewrite.

## Layout

- `PALETTE.md` — canonical spec, ANSI mapping, porting guidance
- `README.md` — public-facing; ports table + index of third-party ports
- `ports/<app>/` — the actual config files
- `screenshots/` — one per port, embedded in README.md's Screenshots section.
  All scenes are confined to this repo's own directory tree (never `~` or
  `~/Documents` at large) so nothing outside the public repo can leak into a
  listing or prompt path.

## Working rules

- **These files are copies.** The live configs are at `~/.config/ghostty/themes/`,
  `~/.config/yazi/`, `~/.claude/themes/`, `~/.pi/agent/themes/` (Pi),
  `~/.config/bat/themes/`, `~/.config/starship.toml`, and a block inside `~/.zshrc`. Edit the live file
  first, verify it in the running app, then copy here. Never edit only the copy.
  Exception: the browser theme manifests have no live config — Chrome loads
  `ports/chrome/`, Brave loads `ports/brave/` (vertical-tab design, split
  from `ports/chrome/` on 2026-10-04 because Brave paints the active square
  from `background_tab`, inverted vs Chrome horizontal — do not merge),
  Firefox loads `ports/firefox/`. Those folders are the source; reload the
  theme in the browser after editing. Firefox's load is temporary and
  vanishes on restart until a signed xpi replaces it.
  But Firefox's `userContent.css` and `user.js` *are* copies: live in
  `~/Library/Application Support/Firefox/Profiles/f2436bjp.default-release/`
  (`chrome/userContent.css`, `user.js`); Firefox reads them only at startup.
- Brave ignores the theme's new-tab colour; the user set
  `ports/brave/brave-newtab.png` (flat `bg`) as Brave's uploaded background
  instead. Browser internal pages (settings, extensions) can't be themed in
  Chrome/Brave at all.
- The Pi port's one derived value: `thinkingMax #ff74fd` = magenta lightened 35%
  toward white (same rule as the bright ANSI set). JSON can't carry comments, so
  it's recorded here.
- Third-party ports are **links only** — no vendored copies, no issues accepted
  for them.
- Attribution goes to samrap (original VS Code theme, the name) and ema2159
  (Doom port, the exact hexes). Colour values are not copyrightable, but both
  are credited everywhere the palette is published.

## Status

- Browser themes finalized 2026-10-04: flat-minimal design across three
  ports (chrome, brave, firefox), each port's README documents its design
  and hard limits. Committed and pushed the same day (`12d4d6c`).
- Upstream PR to iTerm2-Color-Schemes: **merged** 2026-07-28, no changes
  requested — https://github.com/mbadolato/iTerm2-Color-Schemes/pull/730
  Outrun Electric now lives in that repo's `yaml/` + generated formats. It
  reaches Ghostty's bundled theme list on their next weekly sync from that
  repo (not yet confirmed landed — check `ghostty +list-themes` after that
  sync, or when updating Ghostty). Also ships to kitty, Alacritty, WezTerm,
  Konsole, Windows Terminal, and ~30 others via the same generator.
- README.md now names Ghostty as upstream-available under "Ports elsewhere"
  once the sync is confirmed — not done yet, since the sync hasn't landed.
- The bright ANSI colours (9-12, 14) are derived, not upstream, and are now
  permanently part of the merged scheme — not open to revision without a
  follow-up PR.
- Published to GitHub 2026-07-28: https://github.com/sawtdakhili/outrun-electric
  (public). Remote `origin`, branch `main`.
- Screenshots added 2026-07-29. The yazi port got a substantial rewrite in the
  process — most of it was silently inert (written against a pre-25.x Yazi
  schema: `[tab]`/`[select]`/`[completion]`/`mgr.hovered` and
  `[status].mode_*`/`permissions_*` are all dead keys on current Yazi, which
  just falls back to upstream defaults for them). It was also over-applying
  violet to every directory row, which combined with Yazi's reverse-video
  hover to make the cursor color depend on whatever it was hovering — fixed
  by giving the cursor a fixed small magenta mark instead, matching how
  Ghostty's cursor-color and Claude Code's promptBorder both do it (a thin
  mark, not a filled block — see `ports/yazi/theme.toml`'s own comments for
  the reasoning, worth reading in full before touching that file again).

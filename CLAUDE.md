# CLAUDE.md — `outrun-electric`

Collection of Outrun Electric theme ports. Public repo, published 2026-07-28:
https://github.com/sawtdakhili/outrun-electric. Started 2026-07-27.

`PALETTE.md` is the canonical colour spec and the reason this repo exists —
the palette was written down nowhere and had to be reverse-engineered from the
Doom Emacs theme file. Read it before adding a port; it includes the presence
scores and the three assignment rules learned from getting a port wrong three
times.

## Next up

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
  `~/.config/yazi/`, `~/.claude/themes/`, `~/.config/bat/themes/`,
  `~/.config/starship.toml`, and a block inside `~/.zshrc`. Edit the live file
  first, verify it in the running app, then copy here. Never edit only the copy.
- Third-party ports are **links only** — no vendored copies, no issues accepted
  for them.
- Attribution goes to samrap (original VS Code theme, the name) and ema2159
  (Doom port, the exact hexes). Colour values are not copyrightable, but both
  are credited everywhere the palette is published.

## Status

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

# CLAUDE.md — `outrun-electric`

Collection of Outrun Electric theme ports. Public-facing repo (not yet
published). Started 2026-07-27.

`PALETTE.md` is the canonical colour spec and the reason this repo exists —
the palette was written down nowhere and had to be reverse-engineered from the
Doom Emacs theme file. Read it before adding a port; it includes the presence
scores and the three assignment rules learned from getting a port wrong three
times.

## Layout

- `PALETTE.md` — canonical spec, ANSI mapping, porting guidance
- `README.md` — public-facing; ports table + index of third-party ports
- `ports/<app>/` — the actual config files

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

- Upstream PR to iTerm2-Color-Schemes: **open, awaiting review** —
  https://github.com/mbadolato/iTerm2-Color-Schemes/pull/730
  If merged, the palette ships in Ghostty's bundled themes plus ~30 other
  terminals. **Do not claim this in README.md until it is actually merged.**
- The bright ANSI colours (9-12, 14) are derived, not upstream. If a reviewer
  asks for changes there, `PALETTE.md` and `ports/ghostty/` both need updating.
- Not yet published to GitHub. Publishing is an irreversible outward action —
  confirm before creating the remote.

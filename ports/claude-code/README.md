# Claude Code

`outrun-electric.json` — a custom theme (`{name, base, overrides}`, keys like
`promptBorder`, `bashBorder`, `diffAdded`) for Claude Code 2.1.220+.

Install: copy to `~/.claude/themes/`, then run `/theme` and select it.

## Things worth knowing

- **Themes load once at process start**, then the folder is watched for
  changes. A brand-new theme file needs a fresh `claude` session before it
  shows up in `/theme`; editing an already-loaded theme applies live.
- `Ctrl+E` on the `/theme` screen opens a live colour editor for the selected
  custom theme.
- The `background` key is not a background — it is the accent colour for
  dialog titles and borders (`/config`, settings panels).
- `suggestion` is not only autocomplete ghost text. It also colours the
  focused row in every option list (picker pointer, label, description). Do
  not dim it — a dim focus indicator reads as *less* visible than unfocused
  rows, which is worse than no theming at all.
- Markdown body text and inline-code colours come from the base theme and are
  **not overridable** from this file. A prose-heavy screen will always be
  mostly white text with lavender inline code, regardless of what is set here.

## Colour assignment notes

Early revisions of this file spread the palette evenly across roles, which
made the UI read as noisy and muted at once — see `../../PALETTE.md` for why
that happens and the presence-based approach that replaced it. In short:
magenta owns the permanently-visible chrome (`promptBorder`, dialog
`background`, the `claude` spinner), high-chroma colours get single, frequent
marks rather than sitting idle (green on `bashBorder`, so a spark shows on
every bash block), and nothing sits in the washed-middle range (`fg-alt`/
`base6`, presence 14–19).

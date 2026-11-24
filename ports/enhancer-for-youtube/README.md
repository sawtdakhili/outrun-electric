# Enhancer for YouTube

`custom-theme.css` — Outrun Electric for YouTube, applied through the
[Enhancer for YouTube](https://www.mrfdev.com/enhancer-for-youtube) extension.
Pitch-black variant: the main background is `#000000`, with the palette's
`bg` (#0c0a20) on cards and the header, and magenta as the accent.

## Install

1. Enhancer settings → **Theme** → tick **Dark theme** and select
   **YouTube-DeepDark (by RaitaroH)**. Any variant works; this file overrides
   its colours.
2. Tick **Custom theme**, paste the contents of `custom-theme.css`, click
   **Save**.
3. Reload YouTube.

## How it works

DeepDark reads every colour from CSS variables (`--main-color`,
`--main-background`, `--main-text`, …). The file redefines them, so it needs
DeepDark selected underneath — on its own it does nothing.

## Known limits (verified live 2026-11-24, Brave)

- **Snackbar fix.** Under DeepDark, YouTube's snackbar popups (such as
  "Experiencing interruptions?", shown to ad-blocker users) render light text
  on a light box. Recolouring the text loses to DeepDark; the file darkens
  the box instead. It targets `snackbar-view-model` and will break if YouTube
  renames that element.
- `--second-background`, `--hover-background` and `--shadow` are DeepDark's
  usual variable names, not ones seen in the inspector; the result was
  checked visually only.

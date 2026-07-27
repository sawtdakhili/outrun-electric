# Emacs

No port is kept here — Outrun Electric ships with
[doom-themes](https://github.com/doomemacs/themes) as `doom-outrun-electric`,
created by [ema2159](https://github.com/ema2159). That file is also the source
of the canonical palette in [`../../PALETTE.md`](../../PALETTE.md).

```elisp
(setq doom-theme 'doom-outrun-electric)
```

Two things the theme does that are worth knowing before you customise it:

- Every markdown heading level inherits one face, so `#`, `##` and `###` are
  all the same red. Give the levels distinct colours with `custom-set-faces!`
  if you want hierarchy — and set `:height` explicitly when you do, because
  overriding the foreground otherwise discards `markdown-header-scaling`.
- `markdown-italic-face` is `fg-alt` `#7984D1`. In prose-heavy files where
  italics carry most of the body text, that is the washed middle described in
  `PALETTE.md` — consider a near-neutral instead.

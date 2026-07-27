# Outrun Electric — palette specification

The canonical colour values, and guidance on which role each one should take
when porting to a new application. Everything here is derived from ema2159's
Doom Emacs port, which is the fullest written-down form of the palette.

## Core colours

| Name | Hex | Notes |
|---|---|---|
| `bg` | `#0c0a20` | Background |
| `bg-alt` | `#090819` | Darker background, sidebars |
| `fg` | `#f2f3f7` | Foreground / body text |
| `fg-alt` | `#7984D1` | Secondary text, strings |
| `red` | `#e61f44` | Error, deletions, markdown headings |
| `orange` | `#cf433e` | Modified state |
| `orange-light` | `#ff9b50` | Doom's 256-colour fallback for orange; the palette's only warm mid-tone |
| `green` | `#a7da1e` | Success, additions |
| `yellow` | `#ffd400` | Types, numbers, warnings |
| `blue` | `#1ea8fc` | Built-ins, informational |
| `dark-blue` | `#3F88AD` | Selection (Emacs only) |
| `magenta` | `#ff2afc` | Keywords, operators, cursor — **the identity colour** |
| `violet` | `#df85ff` | Constants, variables |
| `teal` | `#A875FF` | Doc comments, links. Named "teal" upstream but is purple |
| `cyan` | `#42c6ff` | Functions, methods |
| `dark-cyan` | `#204052` | Rarely used |

## Greys and surfaces

| Name | Hex | Notes |
|---|---|---|
| `base0` | `#131033` | ANSI black, code block background |
| `base1` | `#1f1147` | Region / selection background |
| `base2` | `#110d26` | |
| `base3` | `#3b4167` | Dividers |
| `base4` | `#2d2844` | Line numbers, subtle marks |
| `base5` | `#BA45A3` | **Borders and markup punctuation** — magenta-pink, not a grey |
| `base6` | `#6A6EA3` | |
| `base7` | `#6564D1` | |
| `base8` | `#919ad9` | Punctuation, emphasis |
| `grey` | `#546A90` | Comments, inactive text |

## ANSI mapping

Normal `0-7`: `#131033` `#e61f44` `#a7da1e` `#ffd400` `#1ea8fc` `#ff2afc` `#42c6ff` `#f2f3f7`

Bright `8-15`: `#546a90` `#ef6d85` `#c6e76d` `#ffe359` `#6dc6fd` `#df85ff` `#84daff` `#ffffff`

Neither upstream defines a bright set. Brights 9-12 and 14 are lightened 35%
toward white; bright magenta uses `violet`. This is the set submitted to
iTerm2-Color-Schemes.

## Assigning colours in a new port

Presence scores below are chroma and lightness contrast against `#0c0a20`,
computed in OKLCh. They measure how strongly a colour reads *regardless of how
much area it occupies* — which is what makes this palette work.

| Colour | Presence |
|---|---|
| `magenta` | 37.6 |
| `green` | 30.5 |
| `yellow` | 29.3 |
| `red` | 28.3 |
| `violet` | 28.3 |
| `teal` | 27.7 |
| `blue` | 24.8 |
| `base5` | 24.6 |
| `cyan` | 23.3 |
| `fg-alt` | 19.0 |
| `base6` | 14.2 |
| `grey` | 11.9 |
| `base3` | 10.0 |
| `fg` | 3.1 |

Three rules follow from this, learned by getting them wrong first:

1. **Let magenta dominate.** It outscores everything by a wide margin. Put it
   on the surfaces that are always visible — borders, cursors, prompts. A port
   that spreads all twelve hues evenly across roles reads as noisy *and*
   muted, because nothing anchors it.
2. **Avoid the washed middle.** `fg-alt` and `base6` (14-19) look faded rather
   than coloured on this background. Permanent chrome should be either
   near-neutral (`grey`, `base3`) or full chroma. Nothing in between.
3. **High-chroma colours need almost no area.** Green, yellow and red score as
   high as violet, so a single bullet or a one-character mark is enough. They
   do not have to be reserved for alarms — the Doom theme itself uses red for
   markdown headings and green for CSS properties.

Note that `fg` scores 3.1: white text is perceptually inert. A screen that is
mostly white body text is not why a port looks muted — the chrome is.

# Colors — Outrun Electric (same palette as Ghostty, Emacs, yazi, bat)
# bg #0c0a20  fg #f2f3f7  magenta #ff2afc  violet #df85ff  purple #A875FF
# cyan #42c6ff  blue #1ea8fc  green #a7da1e  yellow #ffd400  red #e61f44

export FZF_DEFAULT_OPTS="
  --color=fg:#f2f3f7,fg+:#f2f3f7,bg:-1,bg+:#1f1147
  --color=hl:#ff2afc,hl+:#ff2afc,info:#A875FF,marker:#a7da1e
  --color=prompt:#ff2afc,spinner:#df85ff,pointer:#ff2afc,header:#546A90
  --color=border:#BA45A3,label:#df85ff"

# eza: directories violet, executables red, permissions match yazi's mapping
EZA_COLORS="di=1;38;2;223;133;255:ex=1;38;2;230;31;68:ln=38;2;66;198;255"
EZA_COLORS+=":da=38;2;84;106;144:uu=38;2;121;132;209:gu=38;2;84;106;144"
EZA_COLORS+=":sn=38;2;167;218;30:sb=38;2;106;110;163:xx=38;2;45;40;68"
EZA_COLORS+=":ur=38;2;255;212;0:gr=38;2;255;212;0:tr=38;2;255;212;0"
EZA_COLORS+=":uw=38;2;207;67;62:gw=38;2;207;67;62:tw=38;2;207;67;62"
EZA_COLORS+=":ux=38;2;223;133;255:gx=38;2;223;133;255:tx=38;2;223;133;255"
EZA_COLORS+=":ue=38;2;223;133;255:hd=1;38;2;186;69;163"
# file categories, mirroring ~/.config/yazi/theme.toml
EZA_COLORS+=":*.png=38;2;255;42;252:*.jpg=38;2;255;42;252:*.jpeg=38;2;255;42;252"
EZA_COLORS+=":*.gif=38;2;255;42;252:*.webp=38;2;255;42;252:*.svg=38;2;255;42;252"
EZA_COLORS+=":*.mp4=38;2;255;212;0:*.mkv=38;2;255;212;0:*.mov=38;2;255;212;0"
EZA_COLORS+=":*.mp3=38;2;223;133;255:*.flac=38;2;223;133;255:*.wav=38;2;223;133;255"
EZA_COLORS+=":*.zip=38;2;230;31;68:*.tar=38;2;230;31;68:*.gz=38;2;230;31;68:*.7z=38;2;230;31;68"
EZA_COLORS+=":*.md=38;2;167;218;30:*.txt=38;2;167;218;30:*.pdf=38;2;167;218;30"
EZA_COLORS+=":*.json=38;2;255;212;0:*.toml=38;2;223;133;255:*.yml=38;2;255;42;252:*.yaml=38;2;255;42;252"
EZA_COLORS+=":*.sh=38;2;167;218;30:*.zsh=38;2;167;218;30:*.el=38;2;66;198;255"
export EZA_COLORS

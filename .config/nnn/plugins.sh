NNN_PLUG="n:-!wl-copy \"\$nnn\"*"
NNN_PLUG="$NNN_PLUG;p:-!wl-copy \$(readlink -f \"\$nnn\")*"
NNN_PLUG="$NNN_PLUG;x:-trash"
NNN_PLUG="$NNN_PLUG;i:preview_tui"
export NNN_PLUG=$NNN_PLUG

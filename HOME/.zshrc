# Use powerline


export NNN_FIFO="/tmp/nnn.fifo"
if [ -d "$HOME/.config/nnn" ]; then
	source "$HOME/.config/nnn/quitcd.bash_zsh"
	source "$HOME/.config/nnn/plugins.sh"
	source "$HOME/.config/nnn/quitcd.bash_zsh"
fi


USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
export VISUAL="nvim"
export EDITOR="$VISUAL"
export TERMINAL="alacritty"




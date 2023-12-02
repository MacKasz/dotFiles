# .bashrc

export NNN_FIFO=/tmp/nnn.fifo 
if [ -r "$HOME/.config/nnn/quitcd.bash_zsh" ]; then
	source "$HOME/.config/nnn/quitcd.bash_zsh"
	source "$HOME/.config/nnn/plugins.sh"
	export NNN_BMS="h:$HOME;m:/mnt;M:/media;r:/"
fi

export TERMINAL="/usr/bin/alacritty"
export EDITOR="nvim"

export PS1="\[\033[38;5;10m\]\u@\h\[$(tput sgr0)\]\[\033[38;5;12m\]:\W\[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

unset rc

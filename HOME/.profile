# .bash_profile

# Get the aliases and functions
#if [ -f ~/.bashrc ]; then
	#. ~/.bashrc
#fi


# User specific environment and startup programs

export VISUAL="nvim"
export TERMINAL="alacritty"
export EDITOR="$VISUAL"

if [ -d $HOME/.scripts ]; then
	export PATH="$PATH:$HOME/.scripts"
fi


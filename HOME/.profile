# .bash_profile

 Get the aliases and functions
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi


export VISUAL="nvim"
export TERMINAL="alacritty"
export EDITOR="$VISUAL"

if [ -d $HOME/.scripts ]; then
	export PATH="$PATH:$HOME/.scripts"
fi
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    export PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

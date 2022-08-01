#!/bin/bash

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Also load profile if present, update with source .bashrc
[ -f "$HOME/.profile" ] && . "$HOME/.profile"


# source files
. "$HOME/.config/bashrc.d/aliases"
. "$HOME/.config/bashrc.d/functions"
#. "$HOME/.config/bashrc.d/private"

. "$HOME/.config/bashrc.d/prompt"
. "$HOME/.config/bashrc.d/distros"

# cd without typing cd
shopt -s autocd

# bash history options
export HISTFILE="$XDG_STATE_HOME/bash/history"
export HISTSIZE=100000
#export HISTFILESIZE=-1 # set to infinite
export HISTCONTROL=ignoredupes # no duplicate commands with bash history
#PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
#PROMPT_COMMAND="history -a; $PROMPT_COMMAND"
export HISTTIMEFORMAT="[%F %T] "
#shopt -s histappend # only append to history file

# colored GCC warnings and errors
export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'
#change default ctrl-r search history to mcfly
#eval "$(mcfly init bash)"

if [ "$TILIX_ID" ] || [ "$VTE_VERSION" ]; then
        source /etc/profile.d/vte.sh
fi

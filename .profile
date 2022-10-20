# also load .bashrc if present
#[ -f ~/.bashrc ] && . ~/.bashrc

# XDG Paths
#export XDG_DATA_HOME=${XDG_DATA_HOME:="$HOME/.local/share"}
#export XDG_CACHE_HOME=${XDG_CACHE_HOME:="$HOME/.cache"}
#export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:="$HOME/.config"}
#export XDG_STATE_HOME=${XDG_STATE_HOME:="$HOME/.local/state"}

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"

# Standard configs
export EDITOR="nvim"
export USERPATH="$HOME/.local/bin"
export PATH="$PATH:$USERPATH:/usr/local/go/bin:$HOME/.local/go/bin"

# Usefull directories
export CODEDIR="$HOME/Dokumente/Code"
export REPODIR="$HOME/.local/repos"
export APPIMGDIR="$HOME/.local/AppImages"
export WIKIDIR="$HOME/Dokumente/VimWiki"

export HOMESERVER=buster
export BORG_PATH="$HOMESERVER:/srv/borg/xps"
export AGE_PUB="age194uf35zxlsjm4zk4w7qwq7fwkmrgqkhwsm2wesnufkr8x6uuq48qdnrpxc"
#export GPG_PUB="C7BCE9C6F5CAFF6FBFC74A1C68073729E9CA8286"
export PROJ_UPLOAD="$HOMESERVER:/srv/borg/xps"

export YDOTOOL_SOCKET="/tmp/.ydotool_socket"

#export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv 
#export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
#export KDEHOME="$XDG_CONFIG_HOME"/kde
#export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
#export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass
#export HISTFILE="${XDG_STATE_HOME}"/bash/historymonerod --data-dir "$XDG_DATA_HOME"/bitmonero

# from xdg-ninja
export HISTFILE="$XDG_STATE_HOME/bash/history"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME/nv"
export GNUPGHOME="$XDG_DATA_HOME/gnupg"
export __GL_SHADER_DISK_CACHE_PATH="$XDG_CACHE_HOME/nv"
export PARALLEL_HOME="$XDG_CONFIG_HOME"/parallel
export PASSWORD_STORE_DIR="$XDG_DATA_HOME"/pass 
export PSQL_HISTORY="$XDG_DATA_HOME/psql_history"
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PYTHONSTARTUP="${XDG_CONFIG_HOME}/python/pythonrc"
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export TEXMFVAR="$XDG_CACHE_HOME"/texlive/texmf-var
export WINEPREFIX="$XDG_DATA_HOME"/wine
#export XAUTHORITY="$XDG_RUNTIME_DIR"/Xauthority
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"
export IPYTHONDIR="${XDG_CONFIG_HOME}/ipython"
export JULIA_DEPOT_PATH="$XDG_DATA_HOME/julia:$JULIA_DEPOT_PATH"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export LESSHISTFILE="$XDG_CACHE_HOME/less/history"
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME"/npm/npmrc
export KDEHOME="$XDG_CONFIG_HOME"/kde


# add rust toolchain binaries to path
export PATH="$PATH:$HOME/.local/share/rustup/toolchains/nightly-x86_64-unknown-linux-gnu/bin"
export PATH="$PATH:$HOME/.local/share/rustup/toolchains/stable-x86_64-unknown-linux-gnu/bin"

# for bun js
export BUN_INSTALL="/home/matt/.local/opt/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# pubkeys
export GPG_PUBKEYS="D3F54688151483D2B29C3A483773DC11AED8B1DD DC9E542D1DF6CDDD 228CC357D60C7274FF0496586B0E0C8304CA9FED 2592082C3988CB4F4A1D067E1B62E7DF781F309D"
#export GPG_BACKUP_KEYS="E5997423A906C09447A6036D1B9629556C9F4EE8 D3F54688151483D2B29C3A483773DC11AED8B1DD"
export GPG_BACKUP_KEYS="D3F54688151483D2B29C3A483773DC11AED8B1DD"

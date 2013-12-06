# Initial commands to start with shell.

# Fortune cookies.
command fortune -s

# Custom path additions.
typeset -U path
path=($HOME/Dropbox/bin /usr/local/bin $path)

# Force zsh completion to ignore hosts entries.
zstyle ':completion:*' hosts off

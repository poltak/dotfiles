# https://github.com/zsh-users/zsh-syntax-highlighting
[[ -f $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]] && . $HOME/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

ZSH=$HOME/.zsh
for config_file ($ZSH/lib/*.zsh) source $config_file	# load zsh specific stuff

for i in aliases bashrc2 commonrc functions zsh; do
	[[ -f $HOME/.$i ]] && . $HOME/.$i;
done

PROMPT='%(!.%{$fg[cyan]%}.%{$fg[white]%}%n@)%m %{$fg[yellow]%}%(!.%1~.%~) %#%{$reset_color%} '
#PROMPT='%(!.%{$fg_bold[red]%}.%{$fg_bold[white]%}facade@)%m %{$fg_bold[blue]%}%(!.%1~.%~) %#%{$reset_color%} '

REPORTTIME=5	# report about cpu-/system-/user-time of command if running longer than 5 seconds
autoload -U compinit
compinit -i
zstyle ':completion:*' rehash yes

# # # # # # # # # # # # # # # # # # # # # # # # # #
# # # personal stuff ported over from .bashrc # # #
# # # # # # # # # # # # # # # # # # # # # # # # # #

# fortunemod
command fortune

# default browser
if [ -n "$DISPLAY" ]; then
	BROWSER=/usr/bin/chromium
else
	BROWSER=/usr/bin/links
fi

# custom aliases
alias ls='ls --color=auto'
alias pingoo='ping www.google.com'
alias mc='mc -b'

# less colours for man pages
man() {
    env \
        LESS_TERMCAP_mb=$(printf "\e[1;31m") \
        LESS_TERMCAP_md=$(printf "\e[1;31m") \
        LESS_TERMCAP_me=$(printf "\e[0m") \
        LESS_TERMCAP_se=$(printf "\e[0m") \
        LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
        LESS_TERMCAP_ue=$(printf "\e[0m") \
        LESS_TERMCAP_us=$(printf "\e[1;32m") \
            man "$@"
}


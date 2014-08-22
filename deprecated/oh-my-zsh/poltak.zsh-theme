if [ $UID -eq 0 ]; then
  UCOLOUR="red";
else
  UCOLOUR="green";
fi

function ssh_connection() {
  if [[ -n $SSH_CONNECTION ]]; then
    echo "%{$fg_bold[blue]%}(ssh) "
  fi
}

local ret_status="%(?:%{$fg[green]%}:%{$fg[red]%})%?%{$reset_color%}"

# user@host: $cwd
# [0] %
PROMPT=$'\n$(ssh_connection)%{$fg[$UCOLOUR]%}%n%{$reset_color%}@%{$fg[cyan]%}%m%{$reset_color%}: %{$fg_bold[magenta]%}%~\
%{$reset_color%}[${ret_status}]%{$reset_color%} %# '

# Show time on the right prompt.
RPROMPT='%{$fg[cyan]%}%D{%H:%M}%{$reset_color%}'

ZSH_THEME_PROMPT_RETURNCODE_PREFIX="%{$fg_bold[red]%}"

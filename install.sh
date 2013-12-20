#!/bin/bash
# Simple install script to create symlinks to each of these dotfiles in the 
# appropriate directories.

usage() {
  echo "usage: install.sh [--janus]" >&2
  exit 1
}

# Deal with possible flags.
case $# in
  0)
    ;;
  1)
    [[ "$1" != "--janus" ]] && usage
    janus=1
    ;;
  *)
    usage
    ;;
esac


# Install non-OS X specific dotfiles on non-OS X systems.
if [[ "$(uname)" != "Darwin" ]]; then
  # Install misc dotfiles.
  ln -s ${PWD}/.{Xresources,xbindkeysrc} ~/
  # Install i3wm related configs.
  ln -s ${PWD}/i3wm/.{i3,i3status.conf} ~/
fi

# Install misc dotfiles.
ln -s ${PWD}/.{gitconfig,rtorrent.rc,screenrc,tmux.conf} ~/

# Install vim dotfiles.
if [[ -z $janus ]]; then
  # If janus flag is not specified.
  ln -s ${PWD}/vim/.{vim,vimrc} ~/
else
  # If janus flag is specified.
  ln -s ${PWD}/vim/janus/.{gvimrc.after,vimrc.after} ~/
fi

# Install Z shell dotfiles.
ln -s ${PWD}/zsh/.{zsh,zshrc,zprofile} ~/
ln -s ${PWD}/zsh/poltak.zsh-theme ~/.oh-my-zsh/themes/

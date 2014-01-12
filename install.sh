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

# # #

# Install non-OS X specific dotfiles on non-OS X systems.
if [[ "$(uname)" != "Darwin" ]]; then
  # Install misc dotfiles.
  ln -s ${PWD}/.{Xresources,xbindkeysrc} ~/
  # Install i3wm related configs.
  ln -s ${PWD}/i3wm/.{i3,i3status.conf} ~/
fi

# # #

# Install misc dotfiles.
ln -s ${PWD}/.{gitconfig,rtorrent.rc,screenrc,tmux.conf} ~/

# # #

# Install vim dotfiles.
if [[ -z $janus ]]; then
  # If janus flag is not specified.
  ln -s ${PWD}/vim/.{vim,vimrc} ~/
else
  # If janus flag is specified.
  ln -s ${PWD}/vim/janus/.{gvimrc.after,vimrc.after} ~/
fi

# # #

# Install Z shell dotfiles.
ln -s ${PWD}/zsh/.{zsh,zshrc,zprofile} ~/
ln -s ${PWD}/zsh/poltak.zsh-theme ~/.oh-my-zsh/themes/

# # #

# Because OS X is special.
if [[ "$(uname)" != "Darwin" ]]; then
  SUB_TEXT_DIR="${HOME}/.config/sublime-text-2"
else
  SUB_TEXT_DIR="${HOME}/Library/Application Support/Sublime Text 2"
fi

# Check and backup original user config.
if [[ -f "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings" ]]; then
  mv "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings" \
    "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings.orig"
fi

# Install sublime text 2 user config.
ln -s "${PWD}/sublimetext/Preferences.sublime-settings.user" \
  "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings"

# Check and backup original default config.
if [[ -f "${SUB_TEXT_DIR}/Packages/Default/Preferences.sublime-settings" ]]; then
  mv "${SUB_TEXT_DIR}/Packages/Default/Preferences.sublime-settings" \
    "${SUB_TEXT_DIR}/Packages/Default/Preferences.sublime-settings.orig"
fi

# Install sublime text 2 default config.
ln -s "${PWD}/sublimetext/Preferences.sublime-settings.default" \
  "${SUB_TEXT_DIR}/Packages/Default/Preferences.sublime-settings"

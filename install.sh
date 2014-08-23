#!/bin/bash
# Simple install script to create symlinks to each of these dotfiles in the 
# appropriate directories.

usage() {
  echo "usage: install.sh [--deprecated]" >&2
  exit 1
}

# Deal with possible flags
case $# in
  0)
    ;;
  1)
    [[ "$1" != "--deprecated" ]] && usage
    deprecated=1
    ;;
  *)
    usage
    ;;
esac


# # #


# Because OS X is specia.
if [[ "$(uname)" != "Darwin" ]]; then
  SUB_TEXT_DIR="${HOME}/.config/sublime-text-3"
else
  SUB_TEXT_DIR="${HOME}/Library/Application Support/Sublime Text 3"
fi

# Check and backup original user config
if [[ -f "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings" ]]; then
  mv "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings" \
    "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings.orig"
fi

# Install ST3 config
ln -s "${PWD}/ST3Preferences.sublime-settings" \
  "${SUB_TEXT_DIR}/Packages/User/Preferences.sublime-settings"

# Install vim config
ln -s ${PWD}/vimrc ~/.vimrc

# Install Z shell configs
ln -s ${PWD}/zshrc ~/.zshrc
ln -s ${PWD}/zprofile ~/.zprofile

# Install misc dotfiles
ln -s ${PWD}/gitconfig ~/.gitconfig
ln -s ${PWD}/tmux.conf ~/.tmux.conf


# # #


# Install deprecated files if requested
if [[ -n $deprecated ]]; then
  DIR=${PWD}/deprecated

  # Install X11 app configs 
  ln -s ${DIR}/Xresources ~/.Xresources
  ln -s ${DIR}/xbindkeysrc ~/.xbindkeysrc

  # Install i3wm related configs
  ln -s ${DIR}/i3wm/i3 ~/.i3
  ln -s ${DIR}/i3wm/i3status ~/.i3status.conf

  # Install aria2 configs
  ln -s ${DIR}/aria2.conf ~/.aria2.conf
  ln -s ${DIR}/aria2.torrent ~/.aria2.torrent


  # Install misc dotfiles
  ln -s ${PWD}/rtorrent.rc ~/.rtorrent.rc
  ln -s ${PWD}/screenrc ~/.screenrc
  ln -s ${PWD}/pentadactylrc ~/.pentadactylrc
fi


# # #


# Instruct user to install difficult configs manually
echo "Please manually install intellij.jar, bettertouchtool.conf (if OS X), and oh-my-zsh configs"

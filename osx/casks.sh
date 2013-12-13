#!/usr/bin/env bash
# Script to install phinze's homebrew-cask modification.
# Extensively based on mathiasbynen/dotfiles/.cask script.

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

installcask dropbox
installcask firefox
installcask google-chrome
installcask iterm2
installcask macvim
installcask sublime-text
installcask the-unarchiver
installcask vlc
installcask flux
installcask skype
installcask monolingual
installcask disk-inventory-x
installcask filezilla
installcask nosleep
installcask android-file-transfer
installcask appcleaner

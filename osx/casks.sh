#!/usr/bin/env bash
# Script to install phinze's homebrew-cask modification.
# Extensively based on mathiasbynen/dotfiles/.cask script.

# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
	brew cask install "${@}" 2> /dev/null
}

installcask alfred
installcask android-file-transfer
installcask appcleaner
installcask caffeine
installcask disk-inventory-x
installcask dropbox
installcask filezilla
installcask firefox
installcask flux
installcask google-chrome
installcask iterm2
installcask middleclick
installcask mou
installcask monolingual
installcask nosleep
installcask skype
installcask sublime-text
installcask the-unarchiver
installcask vlc

#!/usr/bin/env bash

#install OSX dependencies
brew install git curl tmux node cmake brew ack tree autojump macvim
brew cask install iterm2

# Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
brew install pyenv-virtualenv

brew
# iperl dependencies
# brew install zeromq libmagic

# gnu tools:
brew install coreutils
# brew tap homebrew/dupes 
# brew tap homebrew/science
# brew install transpose
# brew install binutils diffutils gawk wget gzip screen watch gnutls
# brew install ed --with-default-names
# brew install findutils --with-default-names
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install grep --with-default-names
# brew install wdiff --with-gettext

# other
# brew install jq

# OSX specific stuff
wget https://www.iterm2.com/utilities/imgcat -P ~/.local/bin
chmod +x ~/.local/bin/imgcat


# Install YouCompleteMe
~/.config/nvim/plugged/YouCompleteMe/install.py --all

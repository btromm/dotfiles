#!/bin/zsh

# Install XCode
echo "Installing commandline tools..."
xcode-select --install

# Homebrew
## Install
echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Taps
brew tap homebrew/cask-fonts

## Formulae
### Essentials
echo "Installing AeroSpace (window manager)"
brew install --cask nikitabobko/tap/aerospace

### Terminal
echo "Installing terminal things (nvim, starship, etc)"
brew install neovim
brew install starship
brew install zsh-autosuggestion
brew install zsh-fast-syntax-highlighting
brew install zoxide #cd replacement
brew install exa #ls replacement

### Apps
brew install --cask alfred
brew install --cask spotify

### Fonts
echo "Installing fonts"
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew insatll --cask font-fira-code

# Python
echo "Installing python & packages"
curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh | sh
source $HOME/.zshrc
conda install matplotlib
conda install jupyterlab

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.aerospace.toml ~/.aerospace.toml

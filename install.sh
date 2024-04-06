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
brew tap FelixKratz/formulae

## Formulae
### Essentials
brew install sketchybar
brew install borders
brew install yabai

### Terminal
brew install neovim
brew install starship
brew install zsh-autosuggestion
brew install zsh-fast-syntax-highlighting
brew install zoxide
brew install exa #ls replacement
### Apps
brew install --cask alfred
brew install --cask spotify

### Fonts
brew install --cask sf-symbols
brew install --cask font-hack-nerd-font
brew insatll --cask font-fira-code
curl -L https://gtihub.com/kvndrsslr/sketchybar-app-font/releases-download/v2.0.5/sketchybar-app-font.ttf -o $HOME/Library/Fonts/sketchybar-app-font.ttf

# Python
echo "Installing python & packages"
curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh | sh
source $HOME/.zshrc
conda install matplotlib
conda install jupyterlab

# Start services
brew services start yabai
brew services start borders
brew services start sketchybar

csrutil status
echo "(optional) Disable SIP for advanced yabai features/"
echo "(optional) Add sudoer manually:\n '$(whoamai) ALL= (root) NOPASSWD: sha256:$(shasum -a 256 $(which yabai) | awk "{print \$1;}") $(which yabai) --load-sa' to '/private/etc/sudoers.d/yabai'"
echo "Installation complete...\n"

ln -s ~/.dotfiles/.vimrc ~/.vimrc
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/yabai/.yabairc ~/.yabairc
mkdir -p ~/.config/sketchybar
mkdir -p ~/.config/sketchybar/plugins
mkdir -p ~/.config/sketchybar/items
cp ~/.dotfiles/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarrc
cp ~/.dotfiles/sketchybar/plugins/* ~/.config/sketchybar/plugins/
cp ~/.dotfiles/sketchybar/items/* ~/.config/sketchybar/items/

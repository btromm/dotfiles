#!/bin/zsh

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

## Formulae
### Essentials
#echo "Installing AeroSpace (window manager)"
#brew install --cask nikitabobko/tap/aerospace

### Terminal
echo "Installing terminal things (kitty nvim, starship, etc)"
brew install --cask kitty
brew install neovim
brew install starship
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
brew install zoxide #cd replacement
brew install eza #ls replacement
brew install fzf # super fast fuzzy finder
brew tap FelixKratz/formulae

### Apps
echo "Installing apps..."
brew install --cask raycast
brew install --cask spotify
brew install --cask obsidian
brew install --cask visual-studio-code

### Fonts
echo "Installing fonts..."
brew install --cask sf-symbols
brew install --cask font-fira-code
brew install --cask font-jetbrains-mono-nerd-font

# Python
echo "Bootstrapping Miniforge..."
curl https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-MacOSX-arm64.sh | sh
source $HOME/.zshrc

echo "Symlinking config files..."
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/.aerospace.toml ~/.aerospace.toml
ln -s ~/.dotfiles/alacritty ~/.config/alacritty
ln -s ~/.dotfiles/neofetch ~/.config/neofetch
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/kitty ~/.config/kitty

echo "Done!"

#!/bin/zsh

echo "Installing brew..."
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew analytics off

### Terminal
echo "Installing terminal things (kitty nvim, starship, etc)"
brew install --cask ghostty
brew install starship
brew install zsh-autosuggestions
brew install zsh-fast-syntax-highlighting
brew install zoxide #cd replacement
brew install eza #ls replacement
brew install fzf # super fast fuzzy finder

### Apps
echo "Installing apps..."
brew install --cask spotify
brew install --cask obsidian
brew install --cask visual-studio-code
brew install --cask zed

### Fonts
echo "Installing fonts..."
brew install --cask sf-symbols
brew install --cask font-jetbrains-mono-nerd-font
brew install --cask font-fira-code

echo "Symlinking config files..."
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/nvim ~/.config/nvim
ln -s ~/.dotfiles/sldl ~/.config/sldl
ln -s ~/.dotfiles/ghostty/config "~/Library/Application\ Support/com.mitchellh.ghostty/config"

echo "Done!"

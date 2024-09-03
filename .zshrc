# my zshrc. it's messy right now.

## Aliases
alias g="git clone"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push"
alias bi="brew install"
alias mb="/Applications/MATLAB_R2023b.app/bin/matlab -nodesktop -nosplash"
alias ls="eza --icons --git -a"
alias cd="z"
alias nf="neofetch"

# Starship
export STARSHIP_CONFIG=~/.dotfiles/starship/starship.toml
eval "$(starship init zsh)"

# Spicetify
export PATH=$PATH:/Users/myco/.spicetify
    
# ZSH utils
#source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
#source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"

# Init ruby
eval "$(rbenv init - zsh)"

neofetch
echo 'stay focused :)'
#cat .art


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/myco/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/myco/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/myco/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/myco/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


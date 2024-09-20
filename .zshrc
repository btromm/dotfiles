# mycelial ~~~

# Aliases
alias g="git clone"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push"
alias g = "git pull"
alias ls="eza --icons --git -a"
alias cd="z"
alias vim="nvim"

export STARSHIP_CONFIG=~/.dotfiles/starship/starship.toml
eval "$(starship init zsh)"

# ZSH UTILS
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
unset ZSH_AUTOSUGGEST_USE_ASYNC 

# RUBY
eval "$(rbenv init - zsh)"

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




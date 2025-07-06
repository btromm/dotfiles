# mycelial ~~~

# Aliases
alias g="git clone"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push"
alias gpu="git pull"
alias ls="eza --icons --git -a"
alias cd="z"
alias vim="nvim"

export OLLAMA_ORIGINS=moz-extension://*,chrome-extension://*,safari-web-extension://*
export STARSHIP_CONFIG=~/.dotfiles/starship/starship.toml
export PATH=$PATH:/Applications/MATLAB_R2024b.app/bin
eval "$(starship init zsh)"

# ZSH UTILS
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
unset ZSH_AUTOSUGGEST_USE_ASYNC 
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#928374,bold,underline"

# RUBY
eval "$(rbenv init - zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/homebrew/Caskroom/miniforge/base/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh" ]; then
        . "/opt/homebrew/Caskroom/miniforge/base/etc/profile.d/conda.sh"
    else
        export PATH="/opt/homebrew/Caskroom/miniforge/base/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


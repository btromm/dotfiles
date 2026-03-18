# mycelial ~~~

# Aliases
alias g="git clone"
alias gc="git commit -m"
alias ga="git add"
alias gp="git push"
alias gpu="git pull"
alias ls="eza --icons --git -a -s modified -r"
if [[ -o interactive ]]; then
    alias cd="z"
fi
alias f="fortune"
alias uvi="uv venv && source .venv/bin/activate && uv pip install -r ~/base-uv.txt"
alias uva="source .venv/bin/activate"
alias cc="claude --dangerously-skip-permissions"
alias occ="cd ~/Documents/Obsidian/ && cc"

export STARSHIP_CONFIG=~/.dotfiles/starship/starship.toml
eval "$(starship init zsh)"

# ZSH UTILS
source /opt/homebrew/opt/zsh-fast-syntax-highlighting/share/zsh-fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(zoxide init zsh)"
unset ZSH_AUTOSUGGEST_USE_ASYNC 
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#928374,bold,underline"

# RUBY
eval "$(rbenv init - zsh)"


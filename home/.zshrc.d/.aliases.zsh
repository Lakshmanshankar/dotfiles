
## User aliases
alias c="clear"
alias e="exit"
alias vi="nvim"
alias ls="lsd"
alias cx="codex"

alias lg="lazygit"
alias fd="fdfind"

alias cg="git clone"
alias vic="nvim ." 
alias ef="fd --type f --hidden --exclude .git | fzf-tmux | xargs nvim"
alias pdv="fd --type f --hidden --exclude .pdf | fzf-tmux | xargs evince"

# Global aliases
alias -g L="| less"
alias -g H="| head"
alias -g C="| wl-copy"
alias -g T="| tail"
alias -g G="| rg"
alias -g V="| vi"
alias -g J="jnv"
alias -g S="| source"

alias -s json="jq"
alias -s md="bat"

alias ifwatch="sudo sysctl fs.inotify.max_user_watches=131070 && sudo sysctl -p"
alias "i"="history | rg --no-heading '.*' | fzf --ansi --preview='echo {}'"
alias bat='bat --theme="Catppuccin Mocha"'
alias fed='fzf --preview "bat --style=numbers --color=always --line-range=:500 {}" --bind "enter:execute(nvim {})"'
alias alias-help="cat $HOME/.zshrc.d/.aliases.zsh | fzf"

# Laptop keyboard issues:
disable_builtin_keyboard() {
    echo 1 | sudo tee /sys/class/input/event4/device/inhibited > /dev/null
    echo "Built-in keyboard disabled"
}
enable_builtin_keyboard() {
    echo 0 | sudo tee /sys/class/input/event4/device/inhibited > /dev/null
    echo "Built-in keyboard enabled"
}



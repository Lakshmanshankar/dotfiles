
## User aliases
alias c="clear"
alias e="exit"
alias vi="nvim"
alias ls="lsd"

alias lg="lazygit"
alias fd="fdfind"

alias cg="git clone"
alias vic="nvim ." 
alias ef="fd --type f --hidden --exclude .git | fzf-tmux | xargs nvim"
alias pdv="fd --type f --hidden --exclude .pdf | fzf-tmux | xargs evince"
alias fdiff="./diff.sh"

alias ifwatch="sudo sysctl fs.inotify.max_user_watches=131070 && sudo sysctl -p"
alias "i"="history | rg --no-heading '.*' | fzf --ansi --preview='echo {}'"
alias bat='bat --theme="Catppuccin Mocha"'
alias fed='fzf --preview "bat --style=numbers --color=always --line-range=:500 {}" --bind "enter:execute(nvim {})"'
alias alias-help="cat /home/codevantage/.zshrc.d/.aliases.zsh | fzf"



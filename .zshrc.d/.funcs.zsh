fshow() {
  git log --graph --color=always \
    --format="%C(auto)%h%d %s %C(black)%C(bold)%cr" "$@" |
  fzf --ansi --no-sort --reverse --tiebreak=index --bind=ctrl-s:toggle-sort \
    --bind "ctrl-m:execute:
              (grep -o '[a-f0-9]\{7\}' | head -1 |
              xargs -I % zsh -c 'git show --color=always % | less -R') << 'FZF-EOF'
              {}
FZF-EOF"
}

logshow() {
    cat -n $1 | fzf --reverse --no-sort --tiebreak=index \
                    --bind "ctrl-m:execute:echo {} | grep -Eo "[0-9]+" | head -n 1 | xargs -Ireplace less -N +replaceg $1"
}

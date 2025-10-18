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


## Package helper 
pnpm-help() {
  script_name=$(cat package.json | sed -n '/\"scripts\"/,/\}/p' | sed '1d;$d' | sed 's/^[ \t]*"//g' | sed 's/"://g' | fzf --height 40% --reverse --preview 'echo "pnpm run {}"' --preview-window=up:1)
  
  if [ ! -z "$script_name" ]; then
    echo -n "pnpm run $script_name" | pbcopy  
    # For Linux, use: echo -n "pnpm run $script_name" | xclip -selection clipboard
    
    read -p "Command copied to clipboard. Run it? (y/n): " choice
    case "$choice" in 
      y|Y ) pnpm run "$script_name" ;;
      * ) echo "Command not executed. You can paste it from your clipboard." ;;
    esac
  fi
}


fcompare() {
  local files=$(fzf --multi \
    --preview 'bat --color=always --style=numbers {}' \
    --preview-window=right:60%:wrap \
    --prompt="🔍 Select two files to compare: " \
    --height=60% \
    --border=rounded \
    --header='TAB to select | ENTER to confirm' \
    | xargs)
  
  local count=$(echo "$files" | wc -w)
  
  if [ $count -eq 2 ]; then
    echo "✨ Comparing files..."
    colordiff -y $files | bat \
      --paging=always \
      --language=diff \
      --theme="Catppuccin Mocha" \
      --style=numbers
  elif [ $count -eq 0 ]; then
    echo "No files selected. Aborted."
  else
    echo "Please select exactly two files (you selected $count)."
  fi
}

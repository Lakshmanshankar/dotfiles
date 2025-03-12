pnpm-run() {
  script_name=$(cat package.json | sed -n '/\"scripts\"/,/\}/p' | sed '1d;$d' | sed 's/^[ \t]*"//g' | sed 's/"://g' | fzf --height 40% --reverse --preview 'echo "pnpm run {}"' --preview-window=up:1)
  
  if [ ! -z "$script_name" ]; then
    echo -n "pnpm run $script_name" | pbcopy  # This copies to clipboard on macOS
    # For Linux, use: echo -n "pnpm run $script_name" | xclip -selection clipboard
    
    read -p "Command copied to clipboard. Run it? (y/n): " choice
    case "$choice" in 
      y|Y ) pnpm run "$script_name" ;;
      * ) echo "Command not executed. You can paste it from your clipboard." ;;
    esac
  fi
}


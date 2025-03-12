!/bin/bash

files=$(fzf --multi --preview 'bat {}' --preview-window=right:60%:wrap --prompt="Select two files: " --height=60% | xargs)

if [ $(echo "$files" | wc -w) -eq 2 ]; then
  colordiff -y $files | bat --paging=always --language=diff --theme="Catppuccin Mocha"
else
  echo "Please select exactly two files."
fi

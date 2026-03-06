
export EDITOR=nvim
export VISUAL=nvim

autoload -Uz edit-command-line

# Bind to Ctrl+E 
zle -N edit-command-line
bindkey '^e' edit-command-line
bindkey '^[e' edit-command-line # alt+e

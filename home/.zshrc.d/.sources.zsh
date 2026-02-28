# ---- NIX ----
export PATH="$HOME/.nix-profile/bin:$PATH"

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/kitty.app/bin/:$PATH"

# FOR TMUX 
export LANG=en_IN.UTF-8
export LANGUAGE=en_IN:en
export LC_ALL=en_IN.UTF-8

eval "$(zoxide init  --cmd cd zsh)"
eval "$(starship init zsh)"

source <(fzf --zsh)

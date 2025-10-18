# export PATH="$HOME/scripts:$PATH"

# ---- NIX WAY
#
export PATH="$HOME/.nix-profile/bin:$PATH"

# --- END OF SOURCE --- NEW


# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" 
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/kitty.app/bin/:$PATH"

# bun
# [ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun"
# export BUN_INSTALL="$HOME/.bun"
# export PATH="$BUN_INSTALL/bin:$PATH"
# export PATH="/usr/local/bin/:$PATH"

# export PNPM_HOME="$HOME/.local/share/pnpm"
# case ":$PATH:" in
#   *":$PNPM_HOME:"*) ;;
#   *) export PATH="$PNPM_HOME:$PATH" ;;
# esac

# GO
# export PATH=$PATH:/usr/local/go/bin

# FOR TMUX 
export LANG=en_IN.UTF-8
export LANGUAGE=en_IN:en
export LC_ALL=en_IN.UTF-8

eval "$(zoxide init  --cmd cd zsh)"
# alias cd=z
eval "$(starship init zsh)"

export PATH="$HOME/scripts:$PATH"

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin:$PATH"

export PATH="$HOME/.local/kitty.app/bin:$PATH"
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u

eval "$(zoxide init  --cmd cd zsh)"

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun" # Auto completions
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

eval "$(starship init zsh)"
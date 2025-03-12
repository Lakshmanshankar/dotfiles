export PATH="$HOME/scripts:$PATH"

# export DENO_INSTALL="/home/codevantage/.deno"
# export PATH="$DENO_INSTALL/bin:$PATH"

export PATH="/home/codevantage/.deno/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export ZSH="$HOME/.oh-my-zsh"
source $ZSH/oh-my-zsh.sh

export PATH="$HOME/.local/bin:$PATH"
#
# export PATH="$HOME/.local/kitty.app/bin:$PATH"
# fpath=(~/.zsh $fpath)
# autoload -Uz compinit
# compinit -u

eval "$(zoxide init  --cmd cd zsh)"

[ -s "$HOME/.bun/_bun" ] && source "$HOME/.bun/_bun" # Auto completions
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH="/usr/local/bin/:$PATH"

export PNPM_HOME="$HOME/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac


# FOR TMUX 
export LANG=en_IN.UTF-8
export LANGUAGE=en_IN:en
export LC_ALL=en_IN.UTF-8

export PATH=$PATH:/usr/local/go/bin
eval "$(starship init zsh)"

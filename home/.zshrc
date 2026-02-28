# Load oh my zsh first
source "$HOME/.zshrc.d/.ohMyZsh.zsh"


source "$HOME/.zshrc.d/.aliases.zsh"
source "$HOME/.zshrc.d/.sources.zsh"
source "$HOME/.zshrc.d/.funcs.zsh"

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# History settings
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000

# Remove duplicates
setopt HIST_IGNORE_ALL_DUPS    # Don't record duplicate entries
setopt HIST_FIND_NO_DUPS       # Don't display duplicates when searching
setopt HIST_SAVE_NO_DUPS       # Don't save duplicates

# Optional: Share history between sessions
setopt SHARE_HISTORY           # Share history between all sessions
setopt APPEND_HISTORY          # Append to history file
setopt INC_APPEND_HISTORY      # Write to history file immediately

# bun completions
# [ -s "/home/lakshman/.bun/_bun" ] && source "/home/lakshman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

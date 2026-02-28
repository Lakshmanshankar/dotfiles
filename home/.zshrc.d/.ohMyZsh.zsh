# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

source $ZSH/oh-my-zsh.sh

HYPHEN_INSENSITIVE="true"

[[ -f "$HOME/.nix-profile/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh" ]] &&
    source "$HOME/.nix-profile/share/zsh-autocomplete/zsh-autocomplete.plugin.zsh"

[[ -f "$HOME/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" ]] &&
    source "$HOME/.nix-profile/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"

[[ -f "$HOME/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh" ]] &&
    source "$HOME/.nix-profile/share/zsh-autosuggestions/zsh-autosuggestions.zsh"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
  fzf
  zoxide
)

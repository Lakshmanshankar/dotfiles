# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi


# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/lakshman/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# starship conf

 # ZSH_THEME="starship"

 # export PATH=$PATH:/snap/bin
 # eval "$(starship init zsh)"
 # STARSHIP_CONFIG=~/.config/starship.toml
 #

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(git colored-man-pages)

# Set the prompt style with a space
POWERLEVEL9K_PROMPT_ON=always
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=" "
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh" 

## User aliases
alias c="clear"
alias e="exit"
alias vi="nvim"
# alias arrange="python3 /home/lakshman/scripts/fileorganise.py"
alias ls="lsd"
alias cat="bat"
alias vid="/home/lakshman/.local/bin/neovide"

alias lg="lazygit"
alias ld="lazydocker"

alias pn="pkill nvim"
# alias pre="sh ~/scripts/pyrun.sh"
alias cr="cargo run"
alias dr="deno run"
alias mate="tldr"
alias cg="git clone"
alias pidof="sudo lsof -t -i:3000"
alias vic="vi ." # this can also be something like nvim . because i aliased vi = nvim so  get the point
alias n="vi ." # this can also be something like nvim . because i aliased vi = nvim so  get the point
alias ef="fd --type f --hidden --exclude .git | fzf-tmux | xargs nvim"
alias pdv="fd --type f --hidden --exclude .pdf | fzf-tmux | xargs evince"


# load my scripts folder here
export PATH="$HOME/scripts:$PATH"

# Deno stuff
export DENO_INSTALL="/home/lakshman/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"
export PATH="/home/lakshman/.local/kitty.app/bin:$PATH"
fpath=(~/.zsh $fpath)
autoload -Uz compinit
compinit -u
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
# bun completions
[ -s "/home/lakshman/.bun/_bun" ] && source "/home/lakshman/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

export MAVEN_HOME=/opt/apache-maven-3.6.3/bin
export MAVEN_HOME=/opt/apache-maven-3.6.3/bin  export PATH=${MAVEN_HOME}:${PATH}

neofetch
export GRADLE_HOME=/opt/gradle/gradle-7.4.2                                                                                                                        

export PATH=${GRADLE_HOME}/bin:${PATH}^



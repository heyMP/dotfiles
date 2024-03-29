# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
ZSH_CUSTOM=$HOME/dotfiles/zsh-custom

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
#
# time that oh-my-zsh is loaded.
ZSH_THEME="dracula"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
# plugins=(git docker docker-compose vi-mode z)

# User configuration

export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# Source global definitions
# if [ -f ~/.bashrc ]; then
# 	. ~/.bashrc
# fi
# Source global definitions
if [ -f ~/.bash_profile ]; then
	. ~/.bash_profile
fi

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

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Display the hostname
HOSTNAME=$HOST

# Fix the color in tmux
export TERM=xterm-256color
[ -n "$TMUX" ] && export TERM=screen-256color

# z
# Move next only if `homebrew` is installed
if command -v brew >/dev/null 2>&1; then
    # Load rupa's z if installed
    [ -f $(brew --prefix)/etc/profile.d/z.sh ] && source $(brew --prefix)/etc/profile.d/z.sh
    source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

# Keep computer awake for one hour
alias stayawake="caffeinate -u -t 3600"

# Archey, display specs
alias specs="archey"

# Weather
alias weather="curl http://wttr.in"

# Chrome
alias chrome-testing='open -a Google\ Chrome --args --disable-web-security'

# Mac
alias copypath="pwd | pbcopy"

# Mac
alias datetime="date +'%d-%m-%Y-%T'"

# Add Vim navigation to bash
bindkey '^W' forward-word
bindkey '^B' backward-word
bindkey '^H' backward-char
bindkey '^L' forward-char
bindkey '^A' beginning-of-line
bindkey '^E' end-of-line

# Add Vi mode
# bindkey -v

# control space to accept auto suggestion
bindkey '^ ' autosuggest-accept

# How to cycle through reverse-i-search in BASH?
# https://unix.stackexchange.com/questions/73498/how-to-cycle-through-reverse-i-search-in-bash
# stty -ixo

## test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# # Load NVM async so it doesn't slow down zsh
# # https://github.com/eudika/prezto/commit/40100534c1ab5e2303c598d7b4c0ac3cad689bfe

export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
path=("$NVM_DIR/versions/node/$(ls $NVM_DIR/versions/node | sort -V | tail -n1)/bin/": $path)
# Load NVM lazily.
nvm() {
  unset nvm;
  # This line is very slow.
  source "$NVM_DIR/nvm.sh"
  nvm "$@"
}

# # place this after nvm initialization!
# # https://github.com/nvm-sh/nvm#zsh
# autoload -U add-zsh-hook
# load-nvmrc() {
#   local node_version="$(nvm version)"
#   local nvmrc_path="$(nvm_find_nvmrc)"

#   if [ -n "$nvmrc_path" ]; then
#     local nvmrc_node_version=$(nvm version "$(cat "${nvmrc_path}")")

#     if [ "$nvmrc_node_version" = "N/A" ]; then
#       nvm install
#     elif [ "$nvmrc_node_version" != "$node_version" ]; then
#       nvm use
#     fi
#   elif [ "$node_version" != "$(nvm version default)" ]; then
#     echo "Reverting to nvm default version"
#     nvm use default
#   fi
# }
# load-nvmrc


# bun completions
[ -s "/Users/michael/.bun/_bun" ] && source "/Users/michael/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

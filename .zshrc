# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/pdouady/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="pdouady"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git ssh-agent zsh-autosuggestions)

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

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

autoload -U compinit && compinit   # load + start completion
zstyle ':completion:*:directory-stack' list-colors '=(#b) #([0-9]#)*( *)==95=38;5;12'

# vi mode ?
#bindkey -v
export KEYTIMEOUT=1

export GOROOT=/usr/local/go
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$GOROOT/bin:$GOPATH/bin:$GOBIN:$PATH
export PATH=/usr/local/kafka/bin:$PATH
export PATH=~/anaconda3/bin:$PATH

alias la='lsd -la --icon=never'
alias ls='lsd --icon=never'
alias lt='lsd --icon=never --tree'
alias lint='goimports -w . && gofmt -w -s . && golint -min_confidence 0.21 | grep -v "_gen.go"' 
alias lbctest='goimports -w . && gofmt -w -s . && docker-compose up test && print -n "docker-compose down (yes: enter | no: Ctrl-C) ? " && read &&  docker-compose down'
alias lbcteststrict='goimports -w . && gofmt -w -s . && lbcgt ci quality && lbcgt ci integration'
alias python=python3
alias cd..='cd ..'
alias nano="echo 'use vi >:('"
alias cdavro='cd /home/pdouady/go/src/github.schibsted.io/leboncoin/go/common/avroschemas/schemas'
alias cdsmart='cd ~/go/src/github.schibsted.io/leboncoin/go/domains/ads/smartsearch'
alias cdkatalog='cd ~/go/src/github.schibsted.io/leboncoin/go/domains/ads/katalog'
alias cdlocal='cd ~/go/src/localElastic'
alias cdgo='cd ~/go/src/github.schibsted.io/leboncoin/go/domains/ads'
alias cdgoo='cd ~/go/src/github.schibsted.io/leboncoin/go'
alias cdkafka='cd /usr/local/kafka' 
alias cassh="docker run --net host -it -u $(id -u) -e HOME=${HOME} -w ${HOME} -v ${HOME}/.ssh:${HOME}/.ssh -v ${HOME}/.cassh:${HOME}/.cassh:ro --rm leboncoin/cassh:latest"
alias json='jq'
alias mdopen='grip -b --user=Uriopass'
alias gitr='git-review -y'
timestamp() {
	date -d "@$1"
}
alias -s jpg="feh "
alias -s png="feh "
alias -s html="google-chrome "
eval $(thefuck --alias)

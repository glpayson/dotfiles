# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/lpayson/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="theunraveler"

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
plugins=(git colored-man-pages copydir dircycle dirpersist encode64 urltools vi-mode web-search lein mvn battery nyan rc pj)
 
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

# dir(s) containing projects, used by pj plugin
PROJECT_PATHS=(~/Prog/Work/ ~/Prog/Work/Scripts)

# auto_cd and cdpaths
setopt auto_cd
cdpath=($HOME/prog/work)

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
PATH="/Users/lpayson/apache-maven-3.3.9/bin:/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
PATH="/Users/lpayson/bin:${PATH}"
export PATH

source ~/vars/*

# dotfile versioning
# https://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/
# "Then we create an alias config which we will use instead of the regular git when we want to interact with our configuration repository."
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

# Use brew install vim
alias vim='/usr/local/bin/vim'

# Open or reload dotfiles
alias rcr='source ~/.zshrc'
alias rc='vim ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias tmux_conf='vim  ~/.tmux_conf'
alias tmux_confr='tmux source-file ~/.tmux_conf'

# Environment Variables
BLANKSPACE_LOCAL_RUN='true'
export BLANKSPACE_LOCAL_RUN

# These are for rr-web-services
export solr_env='production'
export aeskey='lvu2wsa6jmtc0d93xk8izr4yph5bnfqo'

# Quicker navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Misc dir Aliases 
alias work="cd ~/Prog/Work/"
alias nonwork="cd ~/Prog/Nonwork/"
alias desktop="cd ~/Desktop/"
alias temp='~/temp'
alias home='~'
alias instruct="cd ~/Documents/Instruct"
alias downloads="cd ~/Downloads"

# Misc Aliases
alias cl='clear'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
	colorflag="--color"
else # OS X `ls`
	colorflag="-G"
fi

# ls Aliases
alias ls="command ls ${colorflag}"
alias ll="ls"
alias l="ls -lF ${colorflag}" # all files, in long format
alias la="ls -laF ${colorflag}" # all files inc dotfiles, in long format
alias lsd='ls -lF ${colorflag} | grep "^d"' # only directories

# Auth token script
alias tokenus='token us | copy && date +"%T"'
alias tokeneu='token eu | copy && date +"%T"'
alias tokentest='token test | copy && date +"%T"'

# Motion gestures stopped working
alias reset_motion_gestures='killall Dock'

# Launch python SimpleHTTPServer in current dir
alias server="ifconfig | gsed -n '/en0:/{n;n;n;p}' | awk '{print \"Serving publicly at: \" \$2 \":8000\"}' && python -m http.server"

# pbcopy without newline
alias copy="tr -d '\n' | pbcopy"

# URL-encode strings
alias urlencode='python -c "import sys, urllib as ul; print ul.quote_plus(sys.argv[1]);"'

# Git Aliases
alias gs='git status '
alias gcb='git checkout -b '
alias gc='git checkout '
alias gp='git push origin '
alias gu='git pull origin '
alias gpom='git pull origin master'
alias ga='git add '
alias gaa='git add .'
alias got='git '
alias get='git '
alias clone='git clone'
alias gcom='git commit -m '

# Sprunge 
alias sprunge="curl -F 'sprunge=<-' http://sprunge.us"

# External IP
alias wanip='dig +short myip.opendns.com @resolver1.opendns.com'

# Weather
weather() {
    USAGE="USAGE: weather city_name"
    if [ "$#" -ne 1 ]; then
        echo $USAGE
        return
    fi
    curl wttr.in/$1
}

# base64 convenience functions
decode() {
	if [ "$1" = "-v" ]; then
		echo "$2" | base64 --decode | vim - 
	elif [ "$1" = "-c" ]; then
		echo "$2" | base64 --decode | perl -pe 'chomp if eof' | pbcopy
	elif [ "$1" = "-p" ]; then
		pbpaste | base64 --decode | perl -pe 'chomp if eof' | pbcopy
	else
		echo "$1" | base64 --decode 
	fi 
}

encode() {
	if [ "$1" = "-v" ]; then
		echo "$2" | base64 | vim - 
	elif [ "$1" = "-c" ]; then
		echo "$2" | base64 | perl -pe 'chomp if eof' | pbcopy
	elif [ "$1" = "-p" ]; then
		pbpaste | base64 --decode | perl -pe 'chomp if eof' | pbcopy
	else
		echo $1 | base64 
	fi 
}

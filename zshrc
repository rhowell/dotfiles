# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="garyblessington"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias v='reattach-to-user-namespace mvim -v'
alias tmux='tmux -2'
alias gs='git status'
alias gco='git checkout'
alias gc='git commit'
alias bower='noglob bower'
alias pi='cd ~/pi; qemu-system-arm -cpu arm1176 -m 256 -M versatilepb -no-reboot -serial stdio -append "root=/dev/sda2 panic=1 rootfstype=ext4 rw" -kernel kernel-qemu -hda 2014-09-09-wheezy-raspbian.img'
alias rpmls='rpm -q -filesbypkg'
alias gi='ghci-color'
alias doclean='docker rmi $(docker images -a -q); docker rm -f $(docker ps -a -q)'
alias docsh='docker run -ti `docker images -q | head -1` /bin/bash'
alias repl='lein clean && lein repl'
alias outdated='brew update && echo "\nOutdated:" && brew outdated'

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/Users/rhowell/bin:/Users/rhowell/Library/Android/sdk/platform-tools:$PATH"
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
# export SSH_KEY_PATH="~/.ssh/dsa_id"
export PATH=/usr/local/bin:$PATH

export PATH=/usr/local/sbin:$PATH

PERL_MB_OPT="--install_base \"/Users/rhowell/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/rhowell/perl5"; export PERL_MM_OPT;

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export EC2_HOME=/usr/local/ec2/ec2-api-tools-1.7.2.3 
export PATH=$PATH:$EC2_HOME/bin:/Users/rhowell/local/bin:~/.nimble/bin

export DEEPDIVE_HOME=/Users/rhowell/source/opc/deepdive
export LD_LIBRARY_PATH=$DEEPDIVE_HOME/lib/dw_mac/lib/protobuf/lib:$DEEPDIVE_HOME/lib/dw_mac/lib
export DYLD_LIBRARY_PATH=$DEEPDIVE_HOME/lib/dw_mac

# Extended blobbing, ex: ll **/*(.x) (recursive search for executable files
setopt extendedglob


export DOCKER_HOST=tcp://192.168.59.103:2376
export DOCKER_CERT_PATH=/Users/rhowell/.boot2docker/certs/boot2docker-vm
export DOCKER_TLS_VERIFY=1

# AWS Autocomplete
source /usr/local/share/zsh/site-functions/_aws

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"
ZSH_THEME="powerlevel10k/powerlevel10k"


# Path to your oh-my-zsh installation.
autoload -U colors && colors

export DEV="$HOME/dev"
export GOPATH="$HOME/dev/go"
export GOBIN="$GOPATH/bin"
export GO111MODULE=on
export AVANTO="$DEV/goAvanto"
export REPFABRIC="$DEV/RepFabric/"
export BACKOFFICE="$AVANTO/backoffice_graphql"
export SAAS="$AVANTO/backend-saas-records"
export MONOREPO="$AVANTO/backend-mono-repo"
#export GOROOT="/usr/local/go"

# Basic auto/tab Completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Edit Line in vim with ctrol-e
autoload edit-command line; zle -N edit-command-line
bindkey '^e' edit-command-line

# vi mode
bindkey -v
export KEYTIMEOUT=1
export UPDATE_ZSH_DAYS=13

ENABLE_CORRECTION="true"

plugins=(git
        zsh-autosuggestions
        zsh-syntax-highlighting
        )

#allow global npm install
export PATH=~/.npm-global/bin:$PATH

#fix android studio on bspwm
export _JAVA_AWT_WM_NONREPARENTING=1
export ANDROID_HOME=/home/tenhitokiri/Android/Sdk
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools

#alias act="sudo apt update && sudo apt upgrade && sudo apt autoremove"
alias act="sudo nala update && sudo nala upgrade && sudo nala autoremove"
alias dcu="sudo docker-compose up -d"
alias gc="git clone"
alias gs="git status"
alias gac="git add . && git commit -m"
alias dps="sudo docker ps"
alias yul="yarn upgrade --latest"
alias ls="lsd"
alias cat="bat"
alias vim="nvim"
alias stfu="eval `ssh-agent`"
alias stfu2="ssh-add"
alias myip="curl https://ipecho.net/plain ; echo" 
alias gam="git add . && git commit --amend --no-edit"
alias rmnodem="find . -name 'node_modules' -type d -prune -exec rm -rf '{}' + "
#Arreglar resoluciòn on la Vega
#alias xran="xrandr --output DVI-D-1 --mode 1920x1080 --rate 60.00 --output HDMI-1 --primary --mode 1680x1050 --rate 59.95 --right-of DVI-D-1" 
# Con la R9
#alias xran="xrandr --output HDMI-0 --primary --mode 1440x900 --rate 59.9 --output DVI-1  --mode 1920x1080 --rate 59.95 --right-of HDMI-0"
alias xran="xrandr  --output DVI-1 --mode 1600x1200 --rate 59.95 --primary --output HDMI-0 --mode 1280x960 --rate 59.9 --right-of DVI-1"

export PATH=$PATH:$GOBIN:$GOROOT/bin
source $ZSH/oh-my-zsh.sh
#neofetch

#android studio
export PATH=~/Android/sdk/platformtools:~/Android/sdk/tools:/opt/android-studio/bin:$PATH

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#starship prompt
eval "$(starship init zsh)"

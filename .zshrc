# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
autoload -U colors && colors
export ZSH="/home/tenhitokiri/.oh-my-zsh"

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

#ZSH_THEME="smt"
ZSH_THEME= "powerlevel10k/powerlevel10k"

export UPDATE_ZSH_DAYS=13

ENABLE_CORRECTION="true"

plugins=(git
        zsh-autosuggestions
        zsh-syntax-highlighting
        )

source $ZSH/oh-my-zsh.sh

alias act="sudo apt update && sudo apt upgrade && sudo apt autoremove"
alias dcu="sudo docker-compose up -d"
alias gc="git clone"
alias dps="sudo docker ps"
alias yul="yarn upgrade --latest"
#Arreglar resoluciòn Con la R9
alias xran="xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 59.94 --output DVI-1  --mode 1920x1080 --rate 59.95 --right-of HDMI-0"
alias x2="xrandr --output HDMI-0 --primary --mode 1920x1080 --rate 59.94 --scale 0.8x0.8 --output DVI-1  --mode 1920x1080 --rate 59.95 --left-of HDMI-0"
alias ls="lsd"
alias cat="bat"

#source ~/powerlevel10k/powerlevel10k.zsh-theme
source ~/.oh-my-zsh/custom/themes/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

neofetch

#            _
#    _______| |__  _ __ ___
#   |_  / __| '_ \| '__/ __|
#  _ / /\__ \ | | | | | (__
# (_)___|___/_| |_|_|  \___|
#

export ZSH="$HOME/.oh-my-zsh"
export HISTFILE=$ZSH/.zhistfile
#source ~/.profile

ZSH_THEME="bira"			# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
zstyle ':omz:update' mode auto		# update automatically without asking
DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"

# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)


source $ZSH/oh-my-zsh.sh

alias l="ls -Alh --group-directories-first"
alias ll="ls -Aw 80"
alias q="exit"
alias c="cd"
alias untar="tar -xzvf"
alias gs="git status"
alias ga="git add"
alias py="/usr/bin/python3"

alias cwww="cd /var/www/html"
alias szsh="source ~/.zshrc"
alias vzsh="vim ~/.zshrc"

alias nmap1="nmap -T4 -A -v"

alias shodan="chafa --stretch shodan.gif -w 3 --threads 1 -O 0 -c 16"

export PATH=$PATH:/usr/local/bin
export PATH=$PATH:$HOME/bin
export PATH=$PATH:$HOME/.local/bin
export PATH=$PATH:/System/Volumes/Data/Users/tristanfulford/go/bin

export LANG=en_AU.UTF-8
export LC_ALL=en_AU.UTF-8

rm -f ~/.wget-hsts
rm -f ~/.zcompdump*
rm -f ~/.sudo_as_admin_successful
rm -f ~/.lesshst

# environment specifics, like termux on smartphone
if [[ $OSTYPE == "darwin"* ]]
then
	alias l="gls -AGXlh --color --group-directories-first"
	echo darwin
fi

if [ $(tput cols) -lt 70 ]; then
	alias l="gls -A --color --group-directories-first"
	echo small screen
fi

autoload -U colors && colors
setopt promptsubst

# Idle timeout in seconds (300 = 5 minutes)
#TMOUT=600
# What to do on timeout
#trap 'reset; cmatrix -s; ls -Al;' SIGALRM

[[ $OSTYPE == "linux"* ]] && compinit -d $ZSH/.zcompdump


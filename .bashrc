# Old bashrc file. Need to add the new one.
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '



bindkey '\e[H'  beginning-of-line
bindkey '\e[F'  end-of-line

export PATH=$PATH:~/.local/kitty.app/bin
export PATH=$PATH:~/moltemplate/moltemplate
export PATH=$PATH:~/moltemplate/moltemplate/scripts

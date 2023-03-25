#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
GREEN="$(tput setaf 2)"
RESET="$(tput sgr0)"

PS1='\W > '

alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias l='ls -tr'
#alias update='pacman -Syu && reboot'
#alias cpd='cp $1 $2 && cd $2'
alias home='cd ~'
alias hdmi='xrandr --output HDMI2 --auto'
alias mnt='doas mount /dev/sda1 /media'
alias umnt='doas umount /dev/sda1'
alias fry='ssh pranayvenkatesh@fry.boisestate.edu'

alias jn='jupyter-notebook'
alias planckton='conda activate planckton'
alias morphct='conda activate morphct'

alias vpn='bash ~/.scripts/vpn.sh'
alias uvpn='warp-cli disconnect'
alias svpn='warp-cli status'

export PATH=$PATH:~/.local/kitty.app/bin
export PATH=$PATH:~/.packages/packmol/
export PATH='/home/pranay/.local/bin':"$PATH"
export PATH=$PATH:~/Downloads/packmol/
export PATH=$PATH:/usr/bin/
export PATH=$PATH:~/Downloads/ovito-basic-3.7.5-x86_64/bin/
export PATH=$PATH:~/Downloads/Discord/
export PATH=$PATH:~/.cargo/bin
export PATH=$PATH:~/cordless/
#export PATH=$PATH:/usr/local/bin/vmd
#export PATH=$PATH:/usr/local/lib/vmd/plugins/
#export PATH=$PATH:/usr/local/lib/vmd/plugins/include
#export PATH=$PATH:/usr/local/lib/vmd

export VOTCASHARE=/home/pranay/.miniconda3/pkgs/votca-2022-py39he7848a2_4/share/votca

#export PATH=$PATH:~/.packages/zulip-desktop/

#export LD_LIBRARY_PATH=$LD_LIBRARYPATH:/opt/cuda/lib64
export CHROME_DRIVER=$CHROME_DRIVER:~/chromedriver/src
#export CONDA_AUTO_ACTIVATE_BASE=false
export DRI_PRIME=1
#export VMDDIR=/usr/local/lib/vmd/plugins  
#export VMD_PLUGIN_INCLUDE_PATH=/usr/local/lib/vmd/plugins/include/
#export VMD_PLUGIN_MOLFILE_PATH=/usr/local/lib/vmd/plugins/LINUXAMD64/molfile/

# BEGIN_KITTY_SHELL_INTEGRATION
#if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/pranay/miniconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/pranay/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/pranay/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/pranay/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#. $HOME/psi4conda/etc/profile.d/conda.sh
#conda activate
. "$HOME/.cargo/env"
setxkbmap -option caps:escape

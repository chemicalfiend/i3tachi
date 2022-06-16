#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='\W\$ '


alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias l='ls -tr'
#alias update='pacman -Syu && reboot'
alias home='cd ~'
alias hdmi='xrandr --output HDMI2 --auto'
alias fry='ssh pranayvenkatesh@fry.boisestate.edu'

export PATH=$PATH:~/.local/kitty.app/bin
export PATH=$PATH:~/moltemplate/moltemplate
export PATH=$PATH:~/moltemplate/moltemplate/scripts
export PATH='/home/pranay/.local/bin':"$PATH"
export PATH=$PATH:/opt/cuda
export PATH=$PATH:~/Downloads/packmol/
export PATH=$PATH:/usr/bin/
export PATH=$PATH:~/Downloads/ovito-basic-3.7.5-x86_64/bin/
export PATH=$PATH:~/Downloads/Discord/
export LD_LIBRARY_PATH=$LD_LIBRARYPATH:/opt/cuda/lib64
export CHROME_DRIVER=$CHROME_DRIVER:~/chromedriver/src
#export CONDA_AUTO_ACTIVATE_BASE=false


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
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

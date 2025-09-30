#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

set -o vi
bind -m vi-insert "\C-l":clear-screen

export EDITOR=nvim

alias shut="shutdown -h now"

export QSYS_ROOTDIR="/home/marcman/.cache/paru/clone/quartus-free/pkg/quartus-free-quartus/opt/intelFPGA/24.1/quartus/sopc_builder/bin"

export PATH="~/.local/share/bin:$PATH"

export XDG_PICTURES_DIR="~/Pictures"


alias scan="scanimage --device-name='airscan:e0:Canon TS3500 series'   --mode Color   --resolution 300   -x 210 -y 297   --format=pnm | magick -density 75 -quality 30 -compress jpeg -"

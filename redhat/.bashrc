# .bashrc for redhat
# Author: Haoran Geng
# Link: https://github.com/exaithrg/dotfiles

# ubuntu style
# export PS1='\[\e[1;32m\]\u@\h \[\e[1;36m\]\W\[\e[m\]\$ '
# zsh style
export PS1='\[\e[1;32m\]BASH \[\e[1;36m\]\W\[\e[m\] \$ '

# Functions
function load() {
  if [ -f $1 ]; then
    source $1
  else
    echo "$1 not exist"
  fi
}

# global settings
if [ -f /etc/bashrc ]; then
    load /etc/bashrc
fi

if (! $prompt); then
  exit
fi

source /usr/edatools/setups/synopsys
# bash cannot source xx.csh
# source /usr/edatools/setups/innovus_setup.csh
source ~/.irun_env_setup

export LANG=C

export CADHOME=/usr/edatools
export LIC_DIR=$CADHOME/license
export CONF_DIR=$CADHOME/setups

# export CDS_LOAD_ENV=CWD
# export CDS=$CADHOME/INCISIVE152
# export CDS_LIC_FILE=$CADHOME/license/license.inc.dat
# export CDS_LIC_ONLY=1
# export CDS_AUTO_64BIT=ALL
# export CDS_ENABLE_VMS=1
# export PATH=$PATH:$CDS/bin:$CDS/tools/bin:$CDS/tools/vtools/vfault/bin
# export LD_LIBRARY_PATH=$CDS/tools/lib/64bit:$CDS/tools/lib

# WORKSPACE=`pwd`

#load $CONF_DIR/ic616
#load $CONF_DIR/ic617
load $CONF_DIR/ic617_ISR22
load $CONF_DIR/incisive152
# load $CONF_DIR/innovus152
load $CONF_DIR/mmsim2015
load $CONF_DIR/cal201404.bash
#load $CONF_DIR/cal2015
load $CONF_DIR/cal201903
load $CONF_DIR/stratus152
load $CONF_DIR/ansys181
load $CONF_DIR/synopsys
load $CONF_DIR/peakview
load $CONF_DIR/emx.bash
load $CONF_DIR/ext1910.bash

alias ic61="virtuoso&"
alias ..="cd .."
alias eda="cd /home/lvjingjing/WORK/EDA"
alias 55="cd /home/lvjingjing/WORK/PROJ_SMIC55"
alias 28="cd /home/lvjingjing/WORK/PROJ_TSMC28"
alias 011="cd /home/lvjingjing/WORK/PROJ_DBH011"
alias 65="cd /home/lvjingjing/WORK/PROJ_TSMC65_1P6M"
alias 018="cd /home/lvjingjing/WORK/PROJ_CSMC018_BCD"
alias 025="cd /home/lvjingjing/WORK/PROJ_CSMC025_BCD"
alias 40="cd /home/lvjingjing/WORK/PROJ_TSMC40LP_1P8M"
alias hl55="cd /home/lvjingjing/WORK/PROJ_HLMC55LP"
alias qrc1="calibre -query ./RUN_DIR/LVS_DIR/svdb < ./RUN_DIR/LVS_DIR/qrc_ywh/query_cmd"
alias qrc2="qrc -cmd ./RUN_DIR/LVS_DIR/qrc_ywh/qrc_cmd2.ccl"

# User specific aliases and function

if [ "$TERM" == "xterm" ]; then
    export TERM=xterm-256color
fi

if [ -f ~/.aliases ]; then
    # load ~/.aliases
    source ~/.aliases
fi

set -o vi
export EDITOR=vim

[[ -s /home/genghaoran/.autojump/etc/profile.d/autojump.sh ]] && source /home/genghaoran/.autojump/etc/profile.d/autojump.sh

# clear annoying useless infos
# like seafile or mobaxterm info
# clear
# source ~/.randomquotes


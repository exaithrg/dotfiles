# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
# export PS1='[\u@\h `pwd`]\$'
export PS1='\[\e[1;32m\]BASH \[\e[1;36m\]\W\[\e[m\] \$ '

alias gv="gvim"
alias g="gvim -p"
alias la="ls -a"
alias lla="ll -a"
alias ..="cd ../"
alias gt="/usr/bin/gnome-terminal --tab&"
cd() { builtin cd "$@" && ls; }

#=============================================================================================
#   Synopsys Tools
#=============================================================================================
export DVE_HOME=/home/synopsys/vcs-mx/O-2018.09-1
#export DVE_HOME=/home/synopsys/vcs/O-2018.09-SP2
#export DVE_HOME=/home/synopsys/vcs-mx/O-2018.09-SP2

export VCS_HOME=/home/synopsys/vcs-mx/O-2018.09-1
#export VCS_HOME=/home/synopsys/vcs/O-2018.09-SP2
#export VCS_HOME=/home/synopsys/vcs-mx/O-2018.09-SP2

export VERDI_HOME=/home/synopsys/verdi/Verdi_O-2018.09-SP2
export SCL_HOME=/home/synopsys/scl/2018.06
export DC_HOME=/home/synopsys/syn/O-2018.06-SP1
export LC_HOME=/home/synopsys/lc/O-2018.06-SP1
export SPYGLASS_HOME=/home/synopsys/SpyGlass-L2016.06/SPYGLASS_HOME/
export PT_HOME=/home/synopsys/pts/O-2018.06-SP1
export ICC2_HOME=/home/synopsys/icc2/O-2018.06-SP1
export SYNPLIFY_HOME=/home/synopsys/fpga/N-2018.03-SP1
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$VERDI_HOME/share/PLI/lib/LINUX64"
export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:$VERDI_HOME/share/PLI/IUS/LINUX64/boot"
#Synplify
PATH=$PATH:$SYNPLIFY_HOME/bin
alias synplify="synplify"

#PT
PATH=$PATH:$PT_HOME/bin
alias pt="pt_shell"

#ICC2
PATH=$PATH:$ICC2_HOME/bin
alias icc2="icc2_shell"

#DC
PATH=$PATH:$DC_HOME/bin
alias dc="dc_shell"
alias dv="design_vision"

#lib compile
PATH=$PATH:$LC_HOME/bin
alias lc="lc_shell"

#Spyglass
PATH=$PATH:$SPYGLASS_HOME/bin
alias spyglass="spyglass"


#Dve
PATH=$PATH:$DVE_HOME/gui/dve/bin
alias dve="dve -full64"

#VCS
PATH=$PATH:$VCS_HOME/bin
alias vcs="vcs"


#Verdi
PATH=$PATH:$VERDI_HOME/bin
alias verdi="verdi"

#scl
PATH=$PATH:$SCL_HOME/linux64/bin
export VCS_ARCH_OVERRIDE=linux

#SynopsysInstaller
PATH=$PATH:$SYNOP_INSTALL50_HOME
alias SYN_install="/home/synopsys/SynopsysInstaller_v5.0/setup.sh &"
#=============================================================================================
#   Candence Tools
#=============================================================================================
#source ~/cadence.bashrc

export CADHOME=/home/cadence
export MGC_HOME=/home/mentor/
export CDSHOME=$CADHOME/IC617
export INCISIVE_HOME=$CADHOME/INCISIVE152
export MMSIMHOME=$CADHOME/MMSIM151

export CALIBRE_HOME=$MGC_HOME/Calibre2015/aoi_cal_2015.2_36.27
export MGC_LICENSE_FILE=$MGC_HOME/license/license.dat
export MGC_CALIBRE_SCHEMATIC_SERVER=IC_EDA:9199
export MGC_CALIBRE_LAYOUT_SERVER=IC_EDA:9189
export PATH=$PATH:$CDSHOME/tools/dfII/bin:$CDSHOME/tools/plot/bin
export PATH=$PATH:$INCISIVE_HOME/tools/bin
export CDS_LIC_FILE=$CADHOME/license/cadence.dat
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$INCISIVE_HOME/tools.lnx86/lib
export PATH=$PATH:$MMSIMHOME/bin:$MMSIMHOME/tools/relxpert/bin

export SPECMAN_HOME=$INCISIVE_HOME/components/sn
export SPECMAN_DIR=$SPECMAN_HOME/
export PATH="$PATH:$INCISIVE_HOME/bin"
export PATH="$PATH:$INCISIVE_HOME/tools.lnx86/bin"
export PATH="$PATH:$INCISIVE_HOME/tools.lnx86/dfII/bin"

#irun
alias irun="irun"

#simvision
alias simv="simvision -64 &"
alias simvision="simvision"

#ncvlog
alias ncvlog="ncvlog"

#ncsim
alias ncsim="ncvsim"

#ncelab
alias ncelab="ncelab"

#ncvhdl_p
alias ncvhdl_p="ncvhdl_p"

#ncvhdl_p
alias imc="imc"

#virtuoso
alias virtuoso="virtuoso"

#iscape.sh
alias CAD_install="/home/cadence/InstallScape/iscape.04.23-s010/bin/iscape.sh &"


#=============================================================================================
#   Mentor Tools
#=============================================================================================
export QUESTASIM_HOME=/home/mentor/questasim

export PATH=$PATH:$QUESTASIM_HOME/linux_x86_64

#Questasim
alias vsim="vsim"
alias questasim="vsim"


#=============================================================================================
#   Xilinx Tools
#=============================================================================================
source /home/Xilinx/Vivado/2019.1/settings64.sh


#=============================================================================================
#   RISCV Tools
#=============================================================================================
export RISCV=/home/Riscv_Tools
export QEMU_HOME=$RISCV/riscv-gnu-toolchain/qemu-6.0.0
PATH=$PATH:$RISCV/bin
PATH=$PATH:$QEMU_HOME/build/riscv32-linux-user
alias qemu32='qemu-riscv32';
alias rv32_elf='riscv32-unknown-elf-gcc';



#=============================================================================================
# Synopsys & Cadence LICENCE
#=============================================================================================

export SNPSLMD_LICENSE_FILE=27000@IC_EDA
export MGLS_LICENSE_FILE=/home/mentor/questasim/mentor.dat

alias lmg_synopsys="/home/synopsys/scl/2018.06/linux64/bin/lmgrd -c /home/synopsys/scl/2018.06/admin/license/Synopsys.dat"
alias lmg_mentor="/home/mentor/questasim/linux_x86_64/lmgrd -c /home/mentor/questasim/mentor.dat"
alias kill_lmg="sudo killall lmgrd"
alias relmg="kill_lmg && lmg_synopsys && lmg_mentor"

#=============================================================================================
# Others
#=============================================================================================
alias t='gnome-terminal';


if [ -f ~/.aliases ]; then
    # load ~/.aliases
    source ~/.aliases
fi

set -o vi
export EDITOR=vim

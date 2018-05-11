# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
alias h='history'
alias pu='pushd'
alias po='popd'


PATH=.:~/bin:$PATH
MKLPATH=/opt/intel/mkl
MKLINCLUDE=/opt/intel/mkl/include

# source /opt/intelp/composer_xe_2013.2.146/bin/ifortvars.sh intel64
# source /opt/intelp/composer_xe_2013.5.192/bin/ifortvars.sh intel64
# source /opt/intel/bin/ifortvars.sh intel64
source /opt/intelp/bin/ifortvars.sh intel64

# disable CTRL+S from sending XOFF
stty ixany
stty ixoff -ixon

# User specific aliases and functions
alias psu='ps -u $USER'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# list directories only
alias lsd='ls -ld */ .*/'

## prevent accidental removal of files
#alias rm='rm -I'

# Change directory colors to yellow as shown by ls.
LS_COLORS=$LS_COLORS:'di=1;33:' ; export LS_COLORS

# Allow exclusive pattern matching (e.g. ls !(*.out) to list everything
# but *.out files).  This does not have the expected behaviour.
shopt -s extglob

# vim = gvim in background for each cmd arg
alias vim='mygvim'
function mygvim() {
	#gvim $@ &

	until [ -z "$1" ] ; do
		gvim "$1" &
		shift
	done
}


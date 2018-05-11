# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#echo -ne '\e[0;34m' Disk: '\e[m' "$(df -h)" "\n"
echo -ne "$(df -h)" "\n"

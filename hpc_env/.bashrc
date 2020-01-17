# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific aliases and functions

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -z "$LD_LIBRARY_PATH" ]; then
    LD_LIBRARY_PATH="/usr/local/mpc/1.1.0/lib/"
else
    LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/mpc/1.1.0/lib/"
fi

LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/mpfr/4.0.2/lib/"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/gmp/6.1.2/lib/"
LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/usr/local/qt/5.8.0/lib/"


export LD_LIBRARY_PATH="$LD_LIBRARY_PATH"



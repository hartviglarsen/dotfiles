source /usr/share/defaults/etc/profile

alias dotfiles='/usr/bin/git --git-dir=/home/mohl/.dotfiles/ --work-tree=/home/mohl'

if [ -f ~/.bash_aliases ]; then
	. ~/.bash_aliases
fi

if [ -f ~/.bash_functions ]; then
	. ~/.bash_functions
fi

if [ -d ~/bin ]; then
  PATH="$HOME/bin:$PATH"
fi

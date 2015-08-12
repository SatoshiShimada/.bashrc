#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1='[\u@\h \W]\$ '
PS1='[\W]\$ '
#PS1='\$ '

alias ls='ls --color=auto'
alias l='\ls -F'
alias ll='ls -alF --color=auto'

# do not output the trailing newline &
# enable interpretation of backslash escapes
alias echo="echo -ne"
alias grep='grep --color=auto'
alias egrep='grep -E --color=auto'
alias vi='vim'
alias emacs='emacs -nw'

alias up='cd ../'

jj () {
	if [ $1 ]; then
		JUMPDIR=$(find ./ -maxdepth 1 -type d | grep $1 | tail -1)
		if [[ -d $JUMPDIR && -n $JUMPDIR ]]; then
			cd $JUMPDIR
		else
			echo "directory not found"
		fi
	fi
}

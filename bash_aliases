if [ $UID -ne 0 ]; then
	alias update="sudo apt-get update"
	alias upgrade="sudo apt-get upgrade"
	alias remove="sudo apt-get remove"
	alias install="sudo apt-get install"
	alias autoremove="sudo apt-get autoremove"
	alias subl="sudo subl"
	alias su="sudo -i"
	alias sudofile="sudo pantheon-files"
fi
alias l.='ls -d .* --color=auto'
alias cd..='cd ..'
alias meminfo='free -m -l -t'
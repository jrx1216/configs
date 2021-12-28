# .bashrc

# last updated 2021-07-20 
# v 1.001

# do nothing if not interactive... probably.
[[ $- != *i* ]] && return

# aliases

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias ports='ss -ntlp'
alias ll="ls -l"
alias la="ls -A"
alias lla="ls -lA"

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


if [[ $(id -u)  -ne 0 ]] ; then
    PS1='\[\e[0;38;5;163m\]\D{%Y-%M-%d %A} \[\e[0;38;5;53m\][\[\e[0;38;5;254m\]\A\[\e[0;38;5;53m\]] \[\e[0;2m\]\# \[\e[0;90m\]<\[\e[0;92m\]\u\[\e[0;90m\]@\[\e[0;36m\]\H\[\e[0;90m\]> \[\e[0;37m\]\w\n\[\e[0;1;92m\]\$ \[\e[0m\]'
else
    PS1='\[\e[0;38;5;163m\]\D{%A %B %d, %Y} \[\e[0;38;5;53m\][\[\e[0;38;5;254m\]\A\[\e[0;38;5;53m\]] \[\e[0;2m\]\# \[\e[0;90m\]<\[\e[0;91m\]\u\[\e[0;90m\]@\[\e[0;36m\]\H\[\e[0;90m\]> \[\e[0;37m\]\w\n\[\e[0;91m\]\$ \[\e[0m\]'
fi


[[ "$PWD" == "/mnt/c/Windows/System32" ]] && cd ~

# RHEL-like
which dnf 1> /dev/null 2> /dev/null && alias update="dnf update"

# Debian-like
which apt-get 1> /dev/null 2> /dev/null  && alias update="apt-get update && apt-get upgrade -y"

# Arch
which pacman 1> /dev/null 2> /dev/null && alias update="pacman -Syu"
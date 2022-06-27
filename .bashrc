# /home/violeta/.bashrc: executed by bash(1) for non-login shells.  # see /usr/share/doc/bash/examples/startup-files (in the package bash-doc) # for examples

#PROMPT_COMMAND='if [[ "$bashrc" != "$PWD" && "$PWD" != "$HOME" && -e .bashrc ]]; then bashrc="$PWD"; . .bashrc; fi'

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#RUN @LOGIN
#source /usr/local/bin/intervalswork &

#CUSTOMIZE SCREEN
setxkbmap -option grp:switch,grp:rwin_toggle,grp_led:scroll us,es #,de #,il
xrandr --output HDMI-1 --brightness 0.40

# don't put duplicate lines or lines starting with space in the history.  # See bash(1) for more options

#XXX HISTORY###################

#HOY ME ARRIESGO CON UN NUEVO HIST SETTING → Thu 16 Dec 2021 09:54:09 AM CET
#XXX from here
#<ref>https://eli.thegreenplace.net/2013/06/11/keeping-persistent-history-in-bash<ref>
geus=false
docspersonalesyrepasos=false
informatica=false
programming=false
mecano=false
ystpelectricity=false
sport=false
extendother=false

clop_bash_persistent_history_set_ownclop() { 
[[ $geus = true ]] && ownclop=/home/violeta/.clogs/maestros/geus.oclog
[[ $docspersonalesyrepasos = true ]] && ownclop=/home/violeta/.clogs/maestros/docspersonalesyrepasos.oclog
[[ $informatica = true ]] && ownclop=/home/violeta/.clogs/maestros/informatica.oclog
[[ $programming = true ]] && ownclop=/home/violeta/.clogs/maestros/programming.oclog
[[ $mecano = true ]] && ownclop=/home/violeta/.clogs/maestros/mecano.oclog
[[ $ystpelectricity = true ]] && ownclop=/home/violeta/.clogs/maestros/ystpelectricity.oclog
[[ $sport = true ]] && ownclop=/home/violeta/.clogs/maestros/sport.oclog
[[ $extendother = true ]] && ownclop=/home/violeta/.clogs/maestros/extendother.oclog
}
clop_bash_persistent_history_set_ownclop

clop_bash_persistent_history() {
	if [[ $geus = true ||  $docspersonalesyrepasos = true ||  $informatica = true ||  $programming = true ||  $mecano = true ||  $ystpelectricity = true ||  $sport = true ||  $extendother = true ]]
	then
		if [[ ${command_part} =~ "rllr" ]]; then
			echo $date_part "|" "REAL-LOGGING 💫" "|" "$command_part" >> ${ownclop} 
		else
			echo $date_part "|" "$command_part" >> ${ownclop}  	 
		fi
	fi
}

#log_bash_persistent_history_NEW() { [[ $(echo  $(pwd | sed -ne "s?/home/violeta/? ?p") | tr "\n" " " && history 1) ]] }

vio_ejemplo_BASH_REMATCH() {
	#echo "violeta"
	[[ 
	$(echo $(history 1 | awk '{print $2}'))  =~ ([0-9]+)-([0-9]+)-([0-9]+) 
	]]
 echo ${BASH_REMATCH[0]}
 echo ${BASH_REMATCH[1]}
 echo ${BASH_REMATCH[2]}
 echo ${BASH_REMATCH[3]}
}

log_bash_persistent_history() {
 [[
   $(history 1) =~ ^\ *[0-9]+\ +([^\ ]+\ [^\ ]+)\ +(.*)$
 ]]

 local date_part="${BASH_REMATCH[1]}"
 local command_part="${BASH_REMATCH[2]}"
 if [ "$command_part" != "$PERSISTENT_HISTORY_LAST" ]
 then
     if [[ ${command_part} =~ "rllr" ]]; then
   	 	echo $date_part "|" "REAL-LOGGING 💫" "|" "$command_part" >> /home/violeta/.persistent_history 
		clop_bash_persistent_history
     else
   	 	echo $date_part "|" "$command_part" >> /home/violeta/.persistent_history
		clop_bash_persistent_history
     fi
   export PERSISTENT_HISTORY_LAST="$command_part"
 fi
}


# Stuff to do on PROMPT_COMMAND
run_on_prompt_command()
{
#	vio_ejemplo_BASH_REMATCH
    log_bash_persistent_history
}
#trap run_on_prompt_command PENDING ver esto según <ref>https://askubuntu.com/questions/853102/how-do-i-run-a-command-before-or-after-every-command-written-in-the-console</ref>

#QUÉ MOVIDA!!! de esto solo va, tal como yo lo entiendo que tiene que ir, lo de detrás del primer run_on_prompt_command; y para que haga lo que yo entendía que iba a hace, tengo que repetir run_on_prompt_command detrás del primer run_on_prompt_command ... → 
# ARRAROA → PROMPT_COMMAND=("echo kaixo" "run_on_prompt_command" "echo hola" "echo agur" "run_on_prompt_command")
PROMPT_COMMAND=("run_on_prompt_command" "run_on_prompt_command")
export HISTTIMEFORMAT="%F %T  "
alias phgrep='cat /home/violeta/.persistent_history|grep --color'
#to trim → tail -20000 ~/.persistent_history | tee ~/.persistent_history
alias hgrep='history|grep --color'

#SEE https://github.com/eliben/pss/
##XXX » » » intento lo de un own clog per clop --- Tue 25 Jan 2022 06:35:34 PM CET


#DONE to here


#XXX old history settings → i keep them but clogging might go wrong now because the HISTTIMEFORMAT var added
## sourzo a git project que me permite guardar cada SESSION HIST FILE...
#<ref>https://github.com/simotek/scripts-config</ref>
source $HOME/.vim/clonedgits/scripts-config/hiset.sh
#edit from Mon Sep  6 09:38:23 CEST 2021
# <ref>https://askubuntu.com/questions/80371/bash-history-handling-with-multiple-terminals</ref>
alias ha="history -a"
alias hb="history -a; history -r"
alias hr="history -r"
alias hl="history | tail -20"
HISTIGNORE="ha:hb:hr:hl"
#end-edit 
#export HISTTIMEFORMAT='%F '
   ##don't store just repeated commands
HISTCONTROL=ignoredups
   ##STORE HISTORY FROM ALL TERMINALS!
#export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(history 1)" >> /home/violeta/.clogs/bash-history-$(date "+%Y-%m-%d").clog; fi' #'history -a'
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "where:$(pwd) $(history 1 | cut -c 8- )" >> /home/violeta/.clogs/bash-history-$(date "+%Y-%m-%d").clog; fi' #'history -a'
   ## append to the history file, don't overwrite it
shopt -s histappend
   ##ssh connection alias to work:
shopt -s expand_aliases
   ##cmdhist,lithist: multi-line commands are saved to the history with embedded newlines
shopt -s cmdhist
shopt -s lithist
   ## for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
   ##lo reduzco myd:<bash 27: slow> 
HISTSIZE=10000 #de 1000000
#HISTFILE=/home/violeta/.bash_history
HISTFILESIZE=500000 # de 10000000
###DONE end old history settings

#DONE HISTORY###################

#SOME CUSTOMIZATIONS
	#about less
export LESS='-R'
export LESSOPEN='|/home/violeta/.lessfilter %s'

#BASH CUSTOLIKE
shopt -s direxpand #expand al menos las env vars tipo $HOME de forma que puedo press tab y autocomplete sin que bash me escape la $ y me joda el autocomplete

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

#ABOUT COLORS

export TERM=xterm-256color
export GREP_COLORS='ms=01;92'
#new colors try> i've created ~/.dircolors! con  ÉXITO!!! #Sun 12 Dec 2021 11:21:54 AM CET
eval "`dircolors -b /home/violeta/.dircolors`"


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
	#PS1='\[\033[01;36m\]violeta ❤ ok ❤ '
	#PS1='\[\033[01;91m\]❤ \[\033[01;93m\]\w\[\033[00m\]\$ '
	#PS1='\[\033[01;91m\]❤ \[\033[01;93m\]\w\[\033[01;92m\]\$\[\033[00m\] '
	PS1='\[\033[01;91m\]☭ \[\033[01;95m\]\w\[\033[01;93m\] ⚡\[\033[00m\]'
    #PS1='${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;93m\]\w\[\033[00m\]\$ '
	#ver mas colores en http://www.tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html (Light Purple  1;35)
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r /home/violeta/.dircolors && eval "$(dircolors -b /home/violeta/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# /home/violeta/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f /home/violeta/.bash_aliases ]; then
    . /home/violeta/.bash_aliases
	export BASH_ALIASES=/home/violeta/.bash_aliases

fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

#ABOUT KEYBOARD
xmodmap -e "keycode 135 = End"

#ADD MY SETS
#use >| to overwrite
set -o noclobber

#ADD MYVARIABLES

#ADD MY FUNCTIONS
#source /usr/local/bin/functions.sh


#SET THE PATH
#PATH=/usr/local/bin:/usr/local/bin/tools:/usr/bin:/bin:/opt/bin
#PATH=/usr/local/bin:/usr/local/bin/tools:/usr/bin:/bin:/opt/bin:
#edited at 1st 09/2020 to include linuxbrew
# EDITED IN A NEW DAWN IN DEBIAN!!!!!!!!!!!  Sat 11 Dec 2021 08:09:00 PM CET
#PATH=/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/home/violeta/.anaconda3/bin:/home/violeta/.anaconda3/condabin:/usr/bin:/bin:/opt/bin:/usr/local/bin:/usr/local/bin/tools:/usr/local/bin/functions/:/usr/local/bin/proespecific:/usr/local/bin/proespecific/dates:/usr/local/bin/variablestosrc/:/usr/share/texlive/texmf-dist/tex/latex/:.
PATH=/usr/games:/bin:/usr/bin:/home/violeta/.local/bin:/home/violeta/bin:/home/violeta/bin/funciones:/home/violeta/bin/auxiliaries:/home/violeta/bin/funciones/fproespecific:/home/violeta/bin/auxiliaries/aproespecific:/usr/local/bin:/home/violeta/bin/jithelpers:.
export PATH #=$PATH

#################-- EDITED OUT Sat 11 Dec 2021
###more BREW 
##export MANPATH=/home/linuxbrew/.linuxbrew/share/man:
##export HOMEBREW_REPOSITORY=/home/linuxbrew/.linuxbrew/Homebrew
##export HOMEBREW_PREFIX=/home/linuxbrew/.linuxbrew
##export INFOPATH=/home/linuxbrew/.linuxbrew/share/info:
##export HOMEBREW_CELLAR=/home/linuxbrew/.linuxbrew/Cellar	
##JAVA
#export CLASSPATH=.:/usr/local/java/java8/java8jdk1.8.0_162/lib:/usr/local/java/classes:/usr/local/java/jars/*
#export JWSDP_HOME=/usr/local/java/jwsdp
##export ANT_HOME
#export TOMCAT_HOME=/usr/share/tomcat8
#export CATALINA_HOME=/usr/share/tomcat8/bin
##set JAVA_HOME & JRE_HOME according to java version
#javaversion=$(java -version 2>&1 | head -1 | grep -o "1\..")
##echo "$(java -version 2>&1)" | grep "java version" | awk '{ print substr($3, 2, length($3)-2); }'
#if [[ "$javaversion" = 1.8 ]]
#then 
	#export JAVA_HOME=/usr/local/java/java8/jdk1.8.0_162
	#export JRE_HOME=/usr/local/java/java8/jre1.8.0_162
#else
	#export JAVA_HOME=/usr/local/java/java9/jdk-9.0.4
	#export JRE_HOME=/usr/local/java/java9/jre-9.0.4
#fi
#export PYTHONPATH=/usr/local/lib/python3.5/dist-packages
export PYTHONPATH=/home/violeta/.filecollections_vio/pyfiles/oop-completebootcamp/
##############################################################

#VIM
export VIMRUNTIME=/usr/share/vim/vim82/

#no matter where I am, cd dir goes to any dir under the following parents: UN CONIAZO
#export CDPATH=.:/home/violeta:/home/violeta/STUDYING

#VARIOUS
export AWKPATH=/home/violeta/.filecollections/awkfiles
export XDG_CONFIG_DIRS=/home/violeta/.config:${XDG_CONFIG_DIRS}

#WEB
#PRACTICAS ANDROID
#ANDROID_HOME=/home/violeta/studying/CYBERSEGURIDAD/BASTI/MOVILES/practica/android-sdk-linux
#DEV_HOME=/home/violeta/studying/CYBERSEGURIDAD/BASTI/MOVILES/practica/practicaAndroid


#BC
export lak=0.453592
export BC_ENV_ARGS=/home/violeta/.bcrc

#export JAVA_HOME= ?????
#	/usr/local/java
#	/java64_8/jdk1.8.0_121/jre/
#	/usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java

#TOMCAT
#	export etct=/etc/tomcat7 ?????????????
#	export vltc=/var/lib/tomcat7 ???????????

#
 #### 
 #### # added by Anaconda3 5.3.0 installer
 #### # >>> conda init >>>
 #### # !! Contents within this block are managed by 'conda init' !!
 #### __conda_setup="$(CONDA_REPORT_ERRORS=false '/home/violeta/anaconda3/bin/conda' shell.bash hook 2> /dev/null)"
 #### if [ $? -eq 0 ]; then
     #### \eval "$__conda_setup"
 #### else
     #### if [ -f "/home/violeta/anaconda3/etc/profile.d/conda.sh" ]; then
         #### . "/home/violeta/anaconda3/etc/profile.d/conda.sh"
         #### CONDA_CHANGEPS1=false conda activate base
     #### else
         #### \export PATH="/home/violeta/anaconda3/bin:$PATH"
     #### fi
 #### fi
 #### unset __conda_setup
 #### # <<< conda init <<<
# 


# export PATH=/opt/rh/rh-python36/root/usr/bin${PATH:+:${PATH}}
# export LD_LIBRARY_PATH=/opt/rh/rh-python36/root/usr/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
# export MANPATH=/opt/rh/rh-python36/root/usr/share/man:$MANPATH
# export PKG_CONFIG_PATH=/opt/rh/rh-python36/root/usr/lib64/pkgconfig${PKG_CONFIG_PATH:+:${PKG_CONFIG_PATH}}
# export XDG_DATA_DIRS="/opt/rh/rh-python36/root/usr/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
#__conda_setup="$('/home/violeta/.anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
#if [ $? -eq 0 ]; then
    #eval "$__conda_setup"
#else
    #if [ -f "/home/violeta/.anaconda3/etc/profile.d/conda.sh" ]; then
        #. "/home/violeta/.anaconda3/etc/profile.d/conda.sh"
    #else
        #export PATH="/home/violeta/.anaconda3/bin:$PATH"
    #fi
#fi
#unset __conda_setup
# <<< conda initialize <<<

vuse=/home/violeta/.dcopies_prev_installations/dusrlocbin
export vuse
export epru=/home/violeta/pruebas/emptypru

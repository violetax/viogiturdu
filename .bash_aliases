#####
#alias shutshut='$(port22-abiertoono casipi 2>/dev/null); [[ $? == 0 ]] && echo "open!!!" && ssh pi@casipi "sudo /sbin/shutdown -hP now" || echo "closed!!"' #; sudo shutdown now'
#TOC#
#
#FAVS:
alias vob="vim /home/violeta/PROYECTO/proviocto/vocabulario.def.provio"
alias veg="vim /home/violeta/PROYECTO/proviocto/reglas.def.provio"
alias clogo="vim /home/violeta/.clogs/.clogs.log"
alias valg='vim /home/violeta/PROYECTO/proviocto/algebra.def.provio'
alias vceps='vim /home/violeta/PROYECTO/proviocto/concepts.def.provio'
alias rllr='marca="REAL-LOGGING 💫"; while read -r l; do '
alias s="vim s.sh"
alias rs="./s.sh"
alias sod=shoftheday
nowsh=synit.sh
alias rod=./${nowsh}  
alias rso="./s.sh -o"
alias vlat="vim /home/violeta/bin/lat"
alias vicom='vim /home/violeta/.vim/plugin/vcomments.vim'
alias flog=flokeguen
alias b10='brave-browser https://10fastfingers.com/text-practice/my-texts'
#alias lat="[[ -e lat ]] && /home/violeta/bin/lat || echo \"not here!!!\"" 
alias rsm='rm -i s.sh'
alias bra="brave-browser"
alias bp="brave-browser http://localhost:631/"
#second s
alias ss="vim s2.sh"
alias rr='./s2.sh'
alias sal="source /home/violeta/.bash_aliases"
#BINS

#TERMINATOR ⇒  xdotool
alias splith='xdotool key ctrl+shift+o'
alias splitv='xdotool key ctrl+shift+e'
##TMP
alias ccoc="cd /home/violeta/.dcopies_prev_installations"
alias lscuse='ls /home/violeta/.dcopies_prev_installations/dusrlocbin'
alias vau="vim /home/violeta/geus/euskera/aurkezpena.vio"
alias macux='vim marcadas.tmp.aux'
alias bex="vim /home/violeta/bin/auxiliaries/aproespecific/exrit.exrcbase.aux"
alias bhex='vim /home/violeta/bin/auxiliaries/aproespecific/exrit.exrcbase.html.aux'

#AWK
alias rawf="awk -f awk_*awk"
alias sawfe='awk -f sedawk2gether.awk' #versión para lawk -t cp  first el sedawk2gether y modify it"
alias sawfeo='awk -f /home/violeta/.filecollections_vio/awkfiles/sedawk2gether.awk' #execute sedawk2gether tal cual está en filecollections_vio
alias sawft='awk -f split_a_file.awk'
alias aw="./awk_*awk"

alias va="vim /home/violeta/.filecollections_vio/awkfiles/v.awk.sh"
alias rva='/home/violeta/.filecollections_vio/awkfiles/v.awk.sh'
#PYTHON
alias pyt="/usr/bin/python3.9"
alias p="vim p.py"
alias p2="vim p2.py"
alias rpy="python p.py"
alias rpy2="python p2.py"
#alias rp=/home/violeta/notes/pyt_notes/pyexes.py
alias pytiw='python -W ignore'
alias timel='/usr/bin/python3.9 /usr/local/src/python/timeline-2.6.0/source/timeline.py'
alias juno='jupyter notebook '
alias cfcp='cd /home/violeta/.filecollections_vio/pyfiles'
alias coop='cd /home/violeta/.filecollections_vio/pyfiles/oop-completebootcamp'
alias cpyn='cd /home/violeta/notes/pyt_notes'
alias cpyncom='cd /home/violeta/notes/pyt_notes/Complete-Python-3-Bootcamp'
alias cpyne='cd /home/violeta/notes/pyt_notes/networking'
alias cpys='cd /home/violeta/notes/pyt_notes/webscrapPY'
alias cpyw='cd /home/violeta/notes/pyt_notes/ipythonW'
alias cpyt='cd /home/violeta/notes/pyt_notes/pythonW; tree -aL 1 --dirsfirst'
#alias cpywt='cd /home/violeta/notes/pyt_notes/pythonW; tree -aL 1 --dirsfirst'
alias pp='vim /home/violeta/notes/pyt_notes/pyexes.py'
alias vpyn='vim /home/violeta/notes/pyt_notes/python.notes'
alias mysnis='grep -n ftplugin /home/violeta/.bash_aliases #which snippets I wrote'
#alias pysni='vim /home/violeta/.vim/after/ftplugin/python_mysnippets.vim'
alias csni='cd /home/violeta/.vim/bundle/vim-snippets/UltiSnips/'
alias pysni='vim /home/violeta/.vim/bundle/vim-snippets/UltiSnips/python.snippets'
alias htsni='vim /home/violeta/.vim/bundle/vim-snippets/UltiSnips/html.snippets'
alias shisni='vim /home/violeta/.vim/bundle/vim-snippets/UltiSnips/sh.snippets'
alias texni='vim /home/violeta/.vim/bundle/vim-snippets/UltiSnips/tex.snippets'
alias pyofsni='vim  /home/violeta/.vim/after/ftplugin/python_snippets.vim'
alias tmpsni='vim /home/violeta/.vim/after/ftplugin/tmp_mysnippets.vim'
alias opy="open_a_python_file"
alias pyr="python py_*py"
alias ipy='ipython3'
alias showallipynbfiles='cd; find [^\.]* \( -path anaconda3 -o -path *\.notnow -o -path *\.ipynb_checkpoints \) -prune -o -name \*.ipynb -print; cd - >/dev/null'
alias shopy=showallipynbfiles
alias cupy='cd /usr/local/src/python'
alias rxm='rm -i /home/violeta/bin/bin.sh'

#TEX
alias vte='vim /home/violeta/.vim/sourceText/tex_mybasic'
alias vtec='vim /home/violeta/.vim/sourceText/tex_cifo'
alias vste='vim /home/violeta/.vim/sourceText/tex_files'
alias vteb='vim /home/violeta/.vim/sourceText/tex_beamer'
alias ctex='cd /home/violeta/notes/tex_notes'
alias vite='vim /home/violeta/notes/tex_notes/sample.tex'	
alias t='vim t.tex'
alias c='vim cifo.tex'
alias tb='vim beamer.tex'
alias hh='vim h.tex'
alias st='vim sample.tex'
alias tbi='pdflatex t ; biber t ; pdflatex t'
alias abi='vim t.bib'
alias snib='vim /home/violeta/.vim/after/ftplugin/bib_mysnippets.vim'
alias pl='pdflatex'
alias plt='pdflatex t.tex'
alias plc='pdflatex cifo.tex'
alias plo='pdflatex cifo.tex;okular cifo.pdf'
#alias pl='/usr/local/texlive/2021/bin/x86_64-linux/pdflatex'
#alias plt='/usr/local/texlive/2021/bin/x86_64-linux/pdflatex t.tex'
#alias tt='if [ ! -e pdflatexfiles ]; then mkdir pdflatexfiles; fi; pdflatex -output-directory pdflatexfiles t.tex; okular pdflatexfiles/t.pdf'
#alias tt='pdflatex t.tex; okular t.pdf'
alias tt='pdflatex t.tex;pdftk t.pdf cat 2-3 output t.pdf;evince t.pdf'
alias th='if [ ! -e htlatexfiles ]; then mkdir htlatexfiles; fi; make4ht -u h.tex; mv h.* htlatexfiles; mv htlatexfiles/h.tex .;firefox htlatexfiles/h.html'

#JSON
alias j='vim json.json'
#DOT
alias d='vim d.dot'

#SHORTCUTS
#BASIC
alias ba='echo -e "\e[38;5;195m# \e[38;5;118m corta PRE → \e[38;5;195m#\n \e[38;5;195m% \e[38;5;118m corta EXT → \e[38;5;195m% \e[0m "'
alias b=bash
alias o=less
alias a=alias
alias sagi="sudo apt-get install"
alias k5='tail -500 /home/violeta/.persistent_history | less'
alias vph="vim /home/violeta/.persistent_history"
alias vphe="vim /home/violeta/.persistent_history # lo edito"
alias e=echo
alias rp=realpath
alias mpru='mv *\.pru /home/violeta/pruebas'
#GREP
alias gr='GREP_COLORS="ms=38;5;219"'
alias grem='grepin -m'
#alias grepin='find . -type f | xargs grep'
alias greper='cat /home/violeta/.persistent_history | grep -a '
alias hgrp='history|grep --color'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto' #metacharacters do not exist
alias grep='grep --color=auto'
alias greca='grep -Ei --color=auto'
alias grepe='grep -E --color=auto' 
alias grepoh='grep -oh --color=auto' #print match only without filenames
alias grepo='grep -o --color=auto' #print match only
alias grepv='grep -v --color=auto' #reverse grep
alias grepw='grep -w --color=auto' #expression is searched for as a word (as if surrounded by `[[:<:]]' and `[[:>:]]'; PERFORMANCE VARY GIVEN PLATFORM!
alias grepli='grep -rne --color=auto' #see line number
alias gmyd='mydes grep'
#alias gres='shao | grep '
#alias gret='shao | grep "[^-]type"'
alias gren='grep -n'
#ADMIN
alias sysu='systemctl suspend'
alias uplo='sudo updatedb'
alias dap='cd /home/violeta/.local/share/applications; echo "xfce4-panel -r"'
alias whichdebian='cat /etc/debian_version'
alias hom='export HOME=$(pwd); export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;35m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\$"'
alias bakhom='export HOME=/home/violeta; export PS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;36m\]\u@\h\[\033[00m\]:\[\033[01;33m\]\w\[\033[00m\]\$"'
#VARIOUS
alias sedebla="sed -i '/^$/d'" #remove blank lines
alias abodu="awk '!(\$0 in a) {a[\$0];print}'" #remove duplicates
alias abodubla="awk '!NF {print;next}; !(\$0 in a) {a[\$0];print}'" #keep blank lines
alias anodume="awk '!a[\$0]++'" #file1 file2  #merge files without dups

alias sext='ls| awk -F. "{print $2}" | sortu'
alias rep='comm -12'
alias lo='locate'
alias del='fc -s ls=rm'
alias lmp="ls *tmp"
alias rmp="rm -i *tmp"
alias dta="drake -w /home/violeta/notes/ds_notes/drakeProyecto/firstDrake"
alias dva="dta; vta"
alias h='fc -l'
alias r='fc -s'
alias duh='du -h'
alias mvi='mv -i' #save move one by one
alias smv='yes|tr y n|mv -i' #doesn't mv if exists
alias cl="csvlook"
alias lyd='lynx --dump'
alias ux="chmod a+x"
alias nux="chmod a-x"
alias rbus='ls /home/violeta/.bups_vio/*swp' # cused
alias fortune="/usr/games/fortune"
#JAVA
#alias j="java"
alias vjar="jar tf "
alias jamy="java -cp $CLASSPATH"
alias javas="javac -d $CLASSPATH"
#C
#GIT
alias cve="export MODI=$OLDPWD; cd .version-history" #; echo -e \"\e[38;5;195mREM \e[38;5;118mcodi \e[38;5;195mto cb!!!!\e[0m\""
alias givint="git clone git@casipi:/home/git/instalacionfotovoltaica.git"
alias wotgit='git -p log --stat'
alias gic='git clone'
alias gad='git add'
alias gico='git commit'
alias gicom='git commit -m'
alias gipu='git push'
alias gipul='git pull'
alias gita='git tag'
alias gitap='gipa; git push origin'
#GREP
alias greta='mytags | grep '
alias grevi='grep -o "^<keywords:[^>]*>" /home/violeta/.vit.log  | vawk : 2  | sed -e "s/>$//" 2>/dev/null| o'
# #TO CUSE ALL GREPIN
#alias grepin='find . -type f | xargs grep -I '
# #alias grepinfina='find . -type f '
# alias grepinomo='find . -type f -not -path "*/node_modules/*" | xargs grep -I '
# alias grepwin='find . -type f | xargs grep -Iw '
# alias grepini='find . -type f | xargs grep -iI '
# alias grepwini='find . -type f | xargs grep -iIw '
alias grepal='cat /home/violeta/.bash_aliases | grep -I'
alias grepaln='cat /home/violeta/.bash_aliases | grep -In'
#alias grepi='cat /home/violeta/.bash_history | grep -I'
#To grepi:
# Oh, how good you were
# How much I loved you
# How I feel I promise not to forget you
# How I wish I had understood how you worked
#alias grepi='find /home/violeta/.clogs -type f | xargs grep -Ih '
alias ghiho='cat /usr/local/bin/grehiho'
#DIFF,CUT,SORT
alias basdif="diff -y --suppress-common-lines"
alias cutf='cut -f'
alias cute='cut -d " " -f'
alias cuc='cat >> /usr/local/bin/useful_commands'
alias sortu='sort | uniq'
alias wcl='wc -l'
alias wcw='wc -w'
#NETWORK
alias ncl='nc -l -p'
#STACK
alias di="dirs -p -v" # PRINTS STACK , v for one entry per line
alias dc="dirs -c" # CLEARS STACK
alias pod="popd " #[-n] [+N | -N] man dirs
alias pud="pushd " #[-n] [+N | -N | dir] man dirs
#alias c=puda → c para cifo.tex 
#alias p=pushd
alias po=popd
#TREE
alias ptre='tree -aL 1 --dirsfirst'
alias ptri='tree -aL 1 --dirsfirst -I'
alias tred='tree -d'
alias trea='tree -a'
alias treda='tree -da'
alias tred1='tred -L 1'
alias tredi='tree -d -I'
alias tref='tree --filelimit'
alias trefa='tree -a --filelimit'
alias treda1='tred -aL 1'
alias tredai='tree -ad -I'
#TREE EXCLUDING:
#Downloads
alias ds='tree -dL 2 -I Downloads' #directory shot
#node_modules
alias trenomo='tree -I node_modules'
alias trednomo='tree -d -I node_modules'
#ffmpeg fragments
alias treads='tree -I "*_clip_*"'
alias treadirs='tree -d -I "*_clip_*"'
#PACKMAN
alias sudo='sudo '
alias isit='ls /var/lib/dpkg/info/ | grep'
alias mvp='mvn package'
alias mtr='mvn tomcat:run'
alias p3="pip3 install"
alias ins='sudo apt-get install'
alias nins='sudo npm install --save-dev '

#VARIOUS

#MOVE AROUND
## gral
alias ..='cd ..'
alias cb='cd -'
#alias codi="cd $MODI"

#/home/violeta
alias cba="cd /home/violeta/basicos"
#
alias cbi="cd /home/violeta/bin"
alias cbia="cd /home/violeta/bin/auxiliaries"
alias cbiap="cd /home/violeta/bin/auxiliaries/aproespecific"
alias cbif="cd /home/violeta/bin/funciones"
alias cbifp="cd /home/violeta/bin/funciones/fproespecific"
alias cbij='cd /home/violeta/bin/jithelpers'
#
alias cdow='cd /home/violeta/Downloads'
alias cpdf='[[ -d "pdfs" ]] && cd pdfs || cd /home/violeta/pdfs'
#
alias cgeus='cd /home/violeta/geus/euskera'
alias cgeush='cd /home/violeta/bin/geush'
alias treg='tree --filelimit 15 /home/violeta/geus'
alias trega='tree --filelimit 15 -a /home/violeta/geus'
#
alias cno='cd /home/violeta/notes'
alias cne='cd /home/violeta/notes/euskera_notes'
## PROYECTO
alias cpro='cd /home/violeta/PROYECTO'
alias cprob='cd /home/violeta/PROYECTO/basicos'
alias cprovya='cd /home/violeta/PROYECTO/basicos/vya'
alias cprofi='cd /home/violeta/PROYECTO/basicos/finanzas; select d in $(ls -A && find . -type f -name *log); do [[ -d $d ]] && cd $d && tree -d || select w in vim libreoffice; do [[ libreoffice ]] && $w $d || $w $d ; break; done; break; done'
alias cprofinan='cd /home/violeta/PROYECTO/basicos/finanzas'
alias prov='cd /home/violeta/PROYECTO/proviocto'
alias cproeq='cd /home/violeta/PROYECTO/equipo'
alias cproes='cd /home/violeta/PROYECTO/estudios'
alias cprop='cd /home/violeta/PROYECTO/practicas'
#
alias cprobda='cd /home/violeta/PROYECTO/basicos/docsab'
#####/home/violeta/PROYECTO/estudios → 
alias cproesi='cd /home/violeta/PROYECTO/estudios/instalacionfotovoltaica'
#
alias cpru='cd /home/violeta/pruebas'
alias cprue='cd /home/violeta/pruebas/emptypru'
alias cprup='cd /home/violeta/pruebas/plantillaSH'
alias cprupe='cd /home/violeta/pruebas/PENDING'
alias cpruge='cd /home/violeta/pruebas/pgeus/work; tree'
#
alias cwo='cd /home/violeta/bin/workondom'
alias cwom='cd /home/violeta/bin/workondom/makepdf'
#
alias cvi='cd /home/violeta/.vim'
alias csniold='cd /home/violeta/.vim/after/ftplugin/'
#
alias cgit='cd /home/violeta/.viogit'
alias cbu='cd /home/violeta/.bups_vio'
alias clog='cd /home/violeta/.clogs'
alias clom='cd /home/violeta/.clogs/maestros'
alias cfco='cd /home/violeta/.filecollections_vio'
alias cfcj='cd /home/violeta/.filecollections_vio/javafiles'
alias cfcs='cd /home/violeta/.filecollections_vio/scrfiles'
alias cfca='cd /home/violeta/.filecollections_vio/awkfiles'
alias cfcl='cd /home/violeta/.filecollections_vio/logs'
alias cfclt='tree -a /home/violeta/.filecollections_vio/logs'

#### /

alias cetc='cd /etc'
alias cusr='cd /usr'
alias cuse='cd /usr/local/bin'
alias cus='cd /usr/local'
alias cmnt='cd /mnt'
alias cww='cd /var/www/html'
alias csyn="cd /usr/share/vim/vim82/syntax"
alias copt='cd /opt'


#alias cp1='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/1_boxeoa'
#alias cp2='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/2_euskera'
#alias cp3='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/3_practicas'
#alias cp4='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/4_tfmaster'
#alias cp5='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/5_equipo'
#alias cp6='cd /home/violeta/notes/hugo_notes/projects/gridbox/content/6_domination'
#STUDYING
#alias cstu='cd /home/violeta/STUDYING'
#alias cybold='cd /home/violeta/STUDYING/.notnow/CYBERSEGURIDAD'
#alias cy='cd /home/violeta/STUDYING/investigacib'
#alias cyan='cd /home/violeta/STUDYING/investigacib/anafor'
#alias cysi='cd /home/violeta/STUDYING/investigacib/sistcofiables'
#alias cyte='cd /home/violeta/STUDYING/investigacib/tendencias1920'
#alias cyote='cd /home/violeta/STUDYING/investigacib/.c20182019/tendencias1920'
#alias cyin='cd /home/violeta/STUDYING/investigacib/.c20182019/investicien'
#alias cypro='cd /home/violeta/STUDYING/investigacib/.c20182019/investicien/proyecto'
#alias cyrev='cybin; cd revistas'
#alias cing='cd /home/violeta/STUDYING/ingenieriaInfo'
#alias cfp='cd /home/violeta/STUDYING/ingenieriaInfo/FP'
#alias crc='cd /home/violeta/STUDYING/ingenieriaInfo/RC'
#alias cso='cd /home/violeta/STUDYING/ingenieriaInfo/SO'
#alias cprogs='cd /home/violeta/STUDYING/cprogs'
##EUSKERA
#alias ceusgoi='ceus; cd goizekoAriketak'
#alias ceus='cd /home/violeta/PROYECTO/2_euskera/audios'
#alias ceusbe='ceus; cd bego'
#alias ceusbek='ceus; cd bego/ariketak'
##NOTES
alias cno='cd /home/violeta/notes'
alias cban='cd /home/violeta/notes/greatbash_notes'
alias ccyn='cd /home/violeta/STUDYING/cyb_notes'
alias cnc='cd /home/violeta/notes/c_notes'
alias cncp='cd /home/violeta/notes/c_notes/cprogs'
alias chtml='cd /home/violeta/notes/html_notes'
alias cide='cd /home/violeta/notes/idea_notes'
alias cjn='cd /home/violeta/notes/json_notes'
alias cvin='cd /home/violeta/notes/vim_notes'
alias cxl='cd /home/violeta/notes/xml_notes'
##LINUX
alias clin='cd /home/violeta/notes/lin_notes'
alias clfs='cd /home/violeta/notes/lin_notes/_LFS'
##VIM
alias cvim='cd /home/violeta/.vim'
alias cviso='cd /home/violeta/.vim/sourceText'
alias sosot='cd /home/violeta/.vim/sourceText/sot_instalacionfotovoltaica'
alias covis='echo "vim -c \"%%%\" -c \"wq\" %%% "'
##WORKING
##WORKINGD
#alias cwo='cd /home/violeta/WORKING'
#alias cwon='cwo; cd node_work'
#alias cnod='cstu; cd notes/node_notes'
#alias cnre='cnod; cd nodeReactTut'
#alias cng=' cnod; cd nodeServer_geoJBDD; tree -L 1 --noreport'
#alias cnp=' cnod; cd nodeServer_panelesBoroaBDD; tree -L 1 --noreport'
#alias cnl=' cnod; cd leaflet-node-mongodb_example; tree -L 1 --noreport'
#alias cmo='cwo; cd mongo_work; tree -L 1 --noreport'
#alias cmod='cwo; cd mongo_work/dbmongo_commands_in_sh-js; tree -L 1 --noreport'
#VARIOUS
#alias cds='cd /home/violeta/notes/ds_notes'
#alias cws='cd /home/violeta/notes/ds_notes/_WEBSCRAP'
#alias cja='cd /home/violeta/notes/java_notes'
#alias cup='cd /usr/local/bin/proespecific/'
#alias cuf='cd /usr/local/bin/functions'
#alias culi='cd /usr/local/lib'
#alias cuj='cd /usr/local/java/'
##with tree:
#alias cabt='cd /home/violeta/Documents/docsAB; tree -aL 1 --dirsfirst'
#alias cnotr='cd /home/violeta/notes; tree -aL 1 --dirsfirst'
#alias cybt='cd /home/violeta/STUDYING/CYBERSEGURIDAD; tree -aL 1 --dirsfirst'
#alias cstut='cd /home/violeta/STUDYING; tree -aL 1 --dirsfirst'
#alias cvimt='cd /home/violeta/.vim; tree -aL 1 --dirsfirst'
#alias cdst='cd /home/violeta/WORKING/dsToolBox; tree -aL 1 --dirsfirst'
#alias cwot='cd /home/violeta/WORKING; tree -aL 1 --dirsfirst'
#alias cuset='cd /usr/local/bin; tree -aL 1 --dirsfirst'
alias x="vim /home/violeta/bin/bin.sh"
alias rx="/home/violeta/bin/bin.sh"
#alias cprut='cd /home/violeta/pruebas; tree -aL 1 --dirsfirst'
#alias cprot='cd /home/violeta/PROYECTO;tree -aL 1 --dirsfirst'

#OPEN FILES

alias viosyn='vim /usr/share/vim/vim82/syntax/vio.vim'
alias txtsyn='vim /usr/share/vim/vim82/syntax/text.vim'
alias htsyn='vim /usr/share/vim/vim82/syntax/html.vim'
alias maesyn='vim /usr/share/vim/vim82/syntax/maestro.vim'
alias clogsyn='sudo vim /usr/share/vim/vim82/syntax/clog.vim'
alias tmpsyn='sudo vim /usr/share/vim/vim82/syntax/tmp.vim'
alias ace='vim /home/violeta/notes/c_notes/accelerateC.notes'
alias ban='vim /home/violeta/notes/greatbash_notes/bash.notes'
#GREAT BASH EXAMPLES: IF	FOR		ARRAYS
alias vif='vim /home/violeta/notes/greatbash_notes/ifs.gbexes'
alias vwhi='vim /home/violeta/notes/greatbash_notes/while.gbexes'
alias vfor='vim /home/violeta/notes/greatbash_notes/fors.gbexes'
alias varra='vim /home/violeta/notes/greatbash_notes/arrays.gbexes'
alias varg='vim /home/violeta/notes/greatbash_notes/arguments.gbexes'
alias vaw='vim /home/violeta/notes/greatbash_notes/awk.gbexes'
## GREAT BASH RUN EXAMPLES:
alias vforx='/home/violeta/notes/greatbash_notes/fors.gbexes'
alias varrax='/home/violeta/notes/greatbash_notes/arrays.gbexes un dos tres'
alias vargx='/home/violeta/notes/greatbash_notes/arguments.gbexes'
alias vwhilx='/home/violeta/notes/greatbash_notes/while.gbexes'
###
alias banh='vim /home/violeta/notes/greatbash_notes/bash.notes.html'
#alias css='vim styles.css'
alias cyn='vim /home/violeta/notes/cyberseguridad.notes'
alias dru='vim /home/violeta/notes/allaboutDrupal.notes'
alias vds='vim /home/violeta/notes/ds_notes/ds.notes'
alias fyn='vim /home/violeta/notes/fp.notes'
alias hiz='vim /home/violeta/notes/euskera_notes/fulldictEU.eu'
alias niz='vim /home/violeta/notes/euskera_notes/neureHiz.eu'
alias qiz='echo -e "clica si no está abierto ya 👉 https://www.euskadi.eus/traductor/ 👉 https://www.euskadi.eus/diccionario-elhuyar/"; read -p "hasta que no tipees algorik, no pasa nada" algo; vim /home/violeta/notes/euskera_notes/neuralagun.eu'
alias html='vim /home/violeta/notes/html_notes/html.notes'
alias jan='vim /home/violeta/notes/java_notes/java.notes'
alias jer='vim /home/violeta/notes/jer.notes'
alias lib='vim "+normal GA" /home/violeta/STUDYING/euskera/bego/iazkohezurrak.liburua'
alias ndn='vim /home/violeta/notes/node.notes.html'
alias nes='vim /home/violeta/escuescri/crescri.notes'
alias nje='vim /home/violeta/notes/json_notes/jexamples.json.notes'
alias njs='vim /home/violeta/notes/json_notes/json_notes'
alias nxl='vim /home/violeta/notes/xml_notes/xml.notes'
alias peg='vim +$ /home/violeta/STUDYING/.pendiente_hidden/pendiente.log'
alias pog='vim +$ /home/violeta/PROYECTO/PROYECTO.log'
alias tmp='vim tmp'
alias ttmp='vim tmp.tmp'
alias aux='vim aux'
alias todo='vim /home/violeta/WORKING/todo/todo.html'
alias vap='vim app.js'
alias vapa='vim package.json'
alias vide='vim /home/violeta/notes/idea_notes/idea.notes.html'
alias vin='vim /home/violeta/notes/vim_notes/vim.notes'
alias vinh='vim /home/violeta/notes/vim_notes/vim.notes.html'
alias vip='vim /home/violeta/notes/vim_notes/practical_and_practicing/practicalVim.notes'
alias vos='vim /home/violeta/STUDYING/ingenieriaInfo/SO/os.notes'
alias vre='vim /home/violeta/STUDYING/ingenieriaInfo/RC/redes.notes'
alias vta='vim /home/violeta/PROYECTO/mytags.pro'
#SETTINGS
alias alis='vim /home/violeta/.bash_aliases'
alias bhis='vim /home/violeta/.bash_history'
alias envf='vim /home/violeta/.bashrc'
alias exrc='vim .exrc'
alias hos='vim /etc/hosts'
alias hoss='sudo vim /etc/hosts'
alias nexrc='vim $HOME/STUDYING/notes/.exrc'
alias pfile='vim /home/violeta/.profile'
alias vimrc='vim /home/violeta/.vimrc'
alias suvimrc='sudo vim /root/.vimrc'
#NOTES PLUS
alias vlo='vim +$ +$ /home/violeta/.vnotes.log'
#WORk
alias vuc='vim /home/violeta/notes/greatbash_notes/commands.notes'
alias tuc='vim /home/violeta/notes/greatbash_notes/commands.tags'
alias vuvuc='vim /home/violeta/notes/vim_notes/vim.commands'
#SNIPPETS
alias absni='vim /home/violeta/.vim/bundle/snippets_emu.txt'
alias scrisni='vim /home/violeta/.vim/after/ftplugin/scr_mysnippets.vim'
#/home/violeta/.vim/after/ftplugin/sh_mysnippets.vim'
alias visni='vim /home/violeta/.vim/after/ftplugin/log_mysnippets.vim'
alias viosni='vim /home/violeta/.vim/after/ftplugin/vio_mysnippets.vim'
alias cifosni='vim /home/violeta/.vim/after/ftplugin/html_cifosnippets.vim'
alias maesni='vim /home/violeta/.vim/after/ftplugin/maestro_mysnippets.vim'
#alias htsni='vim /home/violeta/.vim/after/ftplugin/html_mysnippets.vim'
alias jsonsni='vim /home/violeta/.vim/after/ftplugin/json_mysnippets.vim'
#miquerido
alias mip='vim +$ /home/violeta/.proyecto.vio'
alias miq='vim +$ /home/violeta/.miquerido.vio'
alias myd='vim +$ /home/violeta/.registro_actividad_diario.vio'
alias vit='vim +$ /home/violeta/.vit.log'
#solspro
alias dil='vim +$ /home/violeta/PROYECTO/3_practicas/solsmartgo/solsnotes/.diario.log'
#NESKABOX
alias ndev='vim +$ /home/violeta/NESKABOX/control/devueltos.log'
alias nlo='vim +$ /home/violeta/NESKABOX/NESKABOX.log'

#USEFUL SCRIPTS
alias awf="open_an_awk_file"
alias cali="cali_check_a_lib_in_a_program.scr"
alias cowf="open_a_c_file.scr"
alias cutv="cut_mydelimiter.scr"
alias fed="findsed.scr"
alias fim="vimfind.scr"
alias grepi="grepi.scr"
alias i="heb.scr"
alias log="viologging"
alias locli="jobdone.scr"
alias mno="move-to-notes.scr"
alias opbuk="opbuk.scr"
alias opx="opx_open_an_executable_file.scr"
alias owf="open_a_works_file.scr"
alias owfw="open_a_works_file.scr works"
alias pa="pa.scr"
alias sorto="sorto.scr"
alias sph="sph_sendPYtoHist.scr"
alias swh="swh_sendWFtoHist.scr"
alias upbup="tarup_bups.scr"
alias vnos="open_a_dir_notes_file.scr"
alias xnx="exnoex.scr"
#NESKABOX
alias ncon='./.openlastcontrol'

#LAUNCH PROGRAMS
alias myq='mysql -u violeta'
alias idea='idea.sh'

#SORT
alias sort="sort -V"

#LS
alias ls='ls --color=auto --group-directories-first -1X'
alias l='ls -CF --group-directories-first -X'
alias la='ls -AX --file-type'
alias lsvio='ls -d .*vio'
alias lla='ls -AlX'
alias lgr='ls -lX | grep '
alias lga='ls -lAX |grep '
alias la1='ls -A1X'
alias l1='ls -1X'
alias l1d='ls --group-directories-first -1Xl'
alias ll='ls -alF'
alias lx='ls --group-directories-first -1X'


#SED
#sed SIN N para que output el resto
#sed CON N para que salgan s'olo los matches
alias sec='vim script.sed'
alias resec='rm script.sed'
alias sede='sed -e'
alias sedne='sed -ne'
alias sedi='sed -i'
alias sef='sed -nf script.sed'
alias sefn='sed -f script.sed'
alias sefi='sed -i -f script.sed'

#FIND
alias fd='find [^.]* -maxdepth 1 -type d'
alias fj='find . -mmin -2' #jind just... created in the last 2 mins
alias finomo='find . -type f -not -path "*/node_modules/*" -iname'
alias fd+='find [^.]* -type d'
alias fdin='find [^.]* -type d -iname'
alias fdn='find [^.]* -type d -name'
#alias ff='find [^.]* -type f -name' #find file by name, básico
alias ff='find . -type f -name' #find file by name, básico
alias finefi="find . -type f -printf \"%Ty-%Tm-%Td %TH:%TM %p\n\" | sort -nr | cut -d \" \" -f2"
alias finefit="find . -type f -printf \"%Ty-%Tm-%Td %TH:%TM %p\n\" | sort -nr "
alias fiolfi="find . -type f -printf \"%Ty-%Tm-%Td %TH:%TM %p\n\" | sort -n | cut -d \" \" -f2"
alias fiolfit="find . -type f -printf \"%Ty-%Tm-%Td %TH:%TM %p\n\" | sort -n "
alias ffnex='find . ! -perm -g+x'
alias ffex='find -maxdepth 1 -type f -executable'
alias ff0='find [^.]* -maxdepth 1 -type f'
alias ff+='find [^.]* -type f'
alias ffin='find [^.]* -type f -iname'
alias ffn='find [^.]* -maxdepth 1 -type f -name'
alias ffn+='find [^.]* -type f -name'
alias fh='find  -maxdepth 0 -type d -iname "[^[^.]*]*"'
alias fin='find [^.]* -iname'
alias fn='find [^.]* -name'
alias frin='sudo find / -iname '
alias frn='sudo find / -name'

#NODE
alias n=node
##node makePDF
alias vnoma='vim makePDF.js'
alias vsono='vim sourceVarnames.js'
alias nmak='node makePDF.js'
alias ns='npm start'
alias nin='npm install --save-dev'
alias nap='node app.js'
alias nvm='sudo npm view'
alias cmno='cd /home/violeta/bin/workondom/makepdf'
alias cmnoh='cd /home/violeta/bin/workondom/makepdf/html'
alias cmnoc='cd /home/violeta/bin/workondom/makepdf/css'
alias cmnop='cd /home/violeta/bin/workondom/makepdf/pdf'

	# set in OPEN FILES section: alias vap='vim app.js'

#ECHO VARS
alias path="echo $PATH"

#MYSQL

#MOUNT,UMOUNT
alias moa="sudo mount -a"
alias umu="sudo umount /media/router_usb"

#NETWORK
alias nmtr='sudo nmap -sL --traceroute 192.168.0.*'
alias ipad='ip addr | grep -o "inet 192.*24"'
#alias cip='ip addr | grep -E "192\.168\.1\.3." && nmap -sn 192.168.1.* | grep -E "192\.168\.1\.3."'
alias cip='ip addr | grep -E "192\.168\.0\..." && nmap -sn 192.168.0.* | grep -E "192\.168\.0\..."'
alias s33='ssh -Y 192.168.1.33'
alias sn34='ssh -Y violeta@192.168.1.34 netgui.sh'
alias sw34='ssh -Y violeta@192.168.1.34 wireshark'

#SERVICES
alias tc='sudo service tomcat7'
alias ap='sudo service apache2'
alias my='sudo service mysql'
#alias mongod='mongod --dbpath /home/violeta/WORKING/node_work/nodetest1/data ' #/var/local/data/db/'
alias gomon='sudo systemctl start mongodb && sudo service mongodb status | grep active'
alias nomon='sudo systemctl stop mongodb  && sudo service mongodb status | grep active'

#TEMP
alias myta='vim /usr/local/bin/mytags'

alias sa="stream-adventure 2>/dev/null"
#alias hh=hizpro.scr
alias nogo='nodemon node start'
alias nogop='nodemon node start-prod'
alias nwes='npm run start-w'
#alias gipa='cat /home/violeta/.passes/git.pass'
alias gipa='cat ../b'
alias giat='cat /home/violeta/passes/git-authtoken'
alias cdpre='cnre; cd musiclist'
alias smo='vim /home/violeta/.vim/after/ftplugin/mongo_mysnippets.vim'
alias nat='node makePDF.js htmleg.html'
alias tren='tree -L 2'


alias val='sed -ne "/#TEMP/,/^#SHORTCUTS/{p}" /home/violeta/.bash_aliases | grep -o " .*$"'
alias vic='sed -ne "/^\t#WORKINGD/,/#VARIOUS/{p}" /home/violeta/.bash_aliases | grep -o " c.*$"'

alias maux='vim my-aux.aux'
alias ete='evince t.pdf'
alias ok='okular'

##CDA, CDE: 
#, CHP:

#alias cda='cd /home/violeta/TOPRINT/tocattogether/backupviologs ' #                                  
alias cda='cd /home/violeta/PROYECTO/estudios/instalacionfotovoltaica/resources/pdfs/tochos/pvsol'
alias cde='cd /home/violeta/PROYECTO/estudios/instalacionfotovoltaica/content/temas/replanteo-solar-fotovoltaica'
alias chp='cd /home/violeta/notes/hugo_notes/projects/ipv6 ;'
###############################
#HUGO
alias chu='cd /home/violeta/notes/hugo_notes'
alias cifo='cd /home/violeta/PROYECTO/estudios/instalacionfotovoltaica'
alias cifox='cd /home/violeta/pruebas/cifoextore'
alias chau="cd /home/violeta/geus/euskera/aurkezpena"
#BASE
#cambio cdb por, mas sencillo, bb
alias bb=cifo
###SEDSECTION###
#GENERAL
alias car='cifo ;   cd archetypes'
alias co='cifo ;   cd content'
alias cdat='cifo ;   cd data'
alias cla='cifo ;   cd layouts'
#alias cres="cifo ;   cd resources; selectdir"
alias cres='cifo; cd resources; select d in $(find -type d | grep -v gen); do [[ -d $d ]] && cd $d && clear && tree --filelimit 25 || select w in vim evince; do [[ evince ]] && $w $d || $w $d ; break; done; break; done'
alias csta='cifo ;   cd static'
alias cth='cifo ; cd themes; ls'
alias chex='cifo; chexi=$(find . -type d \( -not -path *.vession-history* \) -name exampleSite); cd ${chexi}'
#alias hnew='$(cifo ; hugo new'
###ENDOF-SEDSECTION###
#layouts
alias clad='cla ; cd _default'
alias clap='cla ; cd partials'
alias clas='cla ; cd shortcodes'
#static
alias cstai='csta ; cd images'
alias cstav='csta ; cd videos'
alias cstacss='csta ; cd css'
alias cstajs='csta ; cd js'

#BASE-PRO-SITE
alias cvio='cd /home/violeta/notes/hugo_notes/projects/gridbox'
alias cti='cd ~/STUDYING/notes/hugo_notes/projects/gridbox/resources/timeline'
#GRIDBOX-theme
alias cvio_thu='cvio ; cd themes/hugrid' #car,cla,clad,clap,csta+
##GRIDBOX-theme-EXAMPLE SITE
alias cvio_thu_es='cvio ; cd exampleSite' #car,co,cdat,csta+
#static
alias cstait='cvio ; cd thumbs'
alias cstaif='cvio ; cd full'
#PROYECTO BIOMASA

alias cbox='cd /home/violeta/PROYECTO/1_boxeoa/aeembox'
#REFERENCIA
alias chrev='cd ~/STUDYING/notes/hugo_notes/learn/reveal/themes/reveal-hugo'
    #HUGO LEARN
    alias chlearn='cd ~/STUDYING/notes/hugo_notes/learn/_gittedThemes/hugolearn'
    #HUGO EASY GALLERY
    alias chgal='cd ~/STUDYING/notes/hugo_notes/learn/_gittedThemes/hugo-easy-gallery'
    #PORTFOLIO
alias chport='cd ~/STUDYING/notes/hugo_notes/netlified/neskaport/themes/hugo-myportfolio-theme'
alias chportmy='cd ~/STUDYING/notes/hugo_notes/netlified/neskaport'
    #PORTFOLIO VIOLETA
alias cbio='cd ~/STUDYING/notes/hugo_notes/netlified/presentnetly'
    #ORIGINAL: EUPL
alias cht5='cd ~/STUDYING/notes/hugo_notes/projects/tema5'				
	#HUGO DOCS
alias choc='cd ~/PROYECTO/5_equipo/dhugodocs' #hugoDocs'

#COMMANDS
alias chuk='bb; chuki=$(find . -type d -name .huwork); cd $chuki'
alias hnkc='hugo new --kind chapter'
alias hug='hugo server -D'
alias ishu='pgrep hugo | xargs -i echo {}'
alias hugig='hugo server -D --ignoreCache'
alias hugi='hugo server -D -p 9999'
alias huga='grep "^alias" ~/STUDYING/notes/hugo_notes/projects/gridbox/.gridbox.log'
#FILES
alias ind='vim index.md'
alias iml='vim /home/violeta/notes/hugo_notes/projects/gridbox/data/items.toml'
alias huno='vim /home/violeta/notes/.hugo_notes.log'
alias tml='vim config.toml'
alias vindex='vim _index.md'
#SCRIPTS
alias chscr='cd ~/STUDYING/notes/hugo_notes/scripts'

############################
#BRAVE!!!!!!!!
alias bindex='brave-browser index.html'
	#TYPING
 	#IDEA
alias bide='brave-browser /home/violeta/notes/idea_notes/idea.notes.html'
	#LINUX
alias blfs='brave-browser /home/violeta/notes/lin_notes/_LFS/index.html'


alias cdai='cd ~/STUDYING/notes/hugo_notes/projects/gridbox/content/programa6/idea'
alias dido='display outfile.png'
alias pota='cat d.dot | graph-easy --from=dot --as_ascii'
alias gil='vim /home/violeta/notes/hugo_notes/projects/gridbox/.gridbox.log'
alias vix='vim index.html'
alias coa='cd /home/violeta/notes/oauth2_notes'
alias cgra='cd /home/violeta/notes/graphviz_notes'
alias dotsni='vim /home/violeta/.vim/after/ftplugin/dot_mysnippets.vim'
alias dotxrc='vim /home/violeta/notes/graphviz_notes/.exrc'
alias gopot='cvio ; pot; dido'
alias gone='cvio ; ne; dido'
alias cas='cd /home/violeta/notes/awksed_notes'
alias cnva='cd /home/violeta/notes/various_notes'
alias ctd='cd STUDYING/notes/techdraw_notes'
alias mydes='grep -o "^<[^ ]*" /home/violeta/.registro_actividad_diario.vio | grep -v "</" | grep -v "<ref>" | sort | uniq ' #as cusescript, is called grepmyd
alias csol='cd /home/violeta/PROYECTO/3_practicas/solsmartgo/solsnotes'
alias grepa='grepaligned'
alias greco='grepa coordinates'
alias lof='libreoffice'
alias senf='source /home/violeta/.bashrc'
alias anac='sudo vim /etc/anacrontab'
alias f='vim ForPPGCPR-resumo.cls'
alias tp='evince t.pdf'
alias pxp='ps aux | grep'
alias sk='sudo kill '
alias aa='vim $HOME/PROYECTO/3_practicas/milanuncios/redactores-segunda/texes/seebib'
alias crepo='cd $HOME/STUDYING/investigacib/.c20182019/investicien'
alias trtol='tr " " "n"'
alias cpri='cd $HOME/.TOPRINT/'
alias rmf='rm -rf '
alias cnetli='cd /home/violeta/.dcopies_prev_installations/dhome/violeta/STUDYING/notes/hugo_notes/netlified'
alias grenet='find /home/violeta/.dcopies_prev_installations/dhome/violeta/STUDYING/notes/hugo_notes/netlified -type f | xargs grep -I'
alias chupro='cd /home/violeta/.dcopies_prev_installations/dhome/violeta/STUDYING/notes/hugo_notes/projects'
alias whi='while read -r l; do'
alias sip='curl ifconfig.co'
#alias lp='sudo lp -d jobro'
alias lp='sudo lp -d DCP1610W'
alias lp2='sudo lp -d DCP1610W -o orientation-requested=4 -o number-up=2'
#alias lp2='sudo lp -d jobro -o orientation-requested=4 -o number-up=2'
alias lpadmin='/usr/sbin/lpadmin'
alias lpc='/usr/sbin/lpc'
alias lpinfo='/usr/sbin/lpinfo'
alias lpmove='/usr/sbin/lpmove'
#ya no hace falta, creo → alias sha="find /home/violeta/bin -maxdepth 1 -type f -executable -exec basename {} \; >| /home/violeta/bin/gres.tmp; while read -r l; do \$l -h; done < /home/violeta/bin/gres.tmp; rm /home/violeta/bin/gres.tmp"
alias porta='port22-abiertoono casipi'
alias spi='ssh pi@casipi'
alias spig='ssh git@casipi'
alias sgi='ssh git@casita'
alias gpp='git push pigit'
#alias sema='select maes in `find /home/violeta/.clogs/maestros -type f -name *oclog`; do vim $maes; break ; done'
alias wog="sed -ne '25,32p' /home/violeta/.bashrc | grep true || echo none" #which oclog
alias closclo="echo -e '\e[38;5;118m 👉 pending bin this \e[38;5;14m!!!!';  clomanov; lat -e; echo -e \"\e[38;5;212m 🌞 have U gitted?? \"; read ifgit; sed -i '25,32s/true/false/' /home/violeta/.bashrc && echo -e \"\e[38;5;208m ⭐ ⭐ ⭐ DAY D✨NG\e[38;5;11m!!!!!! 🤗 \" && bash"
alias gethtmlscifoco='sed -ne "/^*/s?[^/]*/\([^)]*\))?\1?p" _index.md'
alias clomanov='clomanow -v'
alias clomano='clomanow -o'
alias vogskel='vim /home/violeta/.vim/sourceText/geus-vonthego.viomvskel'
alias gv="grep -C20"
alias ca='cog -a3'
alias gg='cog -c3'
alias shoem='find . -type f -name *email'

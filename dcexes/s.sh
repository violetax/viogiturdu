#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N

cexes=(  "cexe.0" "cexe.1" "cexe.2" "cexe.3" "cexe.4" "cexe.5" )

for ex in $(seq 0 5)
do
	cdir=ex0${ex} 
	cexe=${cdir}/${cexes[${ex}]}  
#	cexe=${cexes[${ex}]}  
#	mkdir ${cdir}  
#	mv ${cexe} ${cdir}  
	cfile=$(grep "Archivos a entregar" ${cexe} | awk -F: '{print $2}' | tr -d " ")
	cfile=${cdir}/${cfile}
#	touch ${cfile}  
#	ls ${cfile}
#  	continua	
	sed -ne "9,11p" ${cexe} >| ${cfile} 
done	

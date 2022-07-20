#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N

for p in "c4-VAMOS.pdf" "c5-VAMOS.pdf" "c6-VAMOS.pdf"
do
	nro=$(ls ${p} | sed -ne "s/[^0-9]\([0-9]\)[^0-9]*/\1/p") 
	ddir="dcexesc${nro}"
	[[ ! -d ${ddir} ]] && mkdir ${ddir}  
	pdftotext ${p} 
	tfile=${p%pdf}txt
	sed -i "s/[^[:print:]]//" ${tfile} 
	sed -i "1,/Capítulo III/d" ${tfile}
	sed -i "/^Ejercicio.*[0-9]$/d" ${tfile}
	sed -i "/Ejercicio/i\hastaaqui" ${tfile}
	awk -v nro=${nro} -f split_a_file.awk ${tfile}	
	mv c[0-9]cexe* ${ddir}
done

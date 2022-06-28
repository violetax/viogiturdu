#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N

#pdftotext $profile.pdf 
#
#sed -i "/Capítulo/i\
#hastaaqui
#" $profile.txt

#awk -f split_a_file.awk $profile.txt

for e in $(seq 10)
do
	ejercicio="ejercicio.${e}" 
	let e=${e}-1 
	edir="ex0${e}" 
	mkdir ${edir} 
	vim ${ejercicio}  
	continua
done	
    


#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N


dfiles=("a" "ejercicio.8" "original_a" "original_sw" "sw.diff" )

echo -e "from stackoverflow → patch old_file < diff1234.txt "

echo -e "prueba 1 → "
#ls
echo -e "\t patch a < sw.diff"
#patch a < sw.diff
#ls
echo -e "ahora 'a' ha cambiado, y lo renombro a 'b'"
mv a b
echo -e "y comparo si 'diff original_a b > prueba1.diff && cmp sw.diff prueba1.diff' "

diff original_a b > prueba1.diff
cmp sw.diff prueba1.diff





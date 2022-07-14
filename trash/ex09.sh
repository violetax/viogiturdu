#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N

dtest=dtest

#echo -e "<html></html>" > ${dtest}.html
#echo -e "<?php echo 'foo'; ?>" > ${dtest}.php
#echo -e "Test 42" >> ${dtest}.42
#
echo -e "file to all: "
for f in $(ls ${dtest}*) 
do
	file ${f}  
done

echo -e "\e[38;5;218m
Y EL EJERCICIO → 
"
echo -e " magic file que → DETECTA → 42 → en los primeros 42 bytes "

echo -e "my-magic → \e[38;5;195m 
0 search/42 42 File containing "42"
!:mime text/x-42
\e[0m 
"

echo -e "to use it → 
\e[38;5;190m
file -m my-magic dtest.42
\e[0m "

echo -e "para usarlo repetidas veces, se compila a binario → 
\e[38;5;228m$ \e[38;5;118m file -C -m my-magic
\e[38;5;228m$ \e[38;5;118m file -m my-magic.mgc dtest.*
\e[38;5;228m$ \e[38;5;118m file -i -m my-magic.mgc dtest.*

\e[0m  could pass multiple magic files to use, separated with a :"



exit


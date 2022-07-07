#!/bin/bash

source Asksure.fu
source Opte.fu
source Continua.fu
source Echocolors.fu # black red green yellow blue magenta cyan white pink orange whiteguay @+N

# norminette -R CheckForbiddenSourceHeader cfile | tee cfile_nor

function whatis() {
	cuseco=$(basename $0)
	echo -e "\e[38;5;118m${cuseco} ⇒  \e[38;5;11mtype:\e[38;5;118mvio-urdu-help ⇒  norminette sed perl tr? vim"
	echo -e "\e[38;5;195m distintas funciones: \e[38;5;11m⭐ putas_tabs vim_cada_uno normi_cada_uno script_sed_all \e[38;5;11m⭐ \e[38;5;195m para respectivos trabajos \e[38;5;212m para usar a la vez en dos terminales ❤️️ 
	\e[38;5;43m\t👉\t\e[38;5;11moptions → \e[38;5;190m 
\e[38;5;11m★ \e[38;5;190m v \e[38;5;11m→ \e[38;5;118mvim
\e[38;5;11m★ \e[38;5;190m s \e[38;5;11m→ \e[38;5;118msed -i -f
\e[38;5;11m★ \e[38;5;190m n \e[38;5;11m→ \e[38;5;118mnorminette \e[38;5;228m(en \e[38;5;218mwhile \e[38;5;228mloop)   
\e[38;5;11m★ \e[38;5;190m t \e[38;5;11m→ \e[38;5;118medit tabs con perl...
	\e[38;5;43m\t👉\t\e[38;5;11m${cuseco} -$o\e[0m"
	return 25
}

vimo=false
sedo=false
normo=false
ptab=false

func=""

dopts=( ${vimo} ${sedo} ${normo} )   

while getopts ":ehivsnt" o; do
	case "${o}" in
		e)
			opte
			exit
			;;
		h)
			whatis 2>/dev/null
			[[ "$?" == 25  ]] || echo -e "PENDING whatis!! 🔥 "
			exit
			;;
		v)
			vimo=true
			func=vim_cada_uno
			;;
		s)
			sedo=true
			func=script_sed_all 
			;;
		n)
			normo=true
			func=normi_cada_uno
			;;
		t)
			ptab=true
			func=putas_tabs
			;;
		\?)
			echo "invalid option: -$OPTARG"
			exit
			;;
	esac
done
shift $((OPTIND-1))

function putas_tabs() {
	for rpcf in $(find . -type d -name "ex*" -exec realpath {} \; | sort -V ) 
	do
		cf=$(ls ${rpcf})
		vCFILE="${rpcf}/${cf}"
		vCFILEtmp="${vCFILE}.pttmp"
		echo ${vCFILE}  
		
		sed -i -f script.sed ${vCFILEtmp}
		
		expand -t 4 ${vCFILE}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^void */void\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^char */char\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^int /*int\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^ {16}/\t\t\t\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^ {12}/\t\t\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^ {8}/\t\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^ {4}/\t/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/^ {1,3}//" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/[[:space:]]{4}/\t/" >| ${vCFILEtmp}  
#		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/[[:space:]]{2,3}/ /" >| ${vCFILEtmp}  
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/int[[:blank:]]{2,}=/int =/" >| ${vCFILEtmp}
		cat ${vCFILE} | grep -v "^\/\*" | perl -pe "s/char[[:blank:]]{2,}=/char =/" >| ${vCFILEtmp}

		echo -e "\e[38;5;218m" 
		cat -eT ${vCFILEtmp}
		if asksure; then
			unexpand -t 4  ${vCFILEtmp} >| ${vCFILE}
			cat -eT ${vCFILE}
			vim -c "Stdheader" -c wq ${vCFILE}
			clear
		else
			exit
		fi
	done
}	


#for cf in $(find . -type f -name "*\.c")
function vim_cada_uno() {
	for rpcf in $(find . -type d -name "ex*" -exec realpath {} \; | sort -V ) 
	do
		cf=$(ls ${rpcf})
		vCFILE="${rpcf}/${cf}"
		echo ${vCFILE}  
		vim ${vCFILE} 
		continua
	done
}

function normi_cada_uno() {
	for rpcf in $(find . -type d -name "ex*" -exec realpath {} \; | sort -V )
	do
		this=true
		cf=$(ls ${rpcf})
		vCFILE="${rpcf}/${cf}"
		echo ${vCFILE}  
		while [ "${this}" = true ]
		do
			clear
			norminette -R CheckForbiddenSourceHeader ${vCFILE} | tee ${cf%.c}.norm
			echo -e "\e[38;5;190m D✨NG\e[38;5;228m??????????"  
			if asksure; then
				this=false
			fi
		done
	done	
}

function script_sed_all() {
	for rpcf in $(find . -type d -name "ex*" -exec realpath {} \; | sort -V )
	do
		cf=$(ls ${rpcf})
		vCFILE="${rpcf}/${cf}"
		echo ${vCFILE}  
		sed -i -f normiscript.sed ${vCFILE} && cat -eT ${vCFILE} && continua
	done
}
		
[[ ${func} = "" ]] && echo "hola!" || ${func}  
#script_sed_all
#normi_cada_uno
#vim_cada_uno

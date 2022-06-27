set iskeyword+=-
set iskeyword+=.
set iskeyword+='
set statusline+=%*
source	/home/violeta/.vim/plugin/vcomments.vim 
"PUUUUUTAS "GLOB" VARS para viologging ⇒  las pongo aquí para asegurar que se
"lean, en cualquier punto
au BufNewFile,BufRead,BufEnter *log :let g:tagini=expand("%:p:h") | :let b:line1=line(".") 
au BufWritePost *log  :let b:line2=line("$")


"OPEN VIMRC » index of vimrc
"
" TOTAL START OF »  MACROS			gotoMACS
" TOTAL START OF »  ABBREVIATIONS	gotoABBS ## y al final están las palabras
" tildadas
" TOTAL START OF »  FUNCTIONS		gotoFUNCS
" TOTAL START OF »  AUTOCOMMANDS	gotoAUTOS
" TOTAL START OF »  PLUGGINGS		gotoPLUGS
" TOTAL START OF »  MAPPINGS		gotoMAPS
" TOTAL START OF »  SETTINGS		gotoSETS
" extra MATHS ABBS
" extra NI PUTA IDEA
" extra FUNCTIONS FOR TEX FILES		gotoTEXFUNCS
"
"TOTAL START OF »  MACROS          gotoMACS
let @v=':s/\(\%V\)\n/\1, /g'
let @e=':w > marcadas.tmp.aux | !exrit | source .exrc'


"TOTAL START OF ABBREVIATIONS gotoABBS
ab plh <{}>
ab sep """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"" FUNCTION TO ERASE SPACE AFTER ABB
"<ref>https://vi.stackexchange.com/questions/17692/abbreviations-add-spaces-when-they-shouldnt</ref>
  func! Eatchar(pat)
	  let c = nr2char(getchar(0))
	  return (c =~ a:pat) ? '' : c
  endfunc
 
ab sox :source .exrci
map <leader>sox :source .exrc
"ABBS for html → 
"ab ifac <i class="fas fa-"></i><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
"ab ita <i></i> <{}><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
"ab und <u></u> <{}><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
"ab bo <b></b> <{}><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
"ab itabo <b><i></i></b> <{}><left><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>


"ABBS for vio.sh→ 
ab sask source Asksure.fu
ab sopte source Opte.fu
ab sopas source Asksure.fusource Opte.fusource Continua.fu
ab selco COLUMNS=12select <{}> in $(<{}>)do<{}>done<up><up><up><up><up>
ab coldoc COLUMNS=12

"ABBS general
ab Quee Qué
ab quee qué
ab estaa está
ab estann están
ab Estaa Está
ab Estann Están
ab sii sí
ab Sii Sí
ab qq ¿
ab qw ¿ ?? <{}><left><left><left><left><left><left><left><left>
ab sett set_=(<{}>) <{}><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
ab hv /home/violeta/<C-R>=Eatchar('\s')<CR>
ab dongi D✨NG
ab dongia \e[38;5;118mD\e[38;5;11m✨\e[38;5;118mNG\e[0m   
ab suhi \|!\|<left><left>
ab okk RT
ab nok H=

function! EuSign()
	silent exe 'normal a€a'
endfunction	
nmap eur :call EuSign()a
ab eur <left>eur

"DIGRAPHS
"special chars for trees
"open close tree ┗━ 
ab ooct URHH
"vet branched ┣━ 
ab vvbt VRHH
"hoizontal ━ 
ab hhtr HH
"vetical ┃ 
ab vvtr VV
"crz ╋ 
ab cctr VH
"brnch right ╲ 
ab bbtr BD
"brnch left ╱ 
ab bbtl FD


"juntar twotwerms as one
ab ocam bbf xea
ab cam :s/\([^ ]*\) \(.\)\(.*\)/\1\U\2\L\3/ea
ab caml :s/\([^ ]*\) \(.\)\(.*\)/\L\1\U\2\L\3/ea

"ABBS COLOR
ab dong echo -e "\e[38;5;11mD✨NG!!!! \e[0m" 
ab intes \e[38;5;11m⭐\e[38;5;195m
ab ee echo -e "<C-R>=Eatchar('\s')<CR>
" "cuat" is an attention mark
ab cuat \e[38;5;118m¡\e[38;5;9mATT\e[38;5;118m!\e[0m
" "copt" is an option
ab copt \e[38;5;9m\e[38;5;195m opt\<\{\}\><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
ab cona \e[38;5;208m <left><C-R>=Eatchar('\s')<CR> 
ab coac \e[38;5;195m <left><C-R>=Eatchar('\s')<CR>
ab coas \e[38;5;43m <left><C-R>=Eatchar('\s')<CR>
ab cov \e[38;5;118m <left><C-R>=Eatchar('\s')<CR>
ab covc \e[38;5;190m <left><C-R>=Eatchar('\s')<CR>
ab coros \e[38;5;212m <left><C-R>=Eatchar('\s')<CR>
ab corosi \e[38;5;218m <left><C-R>=Eatchar('\s')<CR>
ab coama \e[38;5;11m <left><C-R>=Eatchar('\s')<CR>
ab coami \e[38;5;228m <left><C-R>=Eatchar('\s')<CR>
ab coroj \e[38;5;9m <left><C-R>=Eatchar('\s')<CR>
ab conor \e[0m <left><C-R>=Eatchar('\s')<CR>
ab cob \e[38;5;15m <left><C-R>=Eatchar('\s')<CR>
ab coa \e[38;5;14m <left><C-R>=Eatchar('\s')<CR>

"ABB PLACEHOLDER
ab pho <{}>

"ABBS PARAGRAPH ⇒  puntos
ab t1 .	∙ 
ab t2 .		∙ 
ab t3 .			∙ 
ab t4 .				∙ 
ab t5 .					∙ 
ab t6 .						∙ 
ab t7 .							∙ 

ab ptno .
ab ptn .∙
ab pt1 .	∙ 
ab pt2 .		∙ 
ab pt3 .			∙ 
ab pt4 .				∙ 
ab pt5 .					∙ 
ab pt6 .						∙ 
ab pt7 .							∙ 

"ABBS PARAGRAPH punto ∙
ab pto Sb
ab ptot 	Sb
ab ptov Sb

"ABBS SPECIAL CHARS
ab coestre ★
ab arro →
ab doar ⇒ 
ab fff »
ab copuntis ∴
ab codemonci ☿
ab coracimini ♥
ab comus ♫♪♫♫♫♪
ab coalarmi 🚨
ab comoni 🐒
ab coheti 🚀
ab coasi 🤷
ab coaun 😣
ab coque 😐
ab comareo 🥴
ab copen 💭
ab codig 💬
ab covi 📽️
ab cogali 🐙
ab coloti 🌸
ab copotent 💪
ab coheli 🚁
ab corayi ⚡
ab coraci ❤️️
ab corarosi 💕
ab coralati 💓
ab 3coralati 💓💓💓
ab codedi 👉
ab codeditras 👈
ab cohandi 🤗
ab cosoli 🌞
ab cokafki 🤯
ab coexploci 💥
ab tomaexploci 💥💥💥💥💥
ab coestrelli ✨
ab coestri ⭐
ab cocieli 💫
ab cotimi ⌛
ab codoneci 🎣
ab cotierri 🌍
"ab fireci "\U0001F525"
ab cofireci 🔥
ab tomacofireci 🔥🔥🔥🔥🔥🔥🔥🔥🔥
"ctrl + shift + u + 2665

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END OF ABBREVIATIONS ⇒  pero hay un tocho de ellas de MATHS al final del file

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"TOTAL START OF FUNCTIONS gotoFUNCS -- algunas FUNC llevan: nmap para run in normal; ab para run in insert
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
function! GoLogging()
	if ( expand("%:p") != g:logfile )
		call inputsave()
		let g:Gol = input("Log this??? `g` or `G` for GOL!!!")
		if g:Gol =~# "[g\|G]"
			echo " → GooooooooooooooOOOLLLLLLL!!!!!"
			call ViologAppendEntries()
		else
			echo " → A la grada!!!!!!!!"
		endif
		call inputrestore()
	endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
function! ViologAppendEntries()
	if ( expand("%:p") != g:logfile )
		au VimLeave *log :exe writefile(["<".b:line1."-".b:line2."::".g:tagini.">"], g:logfile , "a")
		au VimLeave *log :exe b:line1+3 ',' b:line2 'w >>' g:logfile
		au VimLeave *log :exe writefile(["</".b:line1."-".b:line2."::".g:tagini.">"], g:logfile , "a")
	else
		au VimEnter *.log :silent! exe '%s?' . g:logdir . '?' . g:logdiri . '::?'
	endif
endfunction 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
function! ViologSetDirTreePROYECTO() 
	call inputsave()
	let g:Gol = input("NO GOLEES A LOS SIMPLES :w\!\!\! Bakarrik :wq-ekin")
	if (expand("%:p:h") =~# "/home/violeta/PROYECTO/basicos/finanzas/aaa-RENTA" )
		let g:logfile = "/home/violeta/PROYECTO/basicos/finanzas/aaa-RENTA/.aaa-RENTA.log"
		let g:logdir = "/home/violeta/PROYECTO/basicos/finanzas/aaa-RENTA"
		let g:logdiri = "aaa-RENTA"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/basicos/finanzas/baa-fondos-AXA" )
		let g:logfile = "/home/violeta/PROYECTO/basicos/finanzas/baa-fondos-AXA/.baa-fondos-AXA.log"
		let g:logdir = "/home/violeta/PROYECTO/basicos/finanzas/baa-fondos-AXA"
		let g:logdiri = "baa-fondos-AXA"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/basicos/finanzas/aaa-HERENCIA" )
		let g:logfile = "/home/violeta/PROYECTO/basicos/finanzas/aaa-HERENCIA/.aaa-HERENCIA.log"
		let g:logdir = "/home/violeta/PROYECTO/basicos/finanzas/aaa-HERENCIA"
		let g:logdiri = "aaa-HERENCIA"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/basicos/finanzas" )
		let g:logfile = "/home/violeta/PROYECTO/basicos/finanzas/.finanzas.log"
		let g:logdir = "/home/violeta/PROYECTO/basicos/finanzas"
		let g:logdiri = "finanzas"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/basicos" )
		let g:logfile = "/home/violeta/PROYECTO/basicos/.basicos.log"
		let g:logdir = "/home/violeta/PROYECTO/basicos"
		let g:logdiri = "basicos"
	elseif( expand("%:p:h") =~# "/home/violeta/PROYECTO/estudios/cibersecaplausos" )
		let g:logfile = "/home/violeta/PROYECTO/estudios/cibersecaplausos/.cibersecaplausos.log"
		let g:logdir = "/home/violeta/PROYECTO/estudios/cibersecaplausos"
		let g:logdiri = "cibersecaplausos"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica" )
		let g:logfile = "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica/.instalacionfotovoltaica.log"
		let g:logdir = "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica"
		let g:logdiri = "instalacionfotovoltaica"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/estudios" )
		let g:logfile = "/home/violeta/PROYECTO/.estudios.log"
		let g:logdir = "/home/violeta/PROYECTO/estudios"
		let g:logdiri = "estudios"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/equipo/gitALLABOUT" )
		let g:logfile = "/home/violeta/PROYECTO/equipo/gitALLABOUT/.gitALLABOUT.log"
		let g:logdir = "/home/violeta/PROYECTO/equipo/gitALLABOUT"
		let g:logdiri = "gitALLABOUT"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/equipo/raspALLABOUT" )
		let g:logfile = "/home/violeta/PROYECTO/equipo/raspALLABOUT/.raspALLABOUT.log"
		let g:logdir = "/home/violeta/PROYECTO/equipo/raspALLABOUT"
		let g:logdiri = "raspALLABOUT"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/equipo/vIRTUALMACHINES" )
		let g:logfile = "/home/violeta/PROYECTO/equipo/vIRTUALMACHINES/.vIRTUALMACHINES.log"
		let g:logdir = "/home/violeta/PROYECTO/equipo/vIRTUALMACHINES"
		let g:logdiri = "vIRTUALMACHINES"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/equipo" )
		let g:logfile = "./home/violeta/PROYECTO/equipo.log"
		let g:logdir = "/home/violeta/PROYECTO/equipo"
		let g:logdiri = "equipo"
	elseif (expand("%:p:h") =~# "/home/violeta/PROYECTO/proviocto" )
		let g:logfile = "/home/violeta/PROYECTO/proviocto/.proviocto.log"
		let g:logdir = "/home/violeta/PROYECTO/proviocto"
		let g:logdiri = "proviocto"
	else
		let g:logfile = "/home/violeta/PROYECTO/.proyecto.log"
		let g:logdir = "/home/violeta/PROYECTO"
		let g:logdiri = "PROYECTO"
	endif
endfunction
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
function! ViologSetDirTreeNOTES() 
	if (expand("%:p:h") =~# "/home/violeta/notes/awksed_notes" )
		let g:logfile = "/home/violeta/notes/awksed_notes/.awksed_notes.log"
		let g:logdir = "/home/violeta/notes/awksed_notes"
		let g:logdiri = "awksed_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/c_notes" )
		let g:logfile = "/home/violeta/notes/c_notes/.c_notes.log"
		let g:logdir = "/home/violeta/notes/c_notes"
		let g:logdiri = "c_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/cyb_notes" )
		let g:logfile = "/home/violeta/notes/cyb_notes/.cyb_notes.log"
		let g:logdir = "/home/violeta/notes/cyb_notes"
		let g:logdiri = "cyb_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/ds_notes" )
		let g:logfile = "/home/violeta/notes/ds_notes/.ds_notes.log"
		let g:logdir = "/home/violeta/notes/ds_notes"
		let g:logdiri = "ds_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/git" )
		let g:logfile = "/home/violeta/notes/git/.git.log"
		let g:logdir = "/home/violeta/notes/git"
		let g:logdiri = "git"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/graphviz_notes" )
		let g:logfile = "/home/violeta/notes/graphviz_notes/.graphviz_notes.log"
		let g:logdir = "/home/violeta/notes/graphviz_notes"
		let g:logdiri = "graphviz_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/greatbash_notes" )
		let g:logfile = "/home/violeta/notes/greatbash_notes/.greatbash_notes.log"
		let g:logdir = "/home/violeta/notes/greatbash_notes"
		let g:logdiri = "greatbash_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/html_notes" )
		let g:logfile = "/home/violeta/notes/html_notes/.html_notes.log"
		let g:logdir = "/home/violeta/notes/html_notes"
		let g:logdiri = "html_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/hugo_notes" )
		let g:logfile = "/home/violeta/notes/hugo_notes/.hugo_notes.log"
		let g:logdir = "/home/violeta/notes/hugo_notes"
		let g:logdiri = "hugo_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/idea_notes" )
		let g:logfile = "/home/violeta/notes/idea_notes/.idea_notes.log"
		let g:logdir = "/home/violeta/notes/idea_notes"
		let g:logdiri = "idea_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/java_notes" )
		let g:logfile = "/home/violeta/notes/java_notes/.java_notes.log"
		let g:logdir = "/home/violeta/notes/java_notes"
		let g:logdiri = "java_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/javascript_notes" )
		let g:logfile = "/home/violeta/notes/javascript_notes/.javascript_notes.log"
		let g:logdir = "/home/violeta/notes/javascript_notes"
		let g:logdiri = "javascript_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/json_notes" )
		let g:logfile = "/home/violeta/notes/json_notes/.json_notes.log"
		let g:logdir = "/home/violeta/notes/json_notes"
		let g:logdiri = "json_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/leaflet_notes" )
		let g:logfile = "/home/violeta/notes/leaflet_notes/.leaflet_notes.log"
		let g:logdir = "/home/violeta/notes/leaflet_notes"
		let g:logdiri = "leaflet_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/lin_notes" )
		let g:logfile = "/home/violeta/notes/lin_notes/.lin_notes.log"
		let g:logdir = "/home/violeta/notes/lin_notes"
		let g:logdiri = "lin_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/mongo_notes" )
		let g:logfile = "/home/violeta/notes/mongo_notes/.mongo_notes.log"
		let g:logdir = "/home/violeta/notes/mongo_notes"
		let g:logdiri = "mongo_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/node_notes" )
		let g:logfile = "/home/violeta/notes/node_notes/.node_notes.log"
		let g:logdir = "/home/violeta/notes/node_notes"
		let g:logdiri = "node_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/oauth2_notes" )
		let g:logfile = "/home/violeta/notes/oauth2_notes/.oauth2_notes.log"
		let g:logdir = "/home/violeta/notes/oauth2_notes"
		let g:logdiri = "oauth2_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/php_notes" )
		let g:logfile = "/home/violeta/notes/php_notes/.php_notes.log"
		let g:logdir = "/home/violeta/notes/php_notes"
		let g:logdiri = "php_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/pyt_notes" )
		let g:logfile = "/home/violeta/notes/pyt_notes/.pyt_notes.log"
		let g:logdir = "/home/violeta/notes/pyt_notes"
		let g:logdiri = "pyt_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/security_notes" )
		let g:logfile = "/home/violeta/notes/security_notes/.security_notes.log"
		let g:logdir = "/home/violeta/notes/security_notes"
		let g:logdiri = "security_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/spring_notes" )
		let g:logfile = "/home/violeta/notes/spring_notes/.spring_notes.log"
		let g:logdir = "/home/violeta/notes/spring_notes"
		let g:logdiri = "spring_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/techdraw_notes" )
		let g:logfile = "/home/violeta/notes/techdraw_notes/.techdraw_notes.log"
		let g:logdir = "/home/violeta/notes/techdraw_notes"
		let g:logdiri = "techdraw_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/tex_notes" )
		let g:logfile = "/home/violeta/notes/tex_notes/.tex_notes.log"
		let g:logdir = "/home/violeta/notes/tex_notes"
		let g:logdiri = "tex_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/various_notes" )
		let g:logfile = "/home/violeta/notes/various_notes/.various_notes.log"
		let g:logdir = "/home/violeta/notes/various_notes"
		let g:logdiri = "various_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/vim_notes" )
		let g:logfile = "/home/violeta/notes/vim_notes/.vim_notes.log"
		let g:logdir = "/home/violeta/notes/vim_notes"
		let g:logdiri = "vim_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/xml_notes" )
		let g:logfile = "/home/violeta/notes/xml_notes/.xml_notes.log"
		let g:logdir = "/home/violeta/notes/xml_notes"
		let g:logdiri = "xml_notes"
	elseif (expand("%:p:h") =~# "/home/violeta/notes/euskera_notes" )
		let g:logfile = "/home/violeta/notes/euskera_notes/.euskera_notes.log" 
		let g:logdir = "/home/violeta/notes/euskera_notes"
		let g:logdiri = "euskera_notes"
	else 
		let g:logfile = "/home/violeta/notes/.notes.log"
		let g:logdir = "/home/violeta/notes"
		let g:logdiri = "notes"
	endif
endfunction 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
function! ViologSetDirTreePRUEBAS() 
	if (expand("%:p:h") =~# "/home/violeta/pruebas" )
		let g:logfile = "/home/violeta/.pruebas.log"
		let g:logdir = "/home/violeta/pruebas"
		let g:logdiri= "pruebas"
	endif
endfunction 
	"COUNT NUMBER OF MATCHES
	"<ref>https://vi.stackexchange.com/questions/6975/store-the-number-of-matches-in-vimscript-function</ref>
	"redir: Capture ex command output
"NI PUTA IDEA → esta Count no se utiliza en ninguna parte
function! Count( word )
	redir => cnt
    	silent exe '%s/' . a:word . '//gn'
    redir END
		let res = strpart(cnt, 0, stridx(cnt, " "))
	echo res
	return res
endfunction
":echo Count(",")

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

function! Tildes()
	silent!w
	silent! exe "%s/'a/á/g"
	silent! exe "%s/'e/é/g"
	silent! exe "%s/'i/í/g"
	silent! exe "%s/'o/ó/g"
	silent! exe "%s/'u/ú/g"
	silent! exe "%s/nx/ñ/g"
	silent! exe "%s/'A/Á/g"
	silent! exe "%s/'E/É/g"
	silent! exe "%s/'I/Í/g"
	silent! exe "%s/'O/Ó/g"
	silent! exe "%s/'U/Ú/g"
	silent! exe "%s/NX/Ñ/g"
	silent! normal A
endfunction
nmap tt :call Tildes()
ab tt tt<CR><left>a
"<C-R>=Eatchar('\s')<CR>A

function! Untildes()
	silent! exe "%s/á/a/g"
	silent! exe "%s/é/e/g"
	silent! exe "%s/í/i/g"
	silent! exe "%s/ó/o/g"
	silent! exe "%s/ú/u/g"
	silent! exe "%s/ñ/nx/g"
	silent! exe "%s/Á/A/g"
	silent! exe "%s/É/E/g"
	silent! exe "%s/Í/I/g"
	silent! exe "%s/Ó/O/g"
	silent! exe "%s/Ú/U/g"
	silent! exe "%s/Ñ/NX/g"
endfunction
"imap <C-g> <C-o>:call Tildes()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" FUNCTIONS PARA SURROUND AS VARIABLE → ${var}, or TAG 
" Y MODIFIED → $_e{var} $_r{var}  $_a{var} ⇒ entity relation attibute 
"1. ORIGINAL ${VAR}     
function! VimVarDo() 
 let l:part = expand('<cword>')
 if l:part != ""
   silent exe 'normal ciw${pa}'
 endif
endfunction
nmap vv :call VimVarDo()a
ab vv <left>vv
"2. ENTITY $_e{VAR}  
function! EntityVarDo()
	let l:part = expand('<cword>')
	if l:part != ""
		silent exe 'normal ciw■_pa_■'
	endif
endfunction
nmap vve :call EntityVarDo()a
ab vve <left>vve
"3. RELATION $_r{VAR}    
function! RelVarDo()
	let l:part = expand('<cword>')
	if l:part != ""
		silent exe "normal ciw▲_pa_▲"
	endif
endfunction
nmap vvr :call RelVarDo()a 
ab vvr <left>vvr<left>
"4. ATTRIBUTE $_a{VAR}  
function! AttrVarDo()
	let l:part = expand('<cword>')
	if l:part != ""
		silent exe 'normal ciw●_pa_●'
	endif
endfunction
nmap vva :call AttrVarDo()a
ab vva <left>vva
ab ati ●_
ab atic _●
"SEE THIS:
"<ref>https://vi.stackexchange.com/questions/25488/how-to-store-a-region-of-text-into-a-variable</ref>
"
function! VimArr() 
 let l:part = expand('<cword>')
 if l:part != ""
   silent exe 'normal ciw${pa[@]}'
 endif
endfunction
nmap ar :call VimArr()a
ab ar <left>ar

function! VimIArr() 
 let l:part = expand('<cword>')
 if l:part != ""
   silent exe 'normal ciw${#pa[@]}'
 endif
endfunction
nmap iar :call VimIArr()a
ab iar <left>iar



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"BASIC CLOGGING FUNCTION
" Wed 26 Jan 2022 06:34:17 AM CET CLOPPRO
function! ClopClog(dvar)
	let done = 0
	let gline = 1
	while !done
	  let gline += 1
	  let line=getline(gline)
	  if (line  =~ "^geus=")
		  let glineend = gline + 7
		  silent! exe  gline . "," . glineend . "s/true/false/"
		  silent! exe  gline . "," . glineend . "s/" . a:dvar . "=false/" . a:dvar . "=true/g"
		  let done = 1
	  endif
	  endwhile
endfunction
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"FUNCTIONS Y MAPPINGS PARA COLOREAR LOS .vio y .maestro
function! HiOne(color)
	let l:part = expand('<cword>')
	if l:part != ""
		if a:color == "yellow"
				exe 'normal ciw[pa]'
			elseif a:color == "verde"
				exe 'normal ciw|pa|'
			elseif a:color == "orange"
				silent exe 'normal ciw/.pa./'
			elseif a:color == "darkorange"
				silent exe 'normal ciw{pa}'
			elseif a:color == "green"
				silent exe 'normal ciw-.pa.-'
			elseif a:color == "blue"
				silent exe 'normal ciw+.pa.+'
			elseif a:color == "lred"
				silent exe 'normal ciw*.pa.*'
			elseif a:color == "red"
				silent exe 'normal ciw.**pa**'
		endif
	endif
endfunction
nmap hiy :call HiOne("yellow")a
nmap hiv :call HiOne("verde")a
nmap hio :call HiOne("orange")a
nmap hin :call HiOne("darkorange")a
nmap hig :call HiOne("green")a
nmap hib :call HiOne("blue")a
nmap hir :call HiOne("red")a
nmap hil :call HiOne("lred")a
ab hiy <left>hiy
ab hiv <left>hiv
ab hio <left>hio
ab hin <left>hin
ab hig <left>hig
ab hib <left>hib
ab hir <left>hir
ab hil <left>hil
ab hiyr <left>hiy <{}><left><left><left><left><left>i
ab hivr <left>hiv <{}><left><left><left><left><left>i
ab hior <left>hio <{}><left><left><left><left><left><left>i
ab higr <left>hig <{}><left><left><left><left><left><left>i
ab hibr <left>hib <{}><left><left><left><left><left><left>i
ab hirr <left>hir <{}><left><left><left><left><left><left>i
ab hilr <left>hil <{}><left><left><left><left><left><left>i

""""""END FUNCTIONS Y MAPPINGS PARA COLOREAR LOS .vio y .maestro

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"BASIC FUNCTION FOR ANY LOG FILE =>
"at OPEN LOG FILE: CALL LogEntry ->
function! LogEntry(term, ...)
	let s:line=line("$")
	if (getline(line("$")) =~ "^$")
		call setline(s:line, " ")
		call setline(s:line+1, "\##".a:term." lentries: " .strftime("%c"))
		call setline(s:line+2, " ")
	else
		call setline(s:line+1, " ")
		call setline(s:line+2, "\##".a:term." lentries: " .strftime("%c"))
		call setline(s:line+3, " ")
	endif

	"store result of silent COUNT BY SED of term into var cnt
	redir => cnt
			silent exe '%s/'.a:term.'//n'
	redir END
	"extract number from sed output
	let res = strpart(cnt, 1, stridx(cnt, " ") - 1)

	if (a:0 >= 1)
		let res = a:1 > res ? a:1 : res 
	endif
	silent exe '%s/lentries/' . res . '/'

	"remove first line if empty (because newly created file)
	if (getline(1) !~ "^\##") 
		".a:term."")
		execute 1 'delete _'
	endif

	unlet s:line 
	let s:line=line("$")
endfunction
command! -nargs=* Lib :call LogEntry(<f-args>)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"COMO PASAR UNA PARA A UN MAP "https://vi.stackexchange.com/questions/4753/is-it-possible-to-create-mappings-with-parameters
"""""MY CUSTOM XML-LIKE MARKUPS → :Xyz :Dot :VioUnitTag <F5>
"
"""""ORIGINAL MyKeywordsTag ⇒  :Xyz
function! MyKeywordsTag(mytag)
	"problema si es una sola keyword; el cnt me cuenta todo el documento 
    if(a:0==1)
		let s:i=match(a:mytag, " ")
		let s:tag=strpart(a:mytag, 0, s:i)
	else
		let s:tag=a:mytag
    endif
	let s:line=line(".")
	call setline(s:line, "<keywords: " .  a:mytag . "MYTAG>NLL%%%NLL</keywords>")
	silent! exe '%s/NLL//g'
	redir => cnt
		silent! exe '%s/keywords: ' .  s:tag . '//n'
	redir END
let var = strpart(cnt, 1, stridx(cnt, " ") - 1)
silent! exe '%s/MYTAG/ ' . var . '/'
endfunction
command! -nargs=* Xyz :call MyKeywordsTag(<q-args>)
noremap <F2> :Xyz 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"""""MODYFIED MyKeywordsTag ⇒  :Dot
function! MyDocTags(mytag)
	let s:i=match(a:mytag, ":")
	let s:tag=strpart(a:mytag, 0, s:i)
	let s:tagperiod=strpart(a:mytag, 0, s:i+1)
	let s:keywords=strpart(a:mytag, s:i+1)
	let s:line=line(".")
	call setline(s:line, "<" . s:tagperiod . s:keywords . ">%%%</" . s:tag . ">")

	redir => cnt
		silent! exe '%s/<' . s:tag . '//n'
	redir END
	
	let var = strpart(cnt, 1, stridx(cnt, " ") - 1)
	silent! exe '%s/' . s:tagperiod . '/ ' . s:tag . ' ' . var . ':' .'/'
	silent! exe '%s/< /</'
"no va:	exe 'let @+=@:'
endfunction
command! -nargs=* Dot :call MyDocTags(<q-args>)
noremap <F4> :Dot

""""""""""""""REPEAT  FUNC STRUCTURE FOR UNIT TAG, NO KEYWORD
""""" <F5> :VioUnitTag
function! Unit()
	let s:tag="Unit"
	let s:line=line(".")
	call setline(s:line, "<" .  s:tag . "MYTAG>%%%</unit>")
	redir => cnt
		silent! exe '%s/<' .  s:tag . '//n'
	redir END
let var = strpart(cnt, 1, stridx(cnt, " ") - 1)
silent! exe '%s/MYTAG/ ' . var . '/'
endfunction
command! -nargs=* VioUnitTag :call Unit()
noremap <F5> :VioUnitTag

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"NI PUTA IDEA QUÉ ES ESTO
function! Input()
	let g:text = ""
	call inputsave()
	let g:text = input('prompt>')
	call inputrestore()
	return g:text
endfunction

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

""""""""""END mY CUSTOM XML-LIKE MARKUPS

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

"CAPTURE OUTPUT OF EX COMMAND IN A REGISTER
"NI PUTA IDEA
function! TabMessage(cmd)
    redir => message
        silent execute a:cmd
	redir END
  if empty(message)
    echoerr "no output"
  else
    " use "new" instead of "tabnew" below if you prefer split windows instead of tabs
    new
    setlocal buftype=nofile bufhidden=wipe noswapfile nobuflisted nomodified
    silent put=message
  endif
endfunction
command! -nargs=+ -complete=command TabMessage call TabMessage(<q-args>)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END OF FUNCTIONS

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"TOTAL START OF AUTOCOMMANDS  gotoAUTOS
" auvio AUTO FOLDING
" auvio RUN LogEntry, Tildes IN MY FILES
" auvio vim files ⇒  FOR SNIPPETS FILES ⇒  PENDING
" auvio CLOG files ⇒  LA CLOGGING SUPER PENDING
" auvio BIN MY SH
" auvio PYTHON
" auvio NODE html to pdf
" auvio C files
" auvio HTML
" auvio AWK
" auvio DOT 
" auvio XML
" auvio VIM
" auvio SNNIPETS
" auvio BACKUPFILES
" auvio GEUS
" auvio EPRU
" auvio TEX

"Original IF ⇒  Only do this part when compiled with support for autocommands:
"     → Enable file type detection.  " Use the default filetype settings, so that
"       mail gets 'tw' set to 72, 'cindent' is on in C files, etc. 
"     → Also load indent files, to automatically do language-dependent indenting 
"  ⇒  
"IF HAS AUTOCMDS ⇒ 
if has("autocmd")

	"IF HAS AUTOCMDS ⇒  FILETYPE
	filetype on
	filetype plugin on
	filetype indent on
	filetype plugin indent on
    
	"IF HAS AUTOCMDS ⇒  AUGROUPS → Put these in an autocmd group, so that we can delete them easily.
	augroup vimrcEx
	au!
		" For all text files set 'textwidth' to 78 characters.
		autocmd FileType text setlocal textwidth=78
		" When editing a file, always jump to the last known cursor position. Don't do it when the position is invalid or when inside an event handler (happens when dropping a file on gvim). Also don't do it when the mark is in the first line, that is the default position when opening a file.
		autocmd BufReadPost *
		  \ if line("'\"") > 1 && line("'\"") <= line("$") |
		  \   exe "normal! g`\"" |
		  \ endif
	augroup END

"ELSE HAS AUTOCMDS
else
	set autoindent		" always set autoindenting on
endif 
"END IF HAS AUTOCMDS

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"KEEP FOLDS
augroup remember_folds
  autocmd!
  if ( expand('%:t') == "lat" || expand('%:p') =~ "/home/violeta/pruebas/emptypru" ||  expand('%:p') =~ "/home/violeta/bin" || expand('%:p') =~ "/home/violeta/.vim/sourceText" || expand('%:p') =~ "/home/violeta/notes" || expand('%:p') =~ "/home/violeta/PROYECTO"  )
	   autocmd BufWinLeave * mkview
	   autocmd BufWinEnter * silent! loadview
  endif
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

augroup Viovio "was -augroup Viosyn- but edited 21/09 último día de verano de 2021; día de san mateo; último verano con 30 años! segundo verano con Óscar lovelovelove
	autocmd!
    if expand("%:p:h") == "/usr/share/vim/vim80/syntax" &&  expand("%") == "vio.vim"
		autocmd BufEnter * :set ft=vio
	endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio AUTO FOLDING
" <ref>https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions</ref>
augroup AutoSaveFolds
	" COMENTARLO out para eliminar un error al usar :h
	" Pero esto es lo que llena .vim/views
	autocmd!
"	autocmd BufWinLeave ?* mkview
"	autocmd BufWinEnter ?* silent loadview
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio RUN LogEntry, Tildes IN MY FILES
augroup customfiles_augroup
	autocmd!
	autocmd BufEnter *.log,*.vio,*notes :call LogEntry("LEntry") | :set ft=vio 
	autocmd BufEnter *def.provio :set ft=vio
	autocmd BufWinEnter *.log,*vio,*notes :exe "normal G" 
	autocmd BufWritePre *notes,*def.provio :call Tildes()
	autocmd BufEnter,BufNewFile,BufRead *.log :echo "NO GOLEES A LOS SIMPLES :w\!\!\! Bakarrik :wq-ekin"
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio vim files ⇒  FOR SNIPPETS FILES ⇒  PENDING
augroup mysnipis
	autocmd!
	if ( expand('%:p:h') =~ "python" && expand('%:e') == "log" )
		autocmd BufEnter,BufNewFile,BufRead ?* :so /home/violeta/.vim/bundle/vim-snippets/UltiSnips/python.snippets
		"QUIZÁS IRÍA UNA FUNCIÓN QUE → por cada line en el desired .exrc → 
		"silent! exe la line
	endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"
"" auvio vioLOG files
augroup vioLOGS
	autocmd!
	if ( expand("%:p") == "/home/violeta/.registro_actividad_diario.vio" )
		autocmd VimLeave * :!ln -f -t /home/violeta/.filecollections_vio/logs /home/violeta/.registro_actividad_diario.vio 
	endif

"" auvio CLOG files ⇒  LA CLOGGING SUPER PENDING
augroup clogs
	
	" CLOG FILES
	autocmd!
	if ( expand("%:e") == "clog" )
		autocmd BufEnter,BufNewFile,BufRead * :set filetype=clog 
	endif

	" MAESTROS
	if ( expand('%:p:h') =~# "/home/violeta/.clogs/maestros")
		au BufNewFile,BufRead,BufEnter ?* :set filetype=maestro 
		au BufNewFile,BufRead,BufEnter ?* :so /home/violeta/.clogs/maestros/.exrc
	endif	

	"SET DIR, LOGFILES ⇒  
	if ( expand('%:p:h') =~# "/home/violeta/PROYECTO" )
		autocmd BufEnter *log :call ViologSetDirTreePROYECTO() 
		autocmd BufWritePre *log :call GoLogging() 
	elseif ( expand('%:p:h') =~# "/home/violeta/notes" )
		autocmd BufEnter *log :call ViologSetDirTreeNOTES() 
		autocmd BufWritePre *log :call GoLogging() 
	elseif ( expand('%:p:h') =~# "/home/violeta/pruebas" )
	    autocmd BufEnter *log :call ViologSetDirTreePRUEBAS() 
		autocmd BufWritePre :call GoLogging() 
	endif
	
augroup END
	" SH (previously SCR) files


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 

" auvio BIN MY SH
augroup newfastenSCRcreation 
	autocmd!
	if expand('%:t') =~# ".fu" 
		au BufNewFile,BufRead * :set filetype=sh
		set tabstop=4
	endif
	if  expand('%:e') =~# "sh"  
		if ( expand("%:p:h") == "/home/violeta/pruebas/emptypru" &&  expand("%:t") != "s.sh" )
		    autocmd BufNewFile ?* :so /home/violeta/.vim/sourceText/sh_files
		else
		    autocmd BufNewFile ?* :so /home/violeta/.vim/sourceText/scr_files
		endif
		au BufNewFile,BufRead * :set filetype=sh
		au BufWritePost ?* silent !chmod +x <afile>
		au VimLeavePre ?* if getline(1) =~ "^#!" | :so /home/violeta/.vim/sourceText/mysnippets.header | endif
		set tabstop=4
	endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio PYTHON
augroup pyfiles
	autocmd!
	if expand(@%) =~# ".py$" || ( expand("%:p:h") == "/usr/local/src/python/bin" && expand(@%) !~ ".fu" )
		set tabstop=4
		autocmd BufNewFile ?* :so /home/violeta/.vim/sourceText/py.header
		autocmd BufNewFile,BufRead * :set filetype=python
		au BufWritePost ?* silent !chmod +x <afile>
	endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio NODE html to pdf
augroup	node_htmltopdf
	autocmd!
	if expand(@%) =~# "makePDF.js"
		autocmd BufNewFile ?* :so /home/violeta/.vim/sourceText/node_htmltopdf
		autocmd BufNewFile,BufRead * :set filetype=js
	endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio C files
augroup c_files_augroup
	autocmd!
	autocmd BufNewFile *.c,*.cc,*.cpp :so /home/violeta/.vim/sourceText/c_files
	au VimLeavePre *.c,*.cc,*.cpp if getline(1) =~ "^#include <" | :so /home/violeta/.vim/sourceText/mysnippets.header | endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio HTML
augroup html_files_augroup
	    autocmd!
		if ( expand("%:p:h") =~ "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica/" )
			"content" || expand("%:p:h") =~# "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica/layouts" )
			autocmd BufNewFile *.html :so /home/violeta/.vim/sourceText/sot_instalacionfotovoltaica/ifco_general_html_files 
			if expand("%:e") == "html"
				au BufWrite *.html :!touch marcadas.tmp.aux
"			    au VimLeave *.html :!rm marcadas.tmp.aux	
			endif
		else
		    autocmd BufNewFile *.html :so /home/violeta/.vim/sourceText/html_files
		endif
		autocmd BufNewFile,BufRead *.html :set filetype=html
		if ( expand("%:p:h") =~ "/home/violeta/PROYECTO/estudios/instalacionfotovoltaica/content" )
			autocmd BufNewFile,BufRead *.md  :source /usr/share/vim/vim82/syntax/html.vim
			":set filetype=html
		endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio AWK
augroup awk_files_augroup
	autocmd!
	autocmd BufNewFile *.awk :so /home/violeta/.vim/sourceText/awk_files
    autocmd BufNewFile,BufRead *.awk :set filetype=awk
"	if expand(@%) =~# ".awk"
"		au BufWritePost ?* silent !chmod +x <afile>
"	endif
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio DOT 
augroup dot_files_augroup
	autocmd!
	autocmd BufNewFile d.dot :so /home/violeta/.vim/sourceText/ddot_file
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio XML
augroup xml_files_augroup
	autocmd!
		if expand("%:p:h") =~# "/home/violeta/PROYECTO/3_practicas/solsmartgo/solsnotes/" && expand("%") =~# "cliente"
"			autocmd BufNewFile *.xml :so /home/violeta/.vim/sourceText/wcli_xml_files
		"else
		    "autocmd BufNewFile *.xml :so /home/violeta/.vim/sourceText/xml_files
		endif
	autocmd BufNewFile,BufRead *.xml :set filetype=xml
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio VIM
augroup vim_files_augroup
	autocmd!
	autocmd BufNewFile,BufRead *.vim :set filetype=vim
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio SNNIPETS
augroup snnipets__augroup
	autocmd!
	autocmd BufNewFile *mysnippets.vim :so /home/violeta/.vim/sourceText/mysnippets.header
augroup END 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" auvio BACKUPFILES
augroup bups__augroup
	autocmd!
	au BufWritePre ?* let &bex = '=' . strftime("%Y%m%d-%H%M%S") . '_bup'
augroup END

	"el final ,. significa que si dir bups not exists se usa el current
	"backupdir for bups
	"directory for swaps
	"problem with dumping all swap files to one folder is that you cannot edit two files with the same name from two different folders
	"el doble // es porque or Unix and Win32, if a directory ends in two path separators, the swap file name will be built from the complete path to the file with all path separators substituted to percent '%' signs. This will ensure file name uniqueness in the preserve directory. 

if exists("/home/violeta/.bups_vio/*swp")
	silent execute '!rm "/home/violeta/.bups_vio/*swp"' 
endif 
	"espero que esto me quite de undesired swaps sin problemas...

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"auvio GEUS

augroup geus_program
	autocmd!
	if (expand('%:p:t') =~ "vonthego" )
		au BufNewFile * :so /home/violeta/.vim/sourceText/geus-vonthego.viomvskel
	endif
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"auvio EPRU
augroup empty_pruebas
augroup END
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"auvio TEX
augroup tex_files
	autocmd!
	if (expand('%:e') =~ "tex" )
		if (expand('%:t') == "sample.tex" )
			au BufNewFile * :so /home/violeta/.vim/sourceText/tex_files
		elseif (expand('%:t') == "cifo.tex" )
			au BufNewFile * :so /home/violeta/.vim/sourceText/tex_cifo
		elseif (expand('%:t') == "t.tex" )
			au BufNewFile * :so /home/violeta/.vim/sourceText/tex_mybasic
		elseif (expand('%:t') =~# "beamer" )
			au BufNewFile * :so /home/violeta/.vim/sourceText/tex_beamer
		endif 
	endif 
augroup END
"alias ⇒  vte → /home/violeta/.vim/sourceText/tex_files
"alias ⇒  vteb → /home/violeta/.vim/sourceText/tex_beamer




	


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END OF AUTOCOMMANDS

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"TOTAL START OF MYPLUGGINS ⇒  calls, lets, maps ... gotoPLUGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ALIGN
set nocp
filetype plugin on
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
" PATHOGEN
execute pathogen#infect()
	"Now any plugins you wish to install can be extracted to a subdirectory under /home/violeta/.vim/bundle, and they will be added to the 'runtimepath'. Observe:
 "cd /home/violeta/.vim/bundle && \
 "git clone git://github.com/tpope/vim-sensible.git
 "Now sensible.vim is installed. 
 "If you don't like the directory name bundle, you can pass a runtime relative glob as an argument:
	"execute pathogen#infect('stuff/{}')
	"The {} indicates where the expansion should occur.
	"You can also pass an absolute path instead. I keep the plugins I maintain under /home/violeta/src, and this is how I add them:
	"execute pathogen#infect('bundle/{}', '/home/violeta/src/vim/bundle/{}')
	
	" NERD_tree config
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
	"to see hidden files:
	"permanently:
	"let NERDTreeShowHidden=1
	"on demand:
	"press shift + i
map <F3> :NERDTreeToggle<CR>
	"EMMET
let g:user_emmet_expandabbr_key='``'
"<Tab>'
	"LATEX
let g:tex_flavor='latex'
	"VUNDLE "https://github.com/VundleVim/Vundle.vim
	"VIM-PLUG
	"" Specify a directory for plugins (for Neovim: /home/violeta/.local/share/nvim/plugged)
call plug#begin('/home/violeta/.vim/plug')
	""VCOMMENT
source	/home/violeta/.vim/plugin/vcomments.vim 
"To use it, just select the lines to comment by pressing V then moving the "cursor up or down to select lines. Then, press Ctrl-A to comment. Similarly, "you can uncomment them. 
	"NERDTree
Plug 'scrooloose/nerdcommenter'
	"Reload .vimrc and :PlugInstall to install plugins.

	"SYNTASTIC (en lugar de pyflakes)
	"recommended settings:
"set statusline+=%{SyntasticStatuslineFlag()}

autocmd BufRead,BufNewFile /home/violeta/pruebas let b:syntastic_mode = 'passive'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_java_javac_classpath=".:/usr/local/java/classes:/usr/local/java/jars/*"
let g:syntastic_loc_list_height=3

"ignore warnings (see :help 'syntastic_quiet_messages')
"section: filter-override 
" the following setting will silence all warnings:
let g:syntastic_quiet_messages = { "level": "warnings" }

"This will add eslint syntax checker to your vim
"let g:syntastic_javascript_checkers = ['eslint']
"This enables vim to use npm run lint command to run eslint against our files when needed
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

	"PYDICTION
let g:pydiction_location = '/home/violeta/.vim/plugin/pydiction/complete-dict'
"SNNIPETS_EMU: plugin perdido
"uncomment next line for snipet enter key to be enter instead of tab 
"ESTA ES UNA LÍNEA IMPORTANTE → QUÉ KEY SALTA A LOS PLACEHOLDERS XXX
" Quiera cmbiarla para tener disponible TAB, /chplkey ⇒  
"let g:snippetsEmu_key = ''
"let g:snippetsEmu_key = '~~'

"UltiSnips
"If I was using vundle:
" Track the engine.
" Plugin 'SirVer/ultisnips'
"
" " Snippets are separated from the engine. Add this if you want them:
" Plugin 'honza/vim-snippets'
" Trigger configuration. Do not use <tab>if you use
" https://github.com/Valloric/YouCompleteMe.
" " - https://github.com/nvim-lua/completion-nvim
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>" 
let g:UltiSnipsJumpBackwardTrigger="<c-q>"

" If you want :UltiSnipsEdit to split your window.
" let g:UltiSnipsEditSplit="vertical"

"VIM-TABLE-MODE
map <Leader>tm :set TableModeToggle	
map <Leader>tz :set Tableize	
let g:table_mode_corner_corner='|'
let g:table_mode_header_fillchar='='

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END MYPLUGGINGS	""""""""""""""""""""""""""""""""""""""""""""""""""


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"TOTAL START OF MAPPINGS gotoMAPS
"Vim assigns a function to almost every key on the keyboard. If we want to create our own custom mappings: <Leader> by default is \
"see :h mapleader
"let mapleader=","
"noremap \ ,
map <C-a> :call Comment()<CR>
map <C-b> :call Uncomment()<CR>
"for syntax
map <C-h> :.s/\(\)\(\)/\1\2 \U\1\L\2 \1\2s \U\1\L\2s/
"my surround
map sup ciw<u><b><i>pa</i></b></u>e<right><right><right><right><right><right><right><right><right><right><right><right>
"map date con format → 
map dati :r!date +\%d-\%m-\%y/\%H:\%m
"APPEND TO ALISIMP ⇒  
map sali :.w>> ~/bin/alisimp \| !sed -i "/^EOF/d" ~/bin/alisimp && echo EOF >> ~/bin/alisimp
" GAMETSA VMAPPINGS!!! gotoGAMET 
"in visual mode, rr surrounds with [] 
vmap rr Srf]
vmap mm S|
map cnof :s/\t\(.* ( expand("%:p:h") == "/usr/local/\)/\t/<left>
map <Leader>sask 2Gosource /home/violeta/bin/funciones/Asksure.fu
map <Leader>geto :.put =readfile('/home/violeta/')[:]<left><left><left><left><left>
map <Leader>ti :call Tildes()
map <Leader>uti :call Untildes()
map <Leader>pk "+p:.s/Dot \(.*\):\(.*\)/<keywords: \1\2><\/keywords>/
map <Leader>k :let @+=@:
map <Leader>ft :set ft=
map <Leader>ftt :set ft?
map <Leader>vio :set ft=vio
map <Leader>js :set ft=javascript
"para moverse por buffers
map ,, :wn
map ;; :wprev
"macro de sustituci'on:
"	newline - comas
map <leader>cont :%s/ENCONSTRUCCIÓN//<left>
":h ins-completion suggestions
" tag
inoremap  
" file name 
inoremap  
" definition (or macro) name 
inoremap  
" backwards for a line
inoremap  
"my own:
inoremap  
map  <Leader>gb :g/^$/d
map <Leader>snn :set norelativenumber nonumber
map <Leader>sn :set norelativenumber number
map <Leader>srn :set relativenumber
map <Leader>snrn :set norelativenumber
map <Leader>eb :e#
map <Leader>yc :s/<\(.*\)>\(.*\)<\(.*\)>/<!-- ;\1;\2;\3; -->/
map <Leader>yu :s/<!-- ;\(.*\);\(.*\);\(.*\); -->/<\1>\2<\3>/
map <Leader>ycs :s/<\(.*\)>/<!-- ;\1; -->/
map <Leader>yus :s/<!-- ;\(.*\); -->/<\1>/
map <Leader>yn :s/<\(.*\)><\(.*\)><\(.*\)>/<!-- ;\1;;\2;;\3; -->/
map <Leader>yun :s/<!-- ;\(.*\);;\(.*\);;\(.*\); -->/<\1><\2><\3>/
	"save command in useful_commands after running fc
"map <Leader>cuc :w >> /usr/local/bin/useful_commands
	"comment out with #
map <Leader>## :s/^/#/
"SNNIPETS
map <Leader>mysni :so /home/violeta/.vim/sourceText/mysnippets.header
imap <buffer> w<TAB> <C-O>/%%%<CR><C-O>c3l
nmap <buffer> w<TAB> /%%%<CR>c3l

imap <buffer> q<TAB> <C-O>/<{}><CR><C-O>c4l
nmap <buffer> q<TAB> /<{}><CR>c4l
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END OF MAPPINGS 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
" TOTAL START OF SETTINGS gotoSETS -- tambi'en hay al ppio para que se lean 
set statusline+=%#warningmsg#
set directory=/home/violeta/.bups_vio//,.
set backupdir=/home/violeta/.bups_vio//,.
set shiftwidth=4
set tabstop=4
set softtabstop=0 noexpandtab		
set exrc
set number
set incsearch		" do incremental searching
set showcmd		" display incomplete commands
set ruler		" show the cursor position all the time
set history=50		" keep 50 lines of command line history
set backspace=indent,eol,start
set nocompatible
set nohlsearch
set cmdheight=2

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" 
"END OF SETTINGS

"MATH ABBS
"ohnio: ^KOm
ab ohm Ω 
""epsi: ^Kj3
ab epsi ϵ
" ⇒	=>	21D2	8658	RIGHTWARDS DOUBLE ARROW
ab kith =>
" ⇔	==	21D4	8660	LEFT RIGHT DOUBLE ARROW
ab kioi ==
" ∀	FA	2200	8704	FOR ALL
ab kfa FA
" ∂	dP	2202	8706	PARTIAL DIFFERENTIAL
" ∃	TE	2203	8707	THERE EXISTS
ab ktex TE
" ∅	/0	2205	8709	EMPTY SET
ab kes ∅ 
" ∆	DE	2206	8710	INCREMENT
" ∇	NB	2207	8711	NABLA
ab keo ∈
" ∈	(-	2208	8712	ELEMENT OF
ab kelof (-
" ∋	-)	220B	8715	CONTAINS AS MEMBER
ab kcontains -)
" ∏	*P	220F	8719	N-ARY PRODUCT `
" ∑	+Z	2211	8721	N-ARY SUMMATION `
ab ksumat +Z
" −	-2	2212	8722	MINUS SIGN
" ∓	-+	2213	8723	MINUS-OR-PLUS SIGN
ab kmm -+
" ∗	*-	2217	8727	ASTERISK OPERATOR
" ∘	Ob	2218	8728	RING OPERATOR # la doy por → CONCATENATION
ab kconcat ∘ 
" ∙	Sb	2219	8729	BULLET OPERATOR
" √	RT	221A	8730	SQUARE ROOT
" ∝	0(	221D	8733	PROPORTIONAL TO
ab kpropto 0(
" ∞	00	221E	8734	INFINITY
ab kinf 00
" ∟	-L	221F	8735	RIGHT ANGLE
" ∠	-V	2220	8736	ANGLE
" ∥	PP	2225	8741	PARALLEL TO
ab kparto PP
" ∧	AN	2227	8743	LOGICAL AND
ab klogand AN
" ∨	OR	2228	8744	LOGICAL OR
ab klogor OR
" ∩	(U	2229	8745	INTERSECTION
ab kintersect (U
" ∪	)U	222A	8746	UNION
ab klogun )U
" ∫	In	222B	8747	INTEGRAL
" ∬	DI	222C	8748	DOUBLE INTEGRAL
" ∮	Io	222E	8750	CONTOUR INTEGRAL
" ∴	.:	2234	8756	THEREFORE
ab ktherfor .:
" ∵	:.	2235	8757	BECAUSE
ab kbecause :.
" ∶	:R	2236	8758	RATIO
ab krat :R
" ∷	::	2237	8759	PROPORTION
ab kprop ::
" ∼	?1	223C	8764	TILDE OPERATOR
" ∾	CG	223E	8766	INVERTED LAZY S
" ≃	?-	2243	8771	ASYMPTOTICALLY EQUAL TO
ab kasympeq ?-
" ≅	?=	2245	8773	APPROXIMATELY EQUAL TO
ab kapproxeq ?=
" ≈	?2	2248	8776	ALMOST EQUAL TO
ab kalmosteq ?2
" ≌	=?	224C	8780	ALL EQUAL TO
" ≓	HI	2253	8787	IMAGE OF OR APPROXIMATELY EQUAL TO
" ≠	!=	2260	8800	NOT EQUAL TO
ab kne !=
" ≡	=3	2261	8801	IDENTICAL TO
ab kident =3
" ≤	=<	2264	8804	LESS-THAN OR EQUAL TO
ab kloe =<
" ≥	>=	2265	8805	GREATER-THAN OR EQUAL TO
ab kgoe >=
" ≪	<*	226A	8810	MUCH LESS-THAN
ab kmlt <*
" ≫	*>	226B	8811	MUCH GREATER-THAN
ab kmgt *>
" ≮	!<	226E	8814	NOT LESS-THAN
ab knlt !<
" ≯	!>	226F	8815	NOT GREATER-THAN
ab kngt !>
" ⊂	(C	2282	8834	SUBSET OF
ab ksbso (C
" ⊃	)C	2283	8835	SUPERSET OF
ab kspso )C
" ⊆	(_	2286	8838	SUBSET OF OR EQUAL TO
ab ksbsooe (_
" ⊇	)_	2287	8839	SUPERSET OF OR EQUAL TO
ab kspsooe )_

"EPSILON ϵ
ab j3 j3 
"ETA η
ab yy* y* 

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"NI PUTA IDEA
" allow backspacing over everything in insert mode
if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
" SETS AND GENERAL
" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>
" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
"syntax on
colo ron
if &t_Co > 2 || has("gui_running")
  syntax on
  "set hlsearch
endif
highlight Comment cterm=bold ctermfg=6

"############
"vaguis cifo
ab intema interruptor magnetotérmico
ab intedi interruptor diferencial
ab imi ![](images/<{}>)<{}><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
ab pimi ![](./images/<{}>)<CR><{}><up><left><left><C-R>=Eatchar('\s')<CR>
ab ivi ![](videos/<{}>)<{}><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>
ab pivi ![](../videos/<{}>)<{}><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><left><C-R>=Eatchar('\s')<CR>

" ABBS CON TILDE
ab accioon acción
ab actuua actúa
ab ahii ahí
ab alguun algún
ab alimentacioon alimentación
ab alineacioon alineación
ab allaa allá
ab amperimeetrico amperimétrico
ab apicacioon apicación
ab aqueel aquél
ab aquii aquí
ab asii así
ab asignacioon asignación
ab atraccioon atracción
ab automaatica automática
ab baasica básica
ab baasicas básicas
ab baasico básico
ab bateriias baterías
ab botoon botón
ab calefaccioon calefacción
ab caracteriisticas características
ab centralizacioon centralización
ab circulacioon circulación
ab claasica clásica
ab coomo cómo
ab Coomo Cómo
ab comuun común
ab conexioon conexión
ab conservacioon conservación
ab continuua continúa
ab continuuan continúan
ab cuaales cuáles
ab cuaanta cuánta
ab definicioon definición
ab demaas demás
ab derivacioon derivación
ab despuees después
ab direccioon dirección
ab distribucioon distribución
ab distribucioon distribución
ab doonde dónde
ab ejecucioon ejecución
ab eléctomec eleectomecánicas 
ab eleectrica eléctrica
ab eleectricamente eléctricamente
ab eleectricas eléctricas
ab eleectrico eléctrico
ab eleectricos eléctricos
ab electrificacioon electrificación
ab electromagneetica electromagnética
ab electromagneeticas electromagnéticas
ab electromagneetico electromagnético
ab Electromagneetico Electromagnético
ab electromecaanico electromecánico
ab electroonico electrónico
ab Electroonico Electrónico
ab electroonica electrónica
ab Electroonica Electrónica
ab electroonicos electrónicos
ab Electroteecnico Electrotécnico
ab energiia energía
ab Energiia Energía
ab especiifico específico
ab esquemaatica esquemática
ab estaa está
ab estaan están
ab estee esté
ab fenoomeno fenómeno
ab fiisica física
ab fiisicos físicos
ab funcioon función
ab galvaanico galvánico
ab generacioon generación
ab geomeetrica geométrica
ab heelice hélice
ab iduccioon iducción
ab iluminacioon iluminación
ab induccioon inducción
ab informacioon información
ab ingenieriia ingeniería
ab instalacioon instalación
ab interaccioon interacción
ab interactuua interactúa
ab isometriia isometría
ab laampara lámpara
ab liimite límite
ab liinea línea
ab magneetica magnética
ab magneetico magnético
ab magneeticos magnéticos
ab magnetoteermico magnetotérmico
ab maaquina máquina
ab marroon marrón
ab maas más
ab mayoriia mayoría
ab mecaanica mecánica
ab metaalicas metálicas
ab metaalico metálico
ab meetricos métricos
ab miliimetro milímetro
ab miinimo mínimo
ab muultiplo múltiplo
ab nuucleo núcleo
ab numeracioon numeración
ab nuumero número
ab nuumeros números
ab oposicioon oposición
ab paraametros parámetros
ab partiicula partícula
ab posicioon posición
ab praactica práctica
ab presioon presión
ab produccioon producción
ab proteccioon protección
ab provocaandola provocándola
ab Quee Qué
ab quee qué
ab quiimica química
ab rectaangulo rectángulo
ab relacioon relación
ab relee relé
ab relees relés
ab repitieendose repitiéndose
ab repitieendose repitiéndose
ab representacioon representación
ab retroalimentacioon retroalimentación
ab revees revés
ab rodeaando rodeándo
ab see sé
ab seccioon sección
ab seguun según
ab seraa será
ab sii sí
ab siimbolo símbolo
ab simbologiia simbología
ab siimbolos símbolos
ab sustitucioon sustitución
ab tambieen también
ab Tambieen También
ab teecnica técnica
ab teecnicas técnicas
ab tensioon tensión
ab tensioon tensión
ab Tensioon Tensión
ab teermica térmica
ab teermico térmico
ab trabajaraa trabajará
ab transformacioon transformación
ab translacioon translación
ab travees través
ab trifaasicas trifásicas
ab trifaasicos trifásicos
ab uunica única
ab utilizacioon utilización
ab variia varía
ab voltiimetro voltímetro
ab comisioon comisión
ab Comisioon Comisión

"""""""""""""""PRUEBAS 
"
"gotoTEXFUNCS
"############## FUNCTIONS FOR TEX FILES 
"<ref>https://stackoverflow.com/questions/14360427/vim-abbreviations-and-regular-expressions</ref>
function! ExpandNanometers()
    let items = matchlist(expand('<cword>'), '\v(\d+)nm')
    if len(items) == 0
        return
    endif
    let modified = '\SI{' . items[1] . '}{\nano\meter}'
    exec "normal! ciw" . modified
endf
"FUNCIONA!!!!!!!!!!!
"imap <C-l> <C-o>:call ExpandNanometers()<CR>
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
function! ExpandSILatex()
    let items = matchlist(expand('<cword>'), '\v(\d+)mm')
    if len(items) == 0
        return
    endif
    let modified = '\SI{' . items[1] . '}{\meter\squared}'
    exec "normal! ciw" . modified
endf
imap <C-l> <C-o>:call ExpandSILatex()<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  

function! IndentBulletLatex()
    let items = matchlist(expand('<cexpr>'), '\d\+cm')
    if len(items) == 0
        return
    endif
    let modified = '\indent\hspace{' . items[0] . '}\textbullet\ '
	echom modified
    exec "normal! ciw" . modified
endf
imap <F6> <C-o>:call IndentBulletLatex()<CR>

"noremap <F6> :echom "hola"<CR>
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""  
"alphsubs ---------------------- {{{
        execute "digraphs ks " . 0x2096 
        execute "digraphs as " . 0x2090
        execute "digraphs es " . 0x2091
        execute "digraphs hs " . 0x2095
        execute "digraphs is " . 0x1D62
        execute "digraphs ks " . 0x2096
        execute "digraphs ls " . 0x2097
        execute "digraphs ms " . 0x2098
        execute "digraphs ns " . 0x2099
        execute "digraphs os " . 0x2092
        execute "digraphs ps " . 0x209A
        execute "digraphs rs " . 0x1D63
        execute "digraphs ss " . 0x209B
        execute "digraphs ts " . 0x209C
        execute "digraphs us " . 0x1D64
        execute "digraphs vs " . 0x1D65
        execute "digraphs xs " . 0x2093
"}}}

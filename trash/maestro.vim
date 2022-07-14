" VIO syntax file
" Language:	Vim 8.0 script
" Automatically generated keyword lists: {{{1

" Quit when a syntax file was already loaded {{{2
if exists("b:current_syntax")
  finish
endif
let s:keepcpo= &cpo
set cpo&vim
"""""""""""""""""""""MY HI
syn keyword     viologKWROX	     	 ATT 2xATT 
syn keyword     viologKWAMA     	 nnnext
syn keyword     viologKWORA  	   	 ppost
syn keyword     viologKWVERD   		 PENDING 
syn keyword     viologKWAZU   	     yuhuuu 
syn keyword     viologKWROS   	 	 SOLVED
syn keyword	maestroKWYellow		 email alias 
syn keyword maestrocoloreAlias	 vob veg clogo valg vceps rllr s rs rso vlat vicom flog b10 rsm bra bp ss rr sal splith splitv ccoc lscuse vau macux bex bhex rawf sawfe sawfeo sawft aw va rva pyt p p2 rpy rpy2 pytiw timel juno cfcp coop cpyn cpyncom cpyne cpys cpyw cpyt pp vpyn mysnis csni pysni htsni shisni texni pyofsni tmpsni opy pyr ipy showallipynbfiles shopy cupy rxm vte vtec vste vteb ctex vite t c tb hh st tbi abi snib pl plt plc plo tt th j d ba b o a sagi k5 vph vphe e rp mpru gr grem greper hgrp egrep fgrep grep greca grepe grepoh grepo grepv grepw grepli gmyd gren sysu uplo dap whichdebian hom bakhom sedebla abodu abodubla anodume sext rep lo del lmp rmp dta dva h r duh mvi smv cl lyd ux nux rbus fortune vjar jamy javas cve givint wotgit gic gad gico gicom gipu gipul gita gitap greta grevi grepal grepaln ghiho basdif cutf cute cuc sortu wcl wcw ncl di dc pod pud po ptre ptri tred trea treda tred1 tredi tref trefa treda1 tredai ds trenomo trednomo treads treadirs sudo isit mvp mtr p3 ins nins .. cb cba cbi cbia cbiap cbif cbifp cbij cdow cpdf cgeus cgeush treg trega cno cne cpro cprob cprofi cprofinan prov cproeq cproes cprop cprobda cproesi cpru cprue cprupe cpruge cwo cwom cvi csniold cgit cbu clog clom cfco cfcj cfcs cfca cfcl cfclt cetc cusr cuse cus cmnt cww csyn copt cno cban ccyn cnc cncp chtml cide cjn cvin cxl clin clfs cvim cviso sosot covis x rx viosyn htsyn maesyn clogsyn tmpsyn ace ban vif vwhi vfor varra varg vaw vforx varrax vargx vwhilx banh cyn dru vds fyn hiz niz qiz html jan jer lib ndn nes nje njs nxl peg pog tmp ttmp aux todo vap vapa vide vin vinh vip vos vre vta alis bhis envf exrc hos hoss nexrc pfile vimrc suvimrc vlo vuc tuc vuvuc absni scrisni visni viosni cifosni maesni jsonsni mip miq myd vit dil ndev nlo awf cali cowf cutv fed fim grepi i log locli mno opbuk opx owf owfw pa sorto sph swh upbup vnos xnx ncon myq idea sort ls l la lsvio lla lgr lga la1 l1 l1d ll lx sec resec sede sedne sedi sef sefn sefi fd fj finomo fd+ fdin fdn ff finefi finefit fiolfi fiolfit ffnex ffex ff0 ff+ ffin ffn ffn+ fh fin fn frin frn n vnoma vsono nmak ns nin nap nvm cmno cmnoh cmnoc cmnop path moa umu nmtr ipad cip s33 sn34 sw34 tc ap my gomon nomon myta sa nogo nogop nwes gipa giat cdpre smo nat tren val vic maux ete ok cda cde chp chu cifo cifox chau bb car co cdat cla cres csta cth chex clad clap clas cstai cstav cstacss cstajs cvio cti cvio_thu cvio_thu_es cstait cstaif cbox chrev chlearn chgal chport chportmy cbio cht5 choc chuk hnkc hug ishu hugig hugi huga ind iml huno tml vindex chscr bindex bide blfs cdai dido pota gil vix coa cgra dotsni dotxrc gopot gone cas cnva ctd mydes csol grepa greco lof senf anac f tp pxp sk aa crepo trtol cpri rmf cnetli grenet chupro whi sip lp lp2 lpadmin lpc lpinfo lpmove porta spi spig sgi gpp wog closclo gethtmlscifoco clomanov clomano vogskel gv 
syn keyword	maestroKWGreen	 	 documento sourcetext auxiliaries funciones workondom casipi 
syn keyword	maestroKWBlue	 	 python script scripting hugo Hugo HUGO hugo-scripts alisimp binit cdv chugo cloging clomanow clop colors256 ea exrit fastcd fgigul fuit gametsa geus gigul gitit god gol grein grepin hnews lat lawk lopy mvemp nppdf numit open_an_awk_file open_a_python_file port22-abiertoono prc rtra selvv shao shutshut spiing spi_PENDING swog upi vawk viologging gamerun gres cog mkpdf 

syn keyword vioextensions	html htmls css sh json xml tml awk sed c py aux tmp pdf 

syn cluster viospecialWORDS contains=viologKWROX,viologKWVERD,viologKWROS,vioextensions,maestroKWGreen,maestroKWBlue,maestroKWYellow

"==============EL DESDEAQUIAMETSA GRAMATICAL 

syn region vgEntity start=+■_+ end=+_■+ 
syn region vgRelation start=+▲_+ end=+_▲+ 
syn region vgAttribute start=+●_+ end=+_●+ contains=vgEntity

hi def vgEntity ctermbg=123 ctermfg=018
hi def vgRelation ctermbg=227 ctermfg=018
hi def vgAttribute ctermbg=213 ctermfg=047

syn cluster vioTRIPLETE contains=vgEntity,vgRelation,vgAttribute



"1////	GRUPOS DE PALABRAS BÁSICOS ==> VERBOS LOCUCIONES*no*sé*definirlas*como*regions PREPOSICIONES
"VERBOS -> keywords: la definición de syn keyword forma un cluster en la práctica
syn	keyword	viogramaVerbosSER	es son
syn	keyword viogramaVerbosHABER	hay
"LOCUCIONES -> regions -> NO SÉ HACERLAS - cada locucion es una syn, y hay que agruparlas todas en un cluster OJO CON QUE CONTENGAN PREPOSICIONES

"PREPOSICIONES -> una single syn keywords OJO CON LAS LOCUCIONES PREPOSICIONALES
syn keyword	viogramaPREPOSICIONES	a ante bajo cabe con contra de desde durante en entre hacia hasta mediante para por según sin so sobre tras versus vía

"CONJUNCIONES O PRONOMBRES o vioNOSÉ
syn keyword viogramaDobleSyn para por sin mas menos a y e o E Y A O qué que porque tal se
"2//// GRUPOS DE SYNTAX ==> UNDERLINED ITALIC; hi def link
"UNDERLINED
hi	def	viogramaDefUNDERLINED	cterm=underline
"ITALIC
hi	def	viogramaDefITALIC	cterm=italic
"DOBLE DEF
hi	def	viogramaDefDOBLE	cterm=underline,italic

"hi def LINK
hi def link viogramaVerbosSER		viogramaDefUNDERLINED
hi def link viogramaVerbosHABER 	viogramaDefUNDERLINED
hi def link viogramaPREPOSICIONES	viogramaDefITALIC
hi def link viogramaDobleSyn 		viogramaDefDOBLE

"FULL CLUSTER
"1////	grupos de palabras básicos
"2////	grupos de syntax -> contienen los grupos de palabras
syn cluster	viogramaUNDERLINED	contains=@viogramaVERBOS
syn cluster	viogramaITALIC		contains=viogramaPREPOSICIONES
"3////	grupo total -> contiene los grupos de syntax -> que contienen los grupos de palabras
syn cluster	vioGRAMA		contains=@viogramaUNDERLINED,@viogramaITALIC,viogramaDobleSyn,@viospecialWORDS
""""HASTAAQUIAMETSA"


syn region 	vimrcHiRainBowColorY start=+\[+  end=+\]+  contains=@vioGRAMA,@vioHiRainBowColorCluster
syn region 	vimrcHiRainBowColorO start=+ \/\.+  end=+\.\/+ contains=@vioGRAMA,@vioHiRainBowColorCluster
syn region 	vimrcHiRainBowColorG start=+\-\.+  end=+\.\-+ contains=@vioGRAMA,@vioHiRainBowColorCluster
syn region 	vimrcHiRainBowColorB start=-+\.-  end=-\.+- contains=@vioGRAMA,@vioHiRainBowColorCluster
syn region 	vimrcHiRainBowColorR start=+\.\*\*+  end=+\*\*+ contains=@vioGRAMA,@vioHiRainBowColorCluster
syn region 	vimrcHiRainBowColorLR start=+\*\.+  end=+\.\*+ contains=@vioGRAMA,@vioHiRainBowColorCluster

syn cluster	vioHiRainBowColorCluster	contains=vimrcHiRainBowColorY,vimrcHiRainBowColorO,vimrcHiRainBowColorG,vimrcHiRainBowColorB,vimrcHiRainBowColorR,vimrcHiRainBowColorLR
syn cluster     viocluster     				contains=cStatement,vioVIOTAGS,vioVIOTAGSchap,vioVIOTAGSnota,CommentV,vioMIDCOMMENT,cliV,vDest,vioREFTAG,@vioHiRainBowColorCluster
syn cluster	maestrocolore				contains=maestroKWYellow,maestroKWGreen,maestroKWBlue,maestrocoloreAlias



syn region	vioLinkWithinREF start=+http[^<]*+ end=+/*+
syn region  	vioREFTAG 	start=+<ref>+  end=+</ref>+ contains=@vioGRAMA,vioLinkWithinREF extend
syn region 	vioMIDCOMMENT 	start=+\#-\#+  end=+\#-+ contains=@vioGRAMA,@viocluster
syn region	vioDATETIME	start=+^2022-[0-9][0-9]-[0-9][0-9]+ end=+[0-9][0-9]:[0-9][0-9]:[0-9][0-9]+
syn region      vioVIOTAGS	start=+^<[^nota\|imp]+ end=+>+ contains=@vioGRAMA,@viocluster,maestroKWYellow,maestroKWGreen
syn region      vioVIOTAGSnota	start=+^<nota+ end=+>+ contains=@vioGRAMA,@viocluster,maestroKWYellow,maestroKWGreen
syn region      vioVIOTAGSimp	start=+^<imp+ end=+!>+ contains=@vioGRAMA,@viocluster,maestroKWYellow,maestroKWGreen
syn region      vioVIOTAGSchap	start=+^</+ end=+>+ 
syn region      vVIOsuperHI	start=+|+ end=+!|+ contains=@vioGRAMA,@viocluster
syn region      vioQUESTION	start=+¿+ end=+??+ contains=@vioGRAMA,@viocluster

syn match	vCHARS1		"→" 
syn match	vCHARS2		"⇒ " 
syn match	vCHARS3		"»" 
syn match	vCHARS4		">>"
hi def vCHARS1 cterm=bold ctermfg=123
hi def vCHARS2 cterm=bold ctermfg=123
hi def vCHARS3 cterm=bold ctermfg=123
"hi def link vCHARS1 vgEntity
"hi def link vCHARS2 vgEntity
"hi def link vCHARS3 vgEntity
syn match	vCHARSGREEN	"√"
syn match	vCHARSRED	"Х"
syn match       CommentV       	"^\#.*" 		contains=@vioGRAMA,@viocluster
syn match       cliV      	 "^\$.*"
syn match       lslicliVfi 	"[aA-zZ]\+\.[aA-zZ]\+" 	contained 
syn match       lslicliV       	"^→ .*" 		contains=@vioGRAMA,lslicliVfi,viologKWROX,viologKWAMA,viologKWVERD,viologKWAZU,viologKWROS,viologKWORA extend
syn match       vINTRO  "^.*::"
syn match       Vestre  "★"
syn match		Venum	"^[ \|	]\?[0-9]\+\.\?[0-9]\?"
syn match		Venum2	"^[ \|	]\+[0-9]\+[\.\|/]\?[0-9]\?"
hi def	Venum term=bold ctermfg=231
hi def link Venum2 Venum 
hi def Vestre term=bold ctermfg=230


hi def  link vCHARS4	SignColumn
hi def  vimrcHiRainBowColorY term=bold ctermfg=Yellow
hi def  vimrcHiRainBowColorO term=bold ctermfg=215
hi def  vimrcHiRainBowColorG term=bold ctermfg=LightGreen
hi def  vimrcHiRainBowColorB term=bold ctermfg=LightBlue
hi def  vimrcHiRainBowColorR term=bold ctermfg=Red
hi def  vimrcHiRainBowColorLR term=bold ctermfg=LightRed
hi def vioQUESTION ctermfg=121 ctermfg=LightGreen
hi def vVIOsuperHI term=bold ctermbg=188 ctermfg=Blue
hi def vioLinkWithinREF term=bold ctermfg=86 guifg=Blue
hi def CommentV term=bold ctermfg=87 guifg=Cyan
hi def vioMIDCOMMENT term=bold ctermfg=159 guifg=Cyan
hi def  vioVIOTAGSnota term=bold ctermfg=215 guifg=Orange
hi def  vioVIOTAGS term=bold ctermfg=165 guifg=Purple
hi def  vioVIOTAGSchap term=bold ctermfg=165 guifg=Purple
hi def  cliV term=bold ctermbg=188 ctermfg=DarkGreen
hi def  lslicliVfi term=bold ctermbg=188 ctermfg=DarkBlue
hi def  lslicliV term=bold ctermbg=188 ctermfg=DarkYellow
hi def  vINTRO term=bold ctermfg=191
hi def  vCHARS term=bold ctermfg=Yellow
hi def  vCHARSGREEN ctermfg=121 ctermfg=LightGreen
hi def  vCHARSRED term=bold ctermfg=Red
hi def vioMIDCOMMENT ctermfg=cyan guifg=#00ffff
hi def vioREFTAG ctermfg=green guifg=#00ffff
hi def viologKWROS	term=bold ctermbg=188 ctermfg=207
hi def vioextensions	term=bold ctermfg=219
hi def viologKWAZU	term=bold ctermfg=LightBlue
hi def viologKWVERD	term=bold ctermbg=188 ctermfg=LightGreen
hi def viologKWORA	term=bold ctermfg=White  ctermbg=214
hi def viologKWAMA	term=bold ctermfg=Yellow
hi def maestrocoloreAlias	term=bold ctermfg=230

"hi def link vioANY 	vVIOsuperHI
hi def link vioDATETIME		vVIOsuperHI
hi def link vioVIOTAGSimp	vioVIOTAGSnota
hi def link maestroKWYellow	vimrcHiRainBowColorY
hi def link maestroKWGreen	vioQUESTION
hi def link maestroKWBlue	viologKWAZU
hi def link viologKWROX	SpellBad
hi def link cCppString          cString
hi def link cCommentL           cComment
hi def link cLabel              Label
hi def link cConditional        Conditional
hi def link cRepeat             Repeat
hi def link cCharacter          Character
hi def link cNumber             Number
hi def link cFloat              Float
hi def link cOctalError         cError
hi def link cOperator           Operator
hi def link cCppOut             Comment
hi def link cStructure          Structure
hi def link cStatement          Statement
hi def link cType               Type
hi def link cConstant           Constant
hi def link cTodo               Todo

""""""
"ejemplillos... ->
"syn region  cString         start=+\%(U\|u8\=\)"+ skip=+\\\\\|\\"+ end=+"+ contains=@vioGRAMA,cSpecial,cFormat,@Spell extend
hi  x016_Grey0              ctermfg=16   guifg=#000000  "rgb=0,0,0
hi  x017_NavyBlue           ctermfg=17   guifg=#00005f  "rgb=0,0,95

if !exists("c_no_utf")
   syn match     cSpecial        display contained "\\\(u\x\{4}\|U\x\{8}\)"
endif


"""""""""""""""""EL OR VIM FILE

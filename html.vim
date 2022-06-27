" Vim syntax file
" Language:             HTML
" Maintainer:           Jorge Maldonado Ventura <jorgesumle@freakspot.net>
" Previous Maintainer:  Claudio Fleiner <claudio@fleiner.com>
" Repository:           https://notabug.org/jorgesumle/vim-html-syntax
" Last Change:          2020 Mar 17
" Included patch from Florian Breisch to add the summary element
"

" Please check :help html.vim for some comments and a description of the options

" quit when a syntax file was already loaded
if !exists("main_syntax")
  if exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'html'
endif

let s:cpo_save = &cpo
set cpo&vim

syntax spell toplevel

syn case ignore

" mark illegal characters
syn match htmlError "[<>&]"


" tags
syn region  htmlString   contained start=+"+ end=+"+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc
syn region  htmlString   contained start=+'+ end=+'+ contains=htmlSpecialChar,javaScriptExpression,@htmlPreproc
syn match   htmlValue    contained "=[\t ]*[^'" \t>][^ \t>]*"hs=s+1   contains=javaScriptExpression,@htmlPreproc
syn region  htmlEndTag             start=+</+      end=+>+ contains=htmlTagN,htmlTagError
syn region  htmlTag                start=+<[^/]+   end=+>+ fold contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent,htmlCssDefinition,@htmlPreproc,@htmlArgCluster
syn match   htmlTagN     contained +<\s*[-a-zA-Z0-9]\++hs=s+1 contains=htmlTagName,htmlSpecialTagName,@htmlTagNameCluster
syn match   htmlTagN     contained +</\s*[-a-zA-Z0-9]\++hs=s+2 contains=htmlTagName,htmlSpecialTagName,@htmlTagNameCluster
syn match   htmlTagError contained "[^>]<"ms=s+1


" tag names
syn keyword htmlTagName contained address applet area a base basefont
syn keyword htmlTagName contained big blockquote br caption center
syn keyword htmlTagName contained cite code dd dfn dir div dl dt font
syn keyword htmlTagName contained form hr html img
syn keyword htmlTagName contained input isindex kbd li link map menu
syn keyword htmlTagName contained meta ol option param pre p samp span
syn keyword htmlTagName contained select small sub sup
syn keyword htmlTagName contained table td textarea th tr tt ul var xmp
syn match htmlTagName contained "\<\(b\|i\|u\|h[1-6]\|em\|strong\|head\|body\|title\)\>"

" new html 4.0 tags
syn keyword htmlTagName contained abbr acronym bdo button col label
syn keyword htmlTagName contained colgroup fieldset iframe ins legend
syn keyword htmlTagName contained object optgroup q s tbody tfoot thead

" new html 5 tags
syn keyword htmlTagName contained article aside audio bdi canvas data
syn keyword htmlTagName contained datalist details dialog embed figcaption
syn keyword htmlTagName contained figure footer header hgroup keygen main
syn keyword htmlTagName contained mark menuitem meter nav output picture
syn keyword htmlTagName contained progress rb rp rt rtc ruby section
syn keyword htmlTagName contained slot source summary template time track
syn keyword htmlTagName contained video wbr

" legal arg names
syn keyword htmlArg contained action
syn keyword htmlArg contained align alink alt archive background bgcolor
syn keyword htmlArg contained border bordercolor cellpadding
syn keyword htmlArg contained cellspacing checked class clear code codebase color
syn keyword htmlArg contained cols colspan content coords enctype face
syn keyword htmlArg contained gutter height hspace id
syn keyword htmlArg contained link lowsrc marginheight
syn keyword htmlArg contained marginwidth maxlength method name prompt
syn keyword htmlArg contained rel rev rows rowspan scrolling selected shape
syn keyword htmlArg contained size src start target text type url
syn keyword htmlArg contained usemap ismap valign value vlink vspace width wrap
syn match   htmlArg contained "\<\(http-equiv\|href\|title\)="me=e-1

" aria attributes
syn match htmlArg contained "\<\(aria-activedescendant\|aria-atomic\)\>"
syn match htmlArg contained "\<\(aria-autocomplete\|aria-busy\|aria-checked\)\>"
syn match htmlArg contained "\<\(aria-colcount\|aria-colindex\|aria-colspan\)\>"
syn match htmlArg contained "\<\(aria-controls\|aria-current\)\>"
syn match htmlArg contained "\<\(aria-describedby\|aria-details\)\>"
syn match htmlArg contained "\<\(aria-disabled\|aria-dropeffect\)\>"
syn match htmlArg contained "\<\(aria-errormessage\|aria-expanded\)\>"
syn match htmlArg contained "\<\(aria-flowto\|aria-grabbed\|aria-haspopup\)\>"
syn match htmlArg contained "\<\(aria-hidden\|aria-invalid\)\>"
syn match htmlArg contained "\<\(aria-keyshortcuts\|aria-label\)\>"
syn match htmlArg contained "\<\(aria-labelledby\|aria-level\|aria-live\)\>"
syn match htmlArg contained "\<\(aria-modal\|aria-multiline\)\>"
syn match htmlArg contained "\<\(aria-multiselectable\|aria-orientation\)\>"
syn match htmlArg contained "\<\(aria-owns\|aria-placeholder\|aria-posinset\)\>"
syn match htmlArg contained "\<\(aria-pressed\|aria-readonly\|aria-relevant\)\>"
syn match htmlArg contained "\<\(aria-required\|aria-roledescription\)\>"
syn match htmlArg contained "\<\(aria-rowcount\|aria-rowindex\|aria-rowspan\)\>"
syn match htmlArg contained "\<\(aria-selected\|aria-setsize\|aria-sort\)\>"
syn match htmlArg contained "\<\(aria-valuemax\|aria-valuemin\)\>"
syn match htmlArg contained "\<\(aria-valuenow\|aria-valuetext\)\>"
syn keyword htmlArg contained role

" Netscape extensions
syn keyword htmlTagName contained frame noframes frameset nobr blink
syn keyword htmlTagName contained layer ilayer nolayer spacer
syn keyword htmlArg     contained frameborder noresize pagex pagey above below
syn keyword htmlArg     contained left top visibility clip id noshade
syn match   htmlArg     contained "\<z-index\>"

" Microsoft extensions
syn keyword htmlTagName contained marquee

" html 4.0 arg names
syn match   htmlArg contained "\<\(accept-charset\|label\)\>"
syn keyword htmlArg contained abbr accept accesskey axis char charoff charset
syn keyword htmlArg contained cite classid codetype compact data datetime
syn keyword htmlArg contained declare defer dir disabled for frame
syn keyword htmlArg contained headers hreflang lang language longdesc
syn keyword htmlArg contained multiple nohref nowrap object profile readonly
syn keyword htmlArg contained rules scheme scope span standby style
syn keyword htmlArg contained summary tabindex valuetype version

" html 5 arg names
syn keyword htmlArg contained allowfullscreen async autocomplete autofocus
syn keyword htmlArg contained autoplay challenge contenteditable contextmenu
syn keyword htmlArg contained controls crossorigin default dirname download
syn keyword htmlArg contained draggable dropzone form formaction formenctype
syn keyword htmlArg contained formmethod formnovalidate formtarget hidden
syn keyword htmlArg contained high icon inputmode keytype kind list loop low
syn keyword htmlArg contained max min minlength muted nonce novalidate open
syn keyword htmlArg contained optimum pattern placeholder poster preload
syn keyword htmlArg contained radiogroup required reversed sandbox spellcheck
syn keyword htmlArg contained sizes srcset srcdoc srclang step title translate
syn keyword htmlArg contained typemustmatch

" special characters
syn match htmlSpecialChar "&#\=[0-9A-Za-z]\{1,8};"

" Comments (the real ones or the old netscape ones)
if exists("html_wrong_comments")
  syn region htmlComment                start=+<!--+    end=+--\s*>+ contains=@Spell
else
  syn region htmlComment                start=+<!+      end=+>+   contains=htmlCommentPart,htmlCommentError,@Spell
  syn match  htmlCommentError contained "[^><!]"
  syn region htmlCommentPart  contained start=+--+      end=+--\s*+  contains=@htmlPreProc,@Spell
endif
syn region htmlComment                  start=+<!DOCTYPE+ keepend end=+>+

" server-parsed commands
syn region htmlPreProc start=+<!--#+ end=+-->+ contains=htmlPreStmt,htmlPreError,htmlPreAttr
syn match htmlPreStmt contained "<!--#\(config\|echo\|exec\|fsize\|flastmod\|include\|printenv\|set\|if\|elif\|else\|endif\|geoguide\)\>"
syn match htmlPreError contained "<!--#\S*"ms=s+4
syn match htmlPreAttr contained "\w\+=[^"]\S\+" contains=htmlPreProcAttrError,htmlPreProcAttrName
syn region htmlPreAttr contained start=+\w\+="+ skip=+\\\\\|\\"+ end=+"+ contains=htmlPreProcAttrName keepend
syn match htmlPreProcAttrError contained "\w\+="he=e-1
syn match htmlPreProcAttrName contained "\(expr\|errmsg\|sizefmt\|timefmt\|var\|cgi\|cmd\|file\|virtual\|value\)="he=e-1

if !exists("html_no_rendering")
  " rendering
  syn cluster htmlTop contains=@Spell,htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLink,javaScript,@htmlPreproc

  syn region htmlStrike start="<del\>" end="</del\_s*>"me=s-1 contains=@htmlTop
  syn region htmlStrike start="<strike\>" end="</strike\_s*>"me=s-1 contains=@htmlTop

  syn region htmlBold start="<b\>" end="</b\_s*>"me=s-1 contains=@htmlTop,htmlBoldUnderline,htmlBoldItalic
  syn region htmlBold start="<strong\>" end="</strong\_s*>"me=s-1 contains=@htmlTop,htmlBoldUnderline,htmlBoldItalic
  syn region htmlBoldUnderline contained start="<u\>" end="</u\_s*>"me=s-1 contains=@htmlTop,htmlBoldUnderlineItalic
  syn region htmlBoldItalic contained start="<i\>" end="</i\_s*>"me=s-1 contains=@htmlTop,htmlBoldItalicUnderline
  syn region htmlBoldItalic contained start="<em\>" end="</em\_s*>"me=s-1 contains=@htmlTop,htmlBoldItalicUnderline
  syn region htmlBoldUnderlineItalic contained start="<i\>" end="</i\_s*>"me=s-1 contains=@htmlTop
  syn region htmlBoldUnderlineItalic contained start="<em\>" end="</em\_s*>"me=s-1 contains=@htmlTop
  syn region htmlBoldItalicUnderline contained start="<u\>" end="</u\_s*>"me=s-1 contains=@htmlTop,htmlBoldUnderlineItalic

  syn region htmlUnderline start="<u\>" end="</u\_s*>"me=s-1 contains=@htmlTop,htmlUnderlineBold,htmlUnderlineItalic
  syn region htmlUnderlineBold contained start="<b\>" end="</b\_s*>"me=s-1 contains=@htmlTop,htmlUnderlineBoldItalic
  syn region htmlUnderlineBold contained start="<strong\>" end="</strong\_s*>"me=s-1 contains=@htmlTop,htmlUnderlineBoldItalic
  syn region htmlUnderlineItalic contained start="<i\>" end="</i\_s*>"me=s-1 contains=@htmlTop,htmlUnderlineItalicBold
  syn region htmlUnderlineItalic contained start="<em\>" end="</em\_s*>"me=s-1 contains=@htmlTop,htmlUnderlineItalicBold
  syn region htmlUnderlineItalicBold contained start="<b\>" end="</b\_s*>"me=s-1 contains=@htmlTop
  syn region htmlUnderlineItalicBold contained start="<strong\>" end="</strong\_s*>"me=s-1 contains=@htmlTop
  syn region htmlUnderlineBoldItalic contained start="<i\>" end="</i\_s*>"me=s-1 contains=@htmlTop
  syn region htmlUnderlineBoldItalic contained start="<em\>" end="</em\_s*>"me=s-1 contains=@htmlTop

  syn region htmlItalic start="<i\>" end="</i\_s*>"me=s-1 contains=@htmlTop,htmlItalicBold,htmlItalicUnderline
  syn region htmlItalic start="<em\>" end="</em\_s*>"me=s-1 contains=@htmlTop
  syn region htmlItalicBold contained start="<b\>" end="</b\_s*>"me=s-1 contains=@htmlTop,htmlItalicBoldUnderline
  syn region htmlItalicBold contained start="<strong\>" end="</strong\_s*>"me=s-1 contains=@htmlTop,htmlItalicBoldUnderline
  syn region htmlItalicBoldUnderline contained start="<u\>" end="</u\_s*>"me=s-1 contains=@htmlTop
  syn region htmlItalicUnderline contained start="<u\>" end="</u\_s*>"me=s-1 contains=@htmlTop,htmlItalicUnderlineBold
  syn region htmlItalicUnderlineBold contained start="<b\>" end="</b\_s*>"me=s-1 contains=@htmlTop
  syn region htmlItalicUnderlineBold contained start="<strong\>" end="</strong\_s*>"me=s-1 contains=@htmlTop

  syn match htmlLeadingSpace "^\s\+" contained
  syn region htmlLink start="<a\>\_[^>]*\<href\>" end="</a\_s*>"me=s-1 contains=@Spell,htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLeadingSpace,javaScript,@htmlPreproc
  syn region htmlH1 start="<h1\>" end="</h1\_s*>"me=s-1 contains=@htmlTop
  syn region htmlH2 start="<h2\>" end="</h2\_s*>"me=s-1 contains=@htmlTop
  syn region htmlH3 start="<h3\>" end="</h3\_s*>"me=s-1 contains=@htmlTop
  syn region htmlH4 start="<h4\>" end="</h4\_s*>"me=s-1 contains=@htmlTop
  syn region htmlH5 start="<h5\>" end="</h5\_s*>"me=s-1 contains=@htmlTop
  syn region htmlH6 start="<h6\>" end="</h6\_s*>"me=s-1 contains=@htmlTop
  syn region htmlHead start="<head\>" end="</head\_s*>"me=s-1 end="<body\>"me=s-1 end="<h[1-6]\>"me=s-1 contains=htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,htmlLink,htmlTitle,javaScript,cssStyle,@htmlPreproc
  syn region htmlTitle start="<title\>" end="</title\_s*>"me=s-1 contains=htmlTag,htmlEndTag,htmlSpecialChar,htmlPreProc,htmlComment,javaScript,@htmlPreproc
endif

syn keyword htmlTagName         contained noscript
syn keyword htmlSpecialTagName  contained script style
if main_syntax != 'java' || exists("java_javascript")
  " JAVA SCRIPT
  syn include @htmlJavaScript syntax/javascript.vim
  unlet b:current_syntax
  syn region  javaScript start=+<script\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlJavaScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
  syn region  htmlScriptTag     contained start=+<script+ end=+>+ fold contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent
  hi def link htmlScriptTag htmlTag

  " html events (i.e. arguments that include javascript commands)
  if exists("html_extended_events")
    syn region htmlEvent        contained start=+\<on\a\+\s*=[\t ]*'+ end=+'+ contains=htmlEventSQ
    syn region htmlEvent        contained start=+\<on\a\+\s*=[\t ]*"+ end=+"+ contains=htmlEventDQ
  else
    syn region htmlEvent        contained start=+\<on\a\+\s*=[\t ]*'+ end=+'+ keepend contains=htmlEventSQ
    syn region htmlEvent        contained start=+\<on\a\+\s*=[\t ]*"+ end=+"+ keepend contains=htmlEventDQ
  endif
  syn region htmlEventSQ        contained start=+'+ms=s+1 end=+'+me=s-1 contains=@htmlJavaScript
  syn region htmlEventDQ        contained start=+"+ms=s+1 end=+"+me=s-1 contains=@htmlJavaScript
  hi def link htmlEventSQ htmlEvent
  hi def link htmlEventDQ htmlEvent

  " a javascript expression is used as an arg value
  syn region  javaScriptExpression contained start=+&{+ keepend end=+};+ contains=@htmlJavaScript,@htmlPreproc
endif

if main_syntax != 'java' || exists("java_vb")
  " VB SCRIPT
  syn include @htmlVbScript syntax/vb.vim
  unlet b:current_syntax
  syn region  javaScript start=+<script \_[^>]*language *=\_[^>]*vbscript\_[^>]*>+ keepend end=+</script\_[^>]*>+me=s-1 contains=@htmlVbScript,htmlCssStyleComment,htmlScriptTag,@htmlPreproc
endif

syn cluster htmlJavaScript      add=@htmlPreproc

if main_syntax != 'java' || exists("java_css")
  " embedded style sheets
  syn keyword htmlArg           contained media
  syn include @htmlCss syntax/css.vim
  unlet b:current_syntax
  syn region cssStyle start=+<style+ keepend end=+</style>+ contains=@htmlCss,htmlTag,htmlEndTag,htmlCssStyleComment,@htmlPreproc
  syn match htmlCssStyleComment contained "\(<!--\|-->\)"
  syn region htmlCssDefinition matchgroup=htmlArg start='style="' keepend matchgroup=htmlString end='"' contains=css.*Attr,css.*Prop,cssComment,cssLength,cssColor,cssURL,cssImportant,cssError,cssString,@htmlPreproc
  hi def link htmlStyleArg htmlString
endif

if main_syntax == "html"
  " synchronizing (does not always work if a comment includes legal
  " html tags, but doing it right would mean to always start
  " at the first line, which is too slow)
  syn sync match htmlHighlight groupthere NONE "<[/a-zA-Z]"
  syn sync match htmlHighlight groupthere javaScript "<script"
  syn sync match htmlHighlightSkip "^.*['\"].*$"
  syn sync minlines=10
endif

" The default highlighting.
hi def link htmlTag                     Function
hi def link htmlEndTag                  Identifier
hi def link htmlArg                     Type
hi def link htmlTagName                 htmlStatement
hi def link htmlSpecialTagName          Exception
hi def link htmlValue                     String
hi def link htmlSpecialChar             Special

if !exists("html_no_rendering")
  hi def link htmlH1                      Title
  hi def link htmlH2                      htmlH1
  hi def link htmlH3                      htmlH2
  hi def link htmlH4                      htmlH3
  hi def link htmlH5                      htmlH4
  hi def link htmlH6                      htmlH5
  hi def link htmlHead                    PreProc
  hi def link htmlTitle                   Title
  hi def link htmlBoldItalicUnderline     htmlBoldUnderlineItalic
  hi def link htmlUnderlineBold           htmlBoldUnderline
  hi def link htmlUnderlineItalicBold     htmlBoldUnderlineItalic
  hi def link htmlUnderlineBoldItalic     htmlBoldUnderlineItalic
  hi def link htmlItalicUnderline         htmlUnderlineItalic
  hi def link htmlItalicBold              htmlBoldItalic
  hi def link htmlItalicBoldUnderline     htmlBoldUnderlineItalic
  hi def link htmlItalicUnderlineBold     htmlBoldUnderlineItalic
  hi def link htmlLink                    Underlined
  hi def link htmlLeadingSpace            None
  if !exists("html_my_rendering")
    hi def htmlBold                term=bold cterm=bold gui=bold
    hi def htmlBoldUnderline       term=bold,underline cterm=bold,underline gui=bold,underline
    hi def htmlBoldItalic          term=bold,italic cterm=bold,italic gui=bold,italic
    hi def htmlBoldUnderlineItalic term=bold,italic,underline cterm=bold,italic,underline gui=bold,italic,underline
    hi def htmlUnderline           term=underline cterm=underline gui=underline
    hi def htmlUnderlineItalic     term=italic,underline cterm=italic,underline gui=italic,underline
    hi def htmlItalic              term=italic cterm=italic gui=italic
    if v:version > 800 || v:version == 800 && has("patch1038")
        hi def htmlStrike              term=strikethrough cterm=strikethrough gui=strikethrough
    else
        hi def htmlStrike              term=underline cterm=underline gui=underline
    endif
  endif
endif

hi def link htmlPreStmt            PreProc
hi def link htmlPreError           Error
hi def link htmlPreProc            PreProc
hi def link htmlPreAttr            String
hi def link htmlPreProcAttrName    PreProc
hi def link htmlPreProcAttrError   Error
hi def link htmlSpecial            Special
hi def link htmlSpecialChar        Special
hi def link htmlString             String
hi def link htmlStatement          Statement
hi def link htmlComment            Comment
hi def link htmlCommentPart        Comment
hi def link htmlValue              String
hi def link htmlCommentError       htmlError
hi def link htmlTagError           htmlError
hi def link htmlEvent              javaScript
hi def link htmlError              Error

hi def link javaScript             Special
hi def link javaScriptExpression   javaScript
hi def link htmlCssStyleComment    Comment
hi def link htmlCssDefinition      Special

let b:current_syntax = "html"

if main_syntax == 'html'
  unlet main_syntax
endif

let &cpo = s:cpo_save
unlet s:cpo_save
" vim: ts=8
"=========================== pluses VIOSYN ============>
syn region      vioQUESTION start=+¿+ end=+?+  contains=@viogramaUNDERLINED,@viogramaITALIC,viogramaDobleSyn,@mykeywords,@tiposdepalabras,@palabrasmagicas
hi def vioQUESTION ctermfg=121 ctermfg=LightGreen
syn match viookk "√"
syn match vioNokk "Х"
hi def link viookk vioQUESTION
hi def vioNokk cterm=bold ctermfg=9

syn keyword     mykeywordsROX      ATT 2xATT
syn keyword     mykeywordsROX2     PREGUNTA
syn keyword     mykeywordsVERD     PENDING
syn keyword     mykeywordsAZU      yuhuuu
syn keyword     mykeywordsROS      SOLVED
syn cluster     mykeywords  contains=mykeywordsROS,mykeywordsROX,mykeywordsVERD,mykeywordsAZU
hi def mykeywordsROS    term=bold ctermbg=188 ctermfg=207
hi def mykeywordsAZU    term=bold ctermbg=188 ctermfg=87
hi def mykeywordsVERD   term=bold ctermbg=188 ctermfg=191
hi def mykeywordsROX2   term=bold ctermbg=Yellow ctermfg=Green
hi def link mykeywordsROX   SpellBad


"==============EL DESDEAQUIAMETSA GRAMATICAL 
"
"BASIC REGIONS ⇒  
"1/ quoted
syn region vQuoted start=+ "+ end=+"[ |,]+ 
hi def vQuoted cterm=bold,italic
"2/ underlined ⇒  
syn region vUnderlined start=+ _+ end=+_ + 
hi def vUnderlined cterm=bold,underline

syn match vNumBas1 "^[0-9]\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?"
syn match vNumBas2 "^ \?\.\? \?\t\+[0-9]\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?[0-9]\?\.\?"
syn cluster vNumBas contains=vNumBas1,vNumBas2
hi def vNumBas1 cterm=bold ctermfg=Yellow 
hi def link vNumBas2 vNumBas
" AMPLÍO A $_e{entity} $_r{relation} , $_a{attribute}  
" $_e{entity} $_r{rel}   $_a{at} $_r{rel}  

syn region vgEntity start=+■_+ end=+_■+ 
syn region vgRelation start=+▲_+ end=+_▲+ 
syn region vgAttribute start=+●_+ end=+_●+ contains=vgEntity

hi def vgEntity ctermbg=123 ctermfg=018
hi def vgRelation ctermbg=227 ctermfg=018
hi def vgAttribute ctermbg=213 ctermfg=047

syn cluster vioTRIPLETE contains=vgEntity,vgRelation,vgAttribute

"SUBRAYADOS DE COLORINES
syn region subraamari start=+\[+ end=+\]+
hi def subraamari ctermbg=226 ctermfg=00
syn region subraverdi start=+|+ end=+|+
hi def subraverdi ctermbg=154 ctermfg=00
"
"1////	GRUPOS DE PALABRAS 
syn keyword viogramaVerbosSERestarParecer es Es son Son era Era eran Eran está Está Están Están estaba Estaba estaban Estaban parece Parece parecen Parecen parecía Parecía parecían Parecían
syn keyword viogramaVerbosHABER hay Hay ha Ha han Han había Había hubo Hubo habría Habría habrían Habrían hubiera Hubiera hubieran Hubieran hubiese Hubiese hubiesen Hubiesen

syn keyword adverbiosCalidad  bien mal mejor peor regular despacio deprisa tal como adrede claro exacto obvio inclusive además asimismo únicamente especialmente incluso viceversa siquiera inicialmente finalmente Bien Mal Mejor Peor Regular Despacio Deprisa Tal Como Adrede Claro Exacto Obvio Inclusive Además Asimismo Únicamente Especialmente Incluso Viceversa Siquiera Inicialmente Finalmente exponencial exponenciales
syn keyword adverbiosCantidad más menos muy mucho poco apenas algo casi aproximadamente exactamente bastante justo demasiado etcétera solo solamente tan tanto todo nada cómo cuándo cuánto cuál cuáles dónde Más Menos Muy Mucho Poco Apenas Algo Casi Aproximadamente Exactamente Bastante Justo Demasiado Etcétera Solo Solamente Tan Tanto Todo Nada Cómo Cuándo Cuánto Cuál Cuáles cada
syn keyword adverbiosPosibilidad siempre nunca jamás también tampoco quizá quizás acaso fácilmente difícilmente probablemente posiblemente seguramente Siempre Nunca Jamás También Tampoco Quizá Quizás Acaso Fácilmente Difícilmente Probablemente Posiblemente Seguramente OR NOT AND
syn keyword adverbiosTemporales antes anteriormente actualmente ahora enseguida inmediatamente ya todavía aún recién mientras después luego pronto tarde temprano ayer anoche hoy mañana denuevo próximamente Antes Anteriormente Actualmente Ahora Enseguida Inmediatamente Ya Todavía Aún Recién Mientras Después Luego Pronto Tarde Temprano Ayer Anoche Hoy Mañana Denuevo Próximamente
syn keyword adverbiosUbicacion arriba encima abajo debajo adelante delante atrás detrás centro medio alrededor enfrente cerca lejos adentro dentro afuera fuera aquí acá ahí ahi allá allí donde Arriba Encima Abajo Debajo Adelante Delante Atrás Detrás Centro Medio Alrededor Enfrente Cerca Lejos Adentro Dentro Afuera Fuera Aquí Acá Ahí Ahi Allá Allí Donde así adonde dónde Así Adonde Dónde
syn keyword adverbiosOtros así adonde dónde Así Adonde Dónde
syn keyword preposiciones a al ante bajo con contra de del desde durante en entre hacia hasta mediante para por según sin sobre tras A Al Ante Bajo Con Contra De Del Desde Durante En Entre Hacia Hasta Mediante Para Por Según Sin Sobre Tras
syn keyword conjunciones aunque como cuando entonces excepto ni o pero porque pues que salvo si sino y Aunque Como Cuando Entonces Excepto Ni O Pero Porque Pues Que Salvo Si Sino Ya 
syn keyword pronombresPersonales yo tú vos usted él ella ello nosotros nosotras vosotros vosotras ustedes ellos ellas mí conmigo ti contigo sí no consigo me te le lo se nos os Yo Tú Vos Usted Él Ella Ello Nosotros Nosotras Vosotros Vosotras Ustedes Ellos Ellas Mí Conmigo Ti Contigo Sí Consigo Me Te Le Lacual Lo Se Nos Os
syn match pronombresPersonalesAmbiguos1 "\(la que\)" contained
syn match pronombresPersonalesAmbiguos2 "\(la cual\)" contained
syn match pronombresPersonalesAmbiguos3 "\(La que\)" contained
syn match pronombresPersonalesAmbiguos4 "\(La cual\)" contained
syn keyword articulosDeterminados el la los las El La Los Las
syn keyword pronombresPosesivos mío mía tuyo tuya suyo suya nuestro nuestra vuestro vuestra cuyo cuya Mío Mía Tuyo Tuya Suyo Suya Nuestro Nuestra Vuestro Vuestra Cuyo Cuya
syn keyword pronombresIndefinidos un una uno algún alguna algo ninguno ninguna nada varios varias otro otra mismo misma tan tanto tanta alguien nadie cualquiera ambos demás Un Una Uno Algún Alguna Algo Ninguno Ninguna Nada Varios Varias Otro Otra Mismo Misma Tan Tanto Tanta Alguien Nadie Cualquiera Ambos Demás dos tres cuatro cinco seis siete ocho nueve diez once doce cien doscientos mil miles cientos decenas docenas 
syn keyword pronombresInterrogativos cuál cuánto quién qué Cuál Cuánto Quién Qué
syn keyword demostrativos este esta esto estos estas ese esa eso esos esas aquel aquella aquello aquellos aquellas Este Esta Esto Estos Estas Ese Esa Eso Esos Esas Aquel Aquella Aquello Aquellos Aquellas
syn keyword viogramaDobleSyn1 y o e Y O E QUÉ QUE PORQUE qué que porque 
syn keyword viogramaMagicas1 amperio Amperio amperios Amperios caloría Caloría calorías Calorías culombio Culombio culombios Culombios gramo Gramo gramos Gramos julio Julio julios Julios kilo Kilo kilos Kilos metro Metro metros Metros newton Newton newtons Newtons ohmnio Ohmnio ohmnios Ohmnios segundo Segundo segundos Segundos siemen Siemen siemens Siemens voltio Voltio voltios Voltios watio Watio watios Watios kilowatio kilowatios faradio faradios
syn match dashed1 "kilowatio-hora"
syn match       Vestre  "★"
hi def Vestre term=bold ctermfg=230
syn match       Venum   "^[ \|  ]\?[0-9]\+\.\?[0-9]\?"
syn match       Venum2  "^[ \|  ]\+[0-9]\+[\.\|/]\?[0-9]\?"
hi def  Venum term=bold ctermfg=231
hi def link Venum2 Venum
syn keyword viogramaMagicas2 campo Campo corriente Corriente corrientes Corrientes electromagnetic Electromagnetic eelectromotivo Electromotivo lectromotive Electromotive eléctrico eléctrica eléctricos eléctricas magnético magnética magnéticos magnéticas electricidad Eléctrico Eléctrica Eléctricos Eléctricas Magnético Magnética Magnéticos Magnéticas Electricidad Magnetismo Electromagnetismo Electromagnético Electromagnética Electrónico Electrónicos Electrónica Electrónicas electrónico electrónicos electrónica electrónicas continua Continua alterna Alterna circuito Circuito circuitos Circuitos monofásico monofásicos trifásico trifásicos monofásica monofásicas trifásica trifásicas 

syn keyword viogramaMagicas3 carga Carga cargas Cargas charge Charge force Force fuerza Fuerza polo polos polar polares bipolo bipolar bipolares tripolo tripolar tripolares tetrapolo tetrapolar tetrapolares multipolo multipolar multipolares polarización polarizaciones directa inversa
syn keyword viogramaMagicas4 ddp Ddp intensidad Intensidad potencia Potencia potencial Potencial potential Potential presión Presión resistencia Resistencia tensión Tensión tensiones Tensiones voltajes Voltajes voltaje Voltaje impedancia Impedancia energía Energía energías Energías intensidades resistencias potenciales resistencias impedancias condensador condensadores bobina bobinas diodo diodos transistor transistores bjt ganancia beta amplificador amplificadores convertidor convertidores tiristor tiristores scr gto mosfet mosfet-n mosfet-p nmos pmos igbt rectificador rectificadores inversor inversores pwm
syn keyword viogramaMagicas5 capacidad Capacidad parámetro Parámetro parámetros Parámetros relación Relación relaciones Relaciones serie Serie series Series transferencia Transferencia paralelo Paralelo mixto Mixto mixta Mixta sistema Sistema sistemas Sistemas trabajo Trabajo trabajos Trabajos perfil perfiles sección seccionar seccionado secciona dimensión dimensionar dimensionado dimensiona pn np npn pnp b c d e f g h i j k l m n p q r s t u v w barrera binario binarios binaria binarias bit bits msb lsb palabra palabras señal señales línea líneas base bases exponente exponentes resolución resolucionesa Ā  
syn keyword hola unidad unidades Unidad Unidades
hi def hola cterm=bold,italic ctermfg=LightBlue
syn keyword viogramaMagicas6 capacitance Capacitance capacitor Capacitor inducción Inducción inductancia Inductancia induction Induction inductor Inductor inductores Inductores resistor Resistor resistors Resistors inductivo Inductivo inductiva Inductiva inductivos Inductivos inductivas Inductivas capacitivo Capacitivo capacitiva Capacitiva capacitivos Capacitivos capacitivas Capacitivas 
syn keyword viogramaMagicas7 bobinado Bobinado coil Coil conmutador Conmutador generador Generador generadores Generadores generator Generator rotor Rotor solenoide Solenoide solenoides Solenoides stator Stator wire Wire interruptor Interruptor interruptores Interruptores magnetotérmico magnetotérmicos Magnetotérmico Magnetotérmicos diferencial Diferencial diferenciales Diferenciales conmutador conmutadores pulsador pulsadores pulsado pulsar pulsa telerruptor telerruptores
syn region  vimrcHiOneColorDO start=+{+  end=+}+
hi def  vimrcHiOneColorDO term=bold ctermbg=215 ctermfg=21
syn cluster viogramaDobleSyn contains=viogramaDobleSyn1,viogramaMagicas1,viogramaMagicas2,viogramaMagicas3
"2//// GRUPOS DE SYNTAX ==> UNDERLINED ITALIC; hi def link
"UNDERLINED
hi	def	viogramaDefUNDERLINED	cterm=underline
"ITALIC
hi	def	viogramaDefITALIC	cterm=italic
"DOBLE DEF
hi	def	viogramaDefDOBLE	cterm=bold,underline,italic  ctermfg=123 
hi	def	viogramaDefDOBLE2	cterm=bold,underline,italic  ctermfg=194
"COLORINES

syn cluster pronombresPersonalesAmbiguos contains=pronombresPersonalesAmbiguos1,pronombresPersonalesAmbiguos2,pronombresPersonalesAmbiguos3,pronombresPersonalesAmbiguos4

syn cluster tiposdepalabras contains=adverbiosCalidad,adverbiosCantidad,adverbiosPosibilidad,adverbiosPosibilidad,adverbiosTemporales,adverbiosUbicacion,adverbiosOtros,preposiciones,conjunciones,pronombresPersonalesAmbiguos,pronombresPersonales,pronombresPosesivos,pronombresIndefinidos,pronombresInterrogativos,demostrativos,articulosDeterminados
syn cluster palabrasmagicas contains=viogramaMagicas1,viogramaMagicas2,viogramaMagicas3,viogramaMagicas4,viogramaMagicas5,viogramaMagicas6,viogramaMagicas7
hi  def adverbiosCalidad ctermfg=210
hi  def adverbiosCantidad ctermfg=220
hi  def adverbiosPosibilidad ctermfg=195
hi  def adverbiosTemporales ctermfg=195
hi  def adverbiosUbicacion ctermfg=122
hi  def adverbiosOtros ctermfg=49
hi  def preposiciones ctermfg=82    
hi  def conjunciones ctermfg=215
hi  def pronombresPersonales ctermfg=219
hi  def pronombresPersonalesAmbiguos ctermfg=219
hi  def pronombresPosesivos ctermfg=190
hi  def pronombresIndefinidos ctermfg=226
hi  def pronombresInterrogativos ctermfg=207
hi  def demostrativos ctermfg=198
hi  def articulosDeterminados ctermfg=189 cterm=italic

"hi def LINK
hi def link viogramaVerbosSERestarParecer	viogramaDefDOBLE
hi def link viogramaVerbosHABER viogramaDefDOBLE
hi def link viogramaLOCUCIONES	viogramaDefITALIC
hi def link viogramaPREPOSICIONES	viogramaDefITALIC
hi def link viogramaDobleSyn1 	viogramaDefDOBLE
hi def link viogramaMagicas1 	viogramaDefDOBLE2
hi def link dashed1 	viogramaDefDOBLE2
hi	def	viogramaMagicas2	cterm=bold,italic  ctermfg=225
hi	def	viogramaMagicas3	cterm=bold,italic  ctermfg=117
hi	def	viogramaMagicas4	cterm=bold,italic  ctermfg=154
hi	def	viogramaMagicas5	cterm=bold,italic  ctermfg=231
hi	def	viogramaMagicas6	cterm=bold,italic  ctermfg=207
hi	def	viogramaMagicas7	cterm=bold,italic  ctermfg=183

"FULL CLUSTER
"1////	grupos de palabras básicos
syn cluster	viogramaVERBOS		contains=viogramaVerbosSERestarParecer,viogramaVerbosHABER
syn cluster	viogramaLOCUCIONES	contains=viogramaLocucionHAYQUE,viogramaLocucionPARAQUE
"2////	grupos de syntax -> contienen los grupos de palabras
syn cluster	viogramaUNDERLINED	contains=@viogramaVERBOS
syn cluster	viogramaITALIC		contains=viogramaPREPOSICIONES,@viogramaLOCUCIONES
"3////	grupo total -> contiene los grupos de syntax -> que contienen los grupos de palabras
syn cluster	vioGRAMA		contains=@viogramaUNDERLINED,@viogramaITALIC,viogramaDobleSyn,@pronombresPersonalesAmbiguos
""""HASTAAQUIAMETSA"

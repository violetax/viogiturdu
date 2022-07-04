set sw=2
" TIP: if you write your \label's as \label{fig:something}, then if you
"     " type in \ref{fig: and press <C-n>you will automatically cycle through
"         " all the figure labels.
			
set iskeyword+=:
"suppres latex with:
"let b:suppress_latex_suite = 1

"set template-dirs -- DEFAULT: ./bundle/vim-latex-1.10.0/ftplugin/latex-suite/templates
let g:Tex_CustomTemplateDirectory='~/.vim/bundle/vim-latex-1.10.0/custom-templates-vio/'

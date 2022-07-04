let s:filen = expand('%:t')
let s:ext = expand('%:e') 
let s:path = expand('%:p:h') 
"tolower(expand('%:p'))

function! Comment()
  if s:path =~ 'bin' || s:path =~ 'pruebas' || s:ext == 'php' || s:ext == 'rb' || s:ext == 'sh' || s:ext == 'py' || s:ext == 'toml' || s:ext == 'awk'
    silent s/^/\#/
  elseif s:ext == 'tex'
	  silent s/^/% /
  elseif s:ext == 'js'
    silent s:^:\/\/:g
  elseif s:ext == 'vim' || s:filen == '.vimrc'
    silent s:^:\":g
  elseif s:ext == 'html'
	 silent s/^/<!-- /
	 silent s/$/ -->/
  elseif s:ext == 'css'
	  silent s:^:/* :
	  silent s:$: */:
  elseif s:ext == 'c'
	  silent s:^://:
echom s:path
echom s:ext
  endif
endfunction

function! Uncomment()
  if s:path =~ 'bin' || s:ext == 'php' || s:ext == 'rb' || s:ext == 'sh' || s:ext == 'py' || s:ext == 'toml' || s:ext == 'awk' 
    silent s/^\#//
  elseif s:ext == 'tex'
	  silent s/^% \?//
  elseif s:ext == 'js'
    silent s:^\/\/::g
  elseif s:ext == 'vim' || s:filen == '.vimrc'
    silent s:^\"::g
  elseif s:ext == 'html'
	  silent s/^<!-- //
	  silent s/ -->$//
  elseif s:ext == 'css'
	  silent s:^/* ::
	  silent s: */$::
  elseif s:ext == 'c'
	  silent s:^//::
  endif
endfunction

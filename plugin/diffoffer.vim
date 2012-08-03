" diff
function! s:toggle_diff()
	if &diff
		diffoff
	else
		diffthis
	endif
endfunction

command! DiffofferToggleDiff :call <SID>toggle_diff()

" filler
function! s:toggle_filler()
	if count(split(&diffopt, ','), 'filler') == 0
		setlocal diffopt+=filler
	else
		setlocal diffopt-=filler
	endif
endfunction

command! DiffofferToggleFiller :call <SID>toggle_filler()

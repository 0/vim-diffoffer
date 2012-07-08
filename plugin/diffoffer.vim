function! s:toggle()
	if &diff
		diffoff
	else
		diffthis
	endif
endfunction

command! DiffofferToggle :call <SID>toggle()

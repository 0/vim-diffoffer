" diff
function! s:toggle_diff()
	if &diff
		diffoff
	else
		diffthis
	endif
endfunction

command! DiffofferToggleDiff :call <SID>toggle_diff()

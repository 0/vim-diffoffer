" diff
function! s:toggle_diff()
	if &diff
		diffoff

		" Restore the saved options.
		if exists('b:diffoffer_options')
			execute 'setlocal' b:diffoffer_options
		endif
	else
		" Save the options that :diffoff doesn't restore.
		redir => l:set
		silent execute 'set scrollbind? cursorbind? scrollopt? wrap? foldmethod? foldcolumn?'
		redir END

		" Get rid of the NULs that :set inserts.
		let b:diffoffer_options = substitute(l:set, '[\x00]', ' ', 'g')

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

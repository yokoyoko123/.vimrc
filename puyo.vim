syntax match puyoA /A/
hi puyoA ctermfg=red cterm=BOLD

syntax match puyoB /B/
hi puyoB ctermfg=39 cterm=BOLD

syntax match puyoC /C/
hi puyoC ctermfg=40 cterm=BOLD

syntax match puyoD /D/
hi puyoD ctermfg=yellow cterm=BOLD

" puyo
nnoremap <buffer> a rA
nnoremap <buffer> b rB
nnoremap <buffer> s rB
nnoremap <buffer> c rC
nnoremap <buffer> d rD
nnoremap <buffer> x r.

" alternative
nnoremap <buffer> ga a
nnoremap <buffer> gb b
nnoremap <buffer> gs s
nnoremap <buffer> gc c
nnoremap <buffer> gd d
nnoremap <buffer> gx x

" inter-file
"nnoremap <buffer> n :wn<cr>
"nnoremap <buffer> N :wN<cr>

nnoremap <buffer> w W
nnoremap <buffer> W w

nnoremap <buffer> zp :let @a = join(readfile("/home/blackcat/.vim/ftplugin/puyo/base"), "\n")<cr>"ap

noremap <buffer> ^ :call <SID>move_field_top()<cr>
noremap <buffer> D :call <SID>delete_field()<cr>

if exists('s:loaded')
	finish
endif
let s:loaded = 1

function s:move_field_top() " TODO this petty bugs: moving is non-intuitive.
	" use `normal l` instead of ** if 'l' **
	normal lB
	" assert on col of 'l'
	while !(getline('.')[col('.') - 1] == ' ' || getline('.') == '' || line('.') == 1)
		normal k
	endwhile
	normal 3h 
endfunction

function s:delete_field()
	exe "normal "
	normal jw
	normal 13je
	normal j3l
	normal d
endfunction

function! s:yoko()
        normal Ahogehoge
endfunction

nnoremap <buffer> y' :call <SID>yoko()<cr>


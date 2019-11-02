cnoremap sss :source yoko.vim


" <`hoge`> をハイライト
syntax match holder /<`[^`]*`>/
hi holder ctermfg=black ctermbg=cyan



" <`hoge`> を検索して、挟まれている文字を取り出す。カーソル位置調整に ` を一度インサート
inoremap <buffer> n' <esc>/<`[^`]*`><cr>f`"rdi`F<i`<esc>lda>"rPF`x





cnoremap <buffer> cls' :call <SID>write_class_base()<cr>

" 以下を記入する
" class ClassName:
" 
"     def __init__(self, <`arg`>):
"         <`pass`>
function! s:write_class_base()
	let text = [
				\'class <`ClassName`>:',
				\'',
				\'    def __init__(self, <`arg`>):',
				\'        <`pass`>',
				\]
	let failed = append('.', text)
endfunction




" ref.
" https://vim-jp.org/vimdoc-ja/usr_41.html#function-list
" https://vim-jp.org/vimdoc-ja/eval.html#functions
" https://vim-jp.org/vimdoc-ja/eval.html
" https://vim-jp.org/vimdoc-ja/pattern.html#pattern-overview



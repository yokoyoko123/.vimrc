set number
set hlsearch
"source yoko.vim
"inoremap tmp^ <esc>:read ~/procon/template/main.cpp<cr>
cnoremap v' tabe ~/.vimrc
cnoremap r' source ~/.vimrc
cnoremap nohl nohlsearch
set autoindent
set smartindent
set expandtab
syntax on
hi Comment ctermfg=Cyan
"inoremap class' <esc>:read ~/yktmp/class.py<cr>
"inoremap classh' <esc>:read ~/yktmp/inhclass.py<cr>



nnoremap '' :<C-u>setlocal relativenumber!<CR>


augroup indentgroup
  "sw=softtabstop, sts=shiftwidth, ts=tabstop, et=expandtabの略
  autocmd!
  autocmd BufRead,BufNewFile *c           setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *html        setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *ruby        setlocal sw=2 sts=2 ts=2 
  autocmd BufRead,BufNewFile *js          setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *zsh         setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *.py         setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *scala       setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *json        setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *html        setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *css         setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *scss        setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *sass        setlocal sw=4 sts=4 ts=4 
  autocmd BufRead,BufNewFile *javascript  setlocal sw=4 sts=4 ts=4 
augroup END


augroup pythongroup
    autocmd!
	autocmd BufNewFile *py	put = 'import numpy as np'
augroup END

"ショートカットを使用の巻
augroup automode
    autocmd!
    autocmd BufNewFile,BufRead *py source python.vim
    autocmd BufNewFile,BufRead *py cnoremap py' tabe ~/python.vim
    autocmd BufNewFile,BufRead *py cnoremap pyr source ~/python.vim

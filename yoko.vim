function! Python() 
        nnoremap e <esc>
        normal eb
        unmap e
        let l:str=expand("<cword>")
        "echo str 
        normal dwk
        vnoremap g <C-g>
        nnoremap ` /`<CR>xx
        if str =="class"
                echo "success!!"

                let text = [
                                        \'class `{ClassName}:',
                                        \'',
                                        \'    def __init__(self, `{arg}:',
                                        \'        `{pass}',
                                        \]
                let failed = append('.',text)
                normal `
                set nohlsearch
        endif
        unmap g
        unmap `
endfunction


"inoremap<buffer> <expr> k <sid>echo 'hoge'

function! A()
  echo 'hogehoge'
endfunction

inoremap <c-k> <C-o>:call Python()<CR>


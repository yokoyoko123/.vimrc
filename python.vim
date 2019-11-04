"#説明書
"1.編集したい箇所には{back quote(`)+単語+:}を記述する. 最初(ctr+z入力時)は1つ目の記述箇所にセレクトモードでスタンバイ.
"2.デフォルトの値を設定可能 上の単語の位置にそのままデフォルトを書く.
"3.編集した! or デフォルトそのまま! -> back quoteをエンターでセレクトモードに入りながら次へ

"#注意事項
"このファイルを編集するときは必ずback quoteをunmapする
"inputなどのその場に展開したいものはJコマンドを使用しているため, シングルクォーテーションの後ろにダミーでスペースを入力しておく

"よこよこメモ
"<c-o>"stopiが関数を書く上で今後役立ちそう.
"expand("<cword>")はカーソル位置の単語を取得. これヤバすぎ

"入力箇所に飛ぶためのショートカットキー


"ifのところのappend構文を文字列識別の外に出す
nnoremap ` <esc>/`<CR>xvw<c-g>
inoremap ` <esc><c-o>:stopi<cr>/`<CR>xvw<c-g>
snoremap ` <ESC>x/`<CR>xvw<c-g>
function! Python() 
        let l:str=expand("<cword>")
        "echo str 
        normal bdw
        inoremap e <CR>
        inoremap t <tab>
        



"Begin making template
"---------------class series-----------------------
        if str =="class"
                echo "success!!"

                let text = [
                                        \'class `ClassName:',
                                        \'',
                                        \'    def __init__(self, `arg:)',
                                        \'        `pass:',
                                        \]
                let failed = append('.',text)
                normal `
                set nohlsearch
        elseif str =="classd"
                echo "success!!"

                let text = [
                                        \'class `ClassName:',
                                        \'"""`message:"""',
                                        \'    def __init__(self, `arg:)',
                                        \'    """`message:"""',
                                        \'        `pass:',
                                        \]
                let failed = append('.',text)
                normal `
"---------------if series-----------------------
         elseif str == "if"
                let text = ['if( `condition: ):',
                            \'    `pass:',
                           \]
                let flag = 'hikakin'
                for txt in text
                        let failed = append('.',txt)
                        if flag == 'hikakin'
                                normal JAet
                                unlet flag
                                let flag ='youtuber'
                        else
                                normal xxxxJAet
                        endif
                endfor
                "let failed = append('.',text) 
                normal `
         elseif str == "ifd"
                let text = ['if( `condition: ):',
                            \'    """ `comment:"""',
                            \'    `pass:',
                           \]
                let failed = append('.',text)
                normal `
"---------------while series-----------------------
         elseif str == "while"
                let text = ['while( `condition: ):',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
         elseif str == "whiled"
                let text = ['while( `condition: ):',
                            \'    """ `comment:"""',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
"---------------for series-----------------------
         elseif str == "for"
                let text = ['for( `arg: in `arg: ):',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal J`
         elseif str == "forr"
                let text = ['for( `arg: in range(`arg:) ):',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
         elseif str == "ford"
                let text = ['for( `arg: in `arg: ):',
                            \'    """ `comment:"""',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
         elseif str == "forrd"
                let text = ['for( `arg: in range(`arg:) ):',
                            \'    """ `comment:"""',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
"---------------input series-----------------------
         elseif str == "inpd"
                let text = [' input("`comment:")',
                            \'`next:'
                            \]
                let failed = append('.',text)
                normal J`
         elseif str == "inp"
                let text = [' input()',
                            \'`next:'
                            \]
                let failed = append('.',text)
                normal J`
         endif
         iunmap e
         iunmap t
endfunction


"inoremap<buffer> <expr> k <sid>echo 'hoge'

function! A()
  echo 'hogehoge'
endfunction

inoremap <c-z> <C-o>:stopi<CR>:call Python()<CR>


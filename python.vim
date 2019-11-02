"#説明書
"1.編集したい箇所には{back quote(`)+単語+:}を記述する. 最初(ctr+z入力時)は1つ目の記述箇所にセレクトモードでスタンバイ.
"2.デフォルトの値を設定可能 上の単語の位置にそのままデフォルトを書く.
"3.編集した! or デフォルトそのまま! -> back quoteをエンターでセレクトモードに入りながら次へ

"#注意事項
"このファイルを編集するときは必ずback quoteをunmapする

"よこよこメモ
"<c-o>"stopiが関数を書く上で今後役立ちそう.
"expand("<cword>")はカーソル位置の単語を取得. これヤバすぎ

"入力箇所に飛ぶためのショートカットキー
nnoremap ` <esc>/`<CR>xvw<c-g>
inoremap ` <esc><c-o>:stopi<cr>/`<CR>xvw<c-g>
snoremap ` <ESC>x/`<CR>xvw<c-g>
function! Python() 
        let l:str=expand("<cword>")
        "echo str 
        normal bdw
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
         elseif str == "if"
                echo "success2!!"
                let text = ['if( `condition: ):',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
         elseif str == "while"
                echo "success2!!"
                let text = ['while( `condition: ):',
                            \'    `pass:'
                           \]
                let failed = append('.',text)
                normal `
         elseif str == "
         endif
endfunction


"inoremap<buffer> <expr> k <sid>echo 'hoge'

function! A()
  echo 'hogehoge'
endfunction

inoremap <c-z> <C-o>:stopi<CR>:call Python()<CR>


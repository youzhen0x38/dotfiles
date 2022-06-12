""" Appearance
set helplang=ja,en
set number
set title
set showmode
set laststatus=2 " ステータスラインを常に表示する
" %F: ファイル名
" %m: 更新チェック
" %r: 読み込み専用か
" %w: プレビューなら
" %=: 以降、右寄せ
" %{&fileencoding}
" %l/%L: 現在行数/全行数
set statusline=%F%m%r%w%=[ENC:%{&fileencoding}][LOW:%l/%L]
set showcmd " 入力中のコマンドを表示する
set wildmenu wildmode=list:longest,full " Command Line ModeでTABキーによるファイル名補完を有効にする
highlight Visual ctermfg=black ctermbg=gray
highlight StatusLine ctermfg=black ctermbg=white
highlight Comment ctermfg=gray
highlight DiffAdd    ctermfg=33      ctermbg=236
highlight DiffChange ctermfg=white   ctermbg=236
highlight DiffDelete ctermfg=darkred ctermbg=236
highlight DiffText   ctermfg=green   ctermbg=236
"let loaded_matchparen = 1 " 括弧の対応非表示


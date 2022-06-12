" ============================================================================
" junegunn/vim-plug
" ============================================================================
if !filereadable(expand('$HOME/.local/share/nvim/site/autoload/plug.vim'))
  echo "Installing Vim-Plug..."
  silent !\curl -fLo $HOME/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let g:not_finish_vimplug = "yes"
  autocmd VimEnter * PlugInstall
endif

call plug#begin(expand('$HOME/.local/share/nvim/plugged'))
    Plug 'vlime/vlime'
    Plug 'vim-scripts/paredit.vim'
call plug#end()


" ============================================================================
" Vim configration
" ============================================================================
source $XDG_CONFIG_HOME/nvim/rc/keymap.vim
source $XDG_CONFIG_HOME/nvim/rc/appearance.vim
source $XDG_CONFIG_HOME/nvim/rc/vlime.vim
source $XDG_CONFIG_HOME/nvim/rc/paredit.vim
 
filetype off
set belloff=all
set clipboard=unnamedplus
if has('mouse')
  set mouse-=a
endif

""" file
set confirm              " 保存されていないファイルがあるときは終了前に保存確認
set hidden               " 保存されていないファイルがあるときでも別のファイルを開く
set nobackup
set noswapfile
set autoread             " 外部からファイル変更時、自動読み込み
"set encoding=utf-8       " read
"set fileencoding=utf-8   " write
let g:netrw_dirhistmax=0 " disable netrw history
let g:netrw_liststyle=3  " netrwは常にツリー表示

""" edit
set virtualedit=block " 文字が無い部分でも矩形選択を可能にする
set tabstop=4         " Tab文字が占める幅
set shiftwidth=4      " autoindent width
set expandtab         " Tab 挿入を space 挿入にする(Tab挿入: Ctrl + V<Tab>)
set formatoptions-=ro " コメントアウト自動挿入しない :help fo-table

""" search
set ignorecase
set smartcase   " 検索文字列が大文字なら大文字小文字区別して検索する
set noincsearch
set hlsearch    " highlight search
highlight Search cterm=NONE ctermfg=black ctermbg=yellow
set wrapscan


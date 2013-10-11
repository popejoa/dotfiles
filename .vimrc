set nocompatible
scriptencoding utf-8

" スワップファイルとバックアップファイルの出力先を指定
set backup
set swapfile
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" 行番号を表示
set number

" カレント行をハイライト
set cursorline

" タブ幅とインデント幅を設定
set tabstop=4
set autoindent
set expandtab
set shiftwidth=4

" インクリメンタル検索
set incsearch

" 検索結果ハイライト
set hlsearch

" 文字削除
set backspace=indent,eol,start

" タブと行末スペースを可視化
set list
set listchars=tab:^\ ,trail:~

" マウス設定
set mouse=n

" Vimを終了してもUndo
if has('persistent_undo')
    set undofile
    set undodir=./.vimundo,~/.vim/undo
endif

" Ctrl + j, k, h, lでウインドウを移動できるように
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

if has('vim_starting')
      set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

" Bundle
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'Shougo/neobundle.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'davidhalter/jedi-vim'
NeoBundle 'w0ng/vim-hybrid'

"カラースキームをhybird に設定
syntax enable
colorscheme hybrid

filetype plugin indent on

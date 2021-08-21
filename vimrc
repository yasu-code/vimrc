set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'preservim/nerdtree'
Plugin 'dense-analysis/ale'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'easymotion/vim-easymotion'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-repeat'
Plugin 'junegunn/vim-easy-align'
Plugin 'ervandew/supertab'
Plugin 'jiangmiao/auto-pairs'
Plugin 'jacquesbh/vim-showmarks'
Plugin 'dhruvasagar/vim-table-mode'
Plugin 'prettier/vim-prettier'
Plugin 'alvan/vim-closetag'

call vundle#end()            " required

filetype plugin indent on    " required

syntax on
" 全般
"文字コードをUFT-8に設定
"set fenc=utf-8
" VIMの内部エンコードをUTF-8とする
set encoding=UTF-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" クリップボードの共有
set clipboard+=unnamed
" 選択時にクリップボードに入る
" set guioptions+=a
colorscheme desert
set t_ut=
" etcをjjにする
inoremap <silent> jj <ESC>
" バックスペースの挙動を通常と同じにする
set backspace=2
let mapleader = "\<Space>"

" ALEのエラーの設定
let g:ale_sign_error = 'x'
let g:ale_sign_warning = '⚠'
"let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']
"let g:ale_sign_column_always = 1
"let g:airline#extensions#ale#enabled = 1
let g:ale_open_list = 1
" エラーと警告がなくなっても開いたままにする
"let g:ale_keep_list_window_open = 1

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 現在の行を強調表示（縦）
"set cursorcolumn
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" 改行時にインデントを保持する
set autoindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" ファイル名を表示
set statusline=%f
" 現在行数/全行数
set statusline+=[LOW=%l/%L]
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" シンタックスハイライトの有効化
syntax enable
" インデントを現在の行と合わせる
set autoindent
" 通常文字列の文字色を黄色にする
hi Constant ctermfg=14
map <C-n> :NERDTreeToggle<CR>

" タブを自動で閉じるファイルを指定
let g:closetag_filenames = '*.html,*.vue'

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=4
" 行頭でのTab文字の表示幅
set shiftwidth=4


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" 検索後にジャンプした際に検索単語を画面中央に持ってくる
" nnoremap n nzz
" nnoremap N Nzz
" nnoremap * *zz
" nnoremap # #zz
"半角文字の設定
set guifont=MS_Gothic:h10
"全角文字の設定
set guifontwide=MS_Gothic:h10

" マウス系
set mouse=a
set ttymouse=xterm2

let mapleader = "\<SPACE>"
"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/yasu/.config/nvim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/Users/yasu/.vim/dein')

" Let dein manage dein
" Required:
call dein#add('/Users/yasu/.vim/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
" 全般
" タブを何文字の空白に変換するか
set tabstop=2
" 自動インデント時に入力する空白の数
set shiftwidth=4
" タブ入力を空白に変換
set expandtab
" 画面を縦分割する際に右に開く
set splitright
" 画面を横分割する際に下に開く
set splitbelow
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
" etcをjkにする
inoremap <silent> jk <ESC>
" バックスペースの挙動を通常と同じにする
set backspace=2

" insertモードでの移動コマンド
" inoremap <C-d> <BS>
" inoremap <C-l> <Right>
" inoremap <C-k> <Up>                          
" inoremap <C-j> <Down>

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
" 通常文字列の文字色を黄色にする
hi Constant ctermfg=14
" 10進数
set nrformats=

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
nnoremap <Esc><Esc> :nohlsearch<CR><Esc>
"半角文字の設定
set guifont=MS_Gothic:h10
"全角文字の設定
set guifontwide=MS_Gothic:h10

" Pluginディレクトリのパス    
let s:dein_dir = expand('~/.config/nvim/dein')    
" dein.vimのパス    
let s:dein_repo_dir = s:dein_dir .  '/repos/github.com/Shougo/dein.vim'    
" tomlのディレクトリへのパス    
let s:toml_dir = expand('~/.config/nvim')    
" Required:    
execute 'set runtimepath^=' . s:dein_repo_dir    

" Required:    
if dein#load_state(s:dein_dir)    
  call dein#begin(s:dein_dir)    

  " 起動時に読み込むプラグイン群のtoml    
  call dein#load_toml(s:toml_dir . '/dein.toml', {'lazy': 0})

  " 利用時に読み込むプラグインのtoml
  call dein#load_toml(s:toml_dir . '/dein_lazy.toml', {'lazy': 1})

  " Required:               
  call dein#end()           
  call dein#save_state()    
endif                        

" Required:                  
filetype plugin indent on                                   

" If you want to install not installed plugins on startup.    
if dein#check_install()                                       
  call dein#install()      
endif                                                             

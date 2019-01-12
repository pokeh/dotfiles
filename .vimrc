" disable arrow keys 
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
inoremap <Up> <Nop>
inoremap <Down> <Nop>
inoremap <Left> <Nop>
inoremap <Right> <Nop>

set number
set cursorline
set cursorcolumn
set smartindent
set visualbell
set showmatch
set laststatus=2

" treat numbers like 007 as a decimal instead of an octal
set nrformats=

set wildmenu
set wildmode=full

syntax on
colorscheme murphy

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2

" 検索系
set ignorecase
set smartcase
set incsearch
" highlight search
set hls

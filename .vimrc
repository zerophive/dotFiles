set autoindent
"set smartindent
set history=50
set laststatus=2
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set backspace=2
set showmatch
set showmode
"set term=xterm-color
set fileformats=unix,mac,dos
set background=dark
set hlsearch

"syntax on

"map <F2> :bn!<CR>
"map <F3> :bp!<CR>
"map <F4> :bd<CR>

"Dracula Pro theme
packadd! dracula_pro
syntax enable
let g:dracula_colorterm = 0
" a hax to get around poor Terminal.app color support
let g:dracula_italic=0
colorscheme dracula_pro_van_helsing

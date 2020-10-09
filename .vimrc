" indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set expandtab
set smarttab

" Search
set incsearch
set hlsearch
set smartcase

" Performance
set encoding=utf-8
set scrolloff=18
syntax enable
set lazyredraw

" UI
set number
set laststatus=2
set showmatch
set ruler
set wildmenu
set tabpagemax=50
set cursorline 

" Misc
execute pathogen#infect()
colorscheme murphy
let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='medium'
set bg=dark

" C++
if filereadable(expand('./.vim'))
        source ./.vim
endif

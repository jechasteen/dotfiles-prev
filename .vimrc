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
set exrc
set secure
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
set mouse=a
set ttymouse=xterm2

" Misc
execute pathogen#infect()
colorscheme gruvbox
let g:gruvbox_termcolors='256'
let g:gruvbox_contrast_dark='medium'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_cpp_compiler='g++'
let g:syntastic_cpp_check_header=1
let g:syntastic_always_populate_loc_list=1
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_check_on_wg=0

set bg=dark
set shell=/bin/sh

" Brace-matching
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap } <c-r>=CloseBracket()<CR>
inoremap " <c-r>=QuoteDelim('"')<CR>
inoremap ' <c-r>=QuoteDelim("'")<CR>

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

function CloseBracket()
    if match(getline(line('.') + 1), '\s*}') < 0
        return "\<CR>"
    else
        return "\<Esc>j0f}a"
    endif
endf

function QuoteDelim(char)
    let line = getline('.')
    let col = col('.')
    if line[col - 2] == "\\"
        " Inserting a quoted quotation mark into the string
        return a:char
    elseif line[col - 1] == a:char
        " Escaping out of the string
        return "\<Right>"
    else
        " Starting a string
        return a:char.a:char."\<Esc>i"
    endif
endf

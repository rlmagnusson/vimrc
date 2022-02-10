" remove vi compatibility
set nocompatible

filetype plugin on

set foldmethod=indent
set foldlevelstart=1
" XML folding
"augroup XML
"    autocmd!
"    autocmd FileType xml setlocal foldmethod=indent foldlevelstart=0 foldminlines=0
"augroup END
"
let g:xml_syntax_folind=1
au FileType xml setlocal foldmethod=syntax

" indents
set tabstop=4
set shiftwidth=4
set expandtab
set smarttab
set smartindent

" remaps
map æ ^
inoremap jj <esc>
inoremap jz <esc>ZZ
" QOL
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" gui
set laststatus=2
set wildmenu
set wildignore=*.0,*~,*.pyc
set wildignore+=*/.git
set showmatch


set nocompatible
filetype plugin on

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


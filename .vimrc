" remove vi compatibility
set nocompatible


filetype plugin on

" Folding
nnoremap <space> za
set foldmethod=indent
set foldlevelstart=3
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
" inoremap jw <esc>:update<cr>i
inoremap jw <esc>:w<cr>
" scroll with CTRL + arrows
nnoremap <C-Down> <C-E>
nnoremap <C-Up> <C-Y>
" QOL
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" editing
nnoremap <S-Up> ddkP
nnoremap <S-Down> ddp

" gui
set laststatus=2
set wildmenu
set wildignore=*.0,*~,*.pyc
set wildignore+=*/.git
set showmatch

" line numbers
set number
highlight LineNr ctermfg=darkgrey
set cursorline

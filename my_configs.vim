set nocompatible		" get rid of strict vi compatibility!
set nu				" line numbering on
set autoindent			" autoindent on
set smartindent
set noerrorbells		" bye bye bells :)
set modeline			" show what I'm doing
set showmode			" show the mode on the dedicated line (see above)
set wrapmargin=4		" new line inserted 4 characters before screen width
set ignorecase			" search without regards to case
set smartcase
set hlsearch
set backspace=indent,eol,start	" backspace over everything
set fileformats=unix,dos,mac	" open files from mac/dos
set exrc			" open local config files
set nojoinspaces		" don't add white space when I don't tell you to
set ruler			" which line am I on?
set showmatch			" ensure Dyck language
set incsearch			" incremental searching
set showmode
set report=0
set bs=2			" fix backspacing in insert mode

" Expand tabs in C files to spaces
au BufRead,BufNewFile *.{cpp,c,h,java} set expandtab
au BufRead,BufNewFile *.{cpp,c,h,java} set shiftwidth=2
au BufRead,BufNewFile *.{cpp,c,h,java} set tabstop=2

" Do not expand tabs in assembly file.  Make them 8 chars wide.
au BufRead,BufNewFile *.s set noexpandtab
au BufRead,BufNewFile *.s set shiftwidth=8
au BufRead,BufNewFile *.s set tabstop=8

" Show syntax
syntax on

" For switching between many opened file by using ctrl+l or ctrl+h
map <C-J> :next <CR>
map <C-K> :prev <CR>

" Spelling toggle via F10 and F11
map <F10> <Esc>setlocal spell spelllang=en_us<CR>
map <F11> <Esc>setlocal nospell<CR>

" setlocal textwidth=80		" used for text wrapping
match Error /\%81v.\+/

set backup

set wildmenu
set wildmode=longest:full
set wildignore=*.o,*.bak,*.data,*.class,*~
set formatoptions+=r

set colorcolumn=80
set mouse=a
set tw=80

let g:go_version_warning = 0

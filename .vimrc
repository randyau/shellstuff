set nocompatible
set tabstop=4
set expandtab
set autoindent
set shiftwidth=4
set smarttab
set sts=4
set smartindent
set textwidth=72
set formatoptions=tcqro
set nowrap
set number
set showmatch
set ignorecase
set smartcase
set hlsearch
set incsearch
set autoread
set title
set noerrorbells
set lz
set t_Co=256
set hidden

set history=1000
set undolevels=1000
set wildignore=*.pyc,*.swp,*.class,*.bak

set pastetoggle=<F2>

hi ColorColumn ctermbg=black
hi Comment ctermbg=blue ctermfg=white
hi Search term=standout ctermfg=0 ctermbg=11 guifg=Blue guibg=Yellow

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_

let @h = "yypVr"

autocmd BufNewFile,BufRead *.py setlocal cinwords=if,elif,else,for,while,try,except,finally,def,class,with tw=79 
autocmd BufNewFile,BufRead *.html setlocal sts=2 sw=2 ts=2 tw=1000
autocmd BufNewFile,BufRead *.rst,*.md,*.markdown setlocal tw=72 
autocmd BufNewFile,BufRead *.md setlocal filetype=markdown
autocmd BufNewFile,BufRead .git/COMMIT_EDITMSG setlocal tw=72
autocmd BufWritePost ~/.vimrc so ~/.vimrc
autocmd BufWrite *.py,*.js,*.html,*.php mark ' | silent! %s/\s\+$// | norm ''

filetype off
filetype plugin indent off

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
call plug#end()
"Plug 
"
filetype plugin indent on
syntax on
set mouse=c

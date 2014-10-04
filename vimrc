nmap <C-j> :res+5<CR>
nmap <C-h> :vertical res-5<CR>
nmap <C-l> :vertical res+5<CR>
nmap <C-k> :res-5<CR>
nmap <Tab> <C-w>w

syntax enable
set background=dark
colorscheme default

set expandtab
set hlsearch
set list
set listchars=eol:~
set ls=2
set modeline
set nocompatible
set number
set shiftwidth=2
set smartindent
set statusline+=%F
set tabstop=2
set ruler
filetype plugin on

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                            \ | wincmd p | diffthis
endif

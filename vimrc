nmap <C-j> :res+5<CR>
nmap <C-h> :vertical res-5<CR>
nmap <C-l> :vertical res+5<CR>
nmap <C-k> :res-5<CR>
nmap <Tab> <C-w>w

colorscheme default
filetype plugin on
set background=dark
set backspace=2
set expandtab
set hlsearch
set list
set listchars=eol:~
set ls=2
set modeline
set nocompatible
set number
set ruler
set shiftwidth=2
set smartindent
set statusline+=%F
set statusline+=\ x:%c,\ y:%l
set tabstop=2
syntax enable

if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                            \ | wincmd p | diffthis
endif

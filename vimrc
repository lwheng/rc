" Color
colorscheme elflord
syntax enable

" Spaces & Tabs
set tabstop=2
set softtabstop=2
set expandtab
set backspace=2

" UI Config
set number
set cursorline
filetype indent on
set wildmenu
set showmatch
set ls=2
set list
set listchars=eol:~
set statusline+=%F
set statusline+=\ x:%c,\ y:%l

" Searching
set incsearch
set hlsearch

set nocompatible

" For split resizing
nmap <C-j> :res+5<CR>
nmap <C-h> :vertical res-5<CR>
nmap <C-l> :vertical res+5<CR>
nmap <C-k> :res-5<CR>

" For jumping to previous/next split
nmap <Tab> <C-w>w
nmap <S-Tab> <C-w>W


if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                            \ | wincmd p | diffthis
endif

augroup filetypedetect
    au BufRead,BufNewFile *.elm setfiletype haskell
augroup END

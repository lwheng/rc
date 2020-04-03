" Color
colorscheme elflord
syntax enable

" Spaces & Tabs
set tabstop=2
set softtabstop=2
set expandtab
set backspace=2
set shiftwidth=2
set smartindent

" UI Config
set number
filetype indent on
filetype plugin on
set wildmenu
set showmatch

" Statusline
set laststatus=2 " Always display the statusline
set statusline+=\ %n
set statusline+=\ %F
set statusline+=\ x:%c,\ y:%l

" Searching
set incsearch
set hlsearch
map <Leader>/ :nohl<CR>

set nocompatible

" For split resizing
nmap <C-j> :res+5<CR>
nmap <C-h> :vertical res-5<CR>
nmap <C-l> :vertical res+5<CR>
nmap <C-k> :res-5<CR>

" For jumping to previous/next split
nmap <Tab> <C-w>w
nmap <S-Tab> <C-w>W

" For buffer switching
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <F6> :buffers<CR>:sbuffer<Space>

" Undo / Redo
set undofile
set undodir=~/.vim/undodir


if !exists(":DiffOrig")
    command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
                            \ | wincmd p | diffthis
endif

augroup filetypedetect
    au BufRead,BufNewFile *.elm setfiletype haskell
augroup END

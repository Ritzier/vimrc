set nocompatible
filetype on
filetype plugin on
filetype indent on
syntax on
set number
set cursorline
set cursorcolumn
set shiftwidth=4
set tabstop=4
set expandtab
set nobackup
set scrolloff=10
set nowrap
set incsearch
set ignorecase
set smartcase
set showcmd
set hlsearch
set history=1000
set wildmenu
set wildmode=list:longest
set wildignore=*.docx,*.jpg,*.png,*.gif,*.pdf,*.pyc,*.exe,*.flv,*.img,*.xlsx
autocmd FileType html ruby setlocal ts=2 sw=2

augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

call plug#begin('~/.vim/plugged')
    Plug 'dense-analysis/ale'
    Plug 'preservim/nerdtree'
    Plug 'bluz71/vim-nightfly-guicolors'
    Plug 'srcery-colors/srcery-vim'
call plug#end()

set termguicolors
colorscheme nightfly

let mapleader = ' '

autocmd FileType python setlocal nnoremap <f5> :w <CR>:!clear <CR>:!python3 % <CR>
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <C-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

set statusline=

set statusline+=\ %F\ %M\ %Y\ %R

set statusline+=%=

set laststatus=2

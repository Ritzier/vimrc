set nocompatible
set nobackup
set clipboard="unnamedplus"
set cmdheight=1
set completeopt=menuone,noselect
set conceallevel=0
set fileencoding=utf-8
set hlsearch
set ignorecase
set mouse=a
set pumheight=20
set noshowmode
set showtabline=2
set smartcase
set smartindent
set smarttab
set splitbelow
set splitright
set noswapfile
set nobackup
set termguicolors
set timeoutlen=1000
set undofile
set updatetime=300
set nowritebackup
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set cursorcolumn
set number
set relativenumber
set numberwidth=3
set signcolumn="yes"
set wrap
set scrolloff=8
set sidescrolloff=8
set laststatus=3
set list
set showbreak=↪
set list lcs=tab:»·,nbsp:+,trail:·,extends:→,precedes:←,eol:↲
set whichwrap+=<,>,[,],h,l
set iskeyword+=-
set wildmenu
set t_CO=256

autocmd Filetype html ruby setlocal tabstop=2 shiftwidth=2 expandtab

filetype on
filetype plugin on
filetype indent on

syntax on

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-plug'
Plug 'junegunn/vim-easy-align'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck'

Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons'

Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"Git
Plug 'tpope/vim-fugitive'

"css html
Plug 'tpope/vim-surround'

call plug#end()

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

colorscheme spaceduck

" Keymaps
let mapleader = " "
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <C-n> :NERDTreeToggle<cr>
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"let g:airline_theme='bubblegum'
let g:airline_theme='simple'

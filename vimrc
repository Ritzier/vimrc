let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'junegunn/vim-plug'
Plug 'junegunn/vim-easy-align'
"
" Colorscheme
Plug 'pineapplegiant/spaceduck'
Plug 'rigellute/rigel'
Plug 'morhetz/gruvbox'
Plug 'joshdick/onedark.vim'
" UI
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' |
    \ Plug 'Xuyuanp/nerdtree-git-plugin' |
    \ Plug 'ryanoasis/vim-devicons'
Plug 'Yggdroot/indentLine'

"Git
Plug 'tpope/vim-fugitive'

"css html
Plug 'tpope/vim-surround'

" Check Wrong
Plug 'https://github.com/dense-analysis/ale'

" Random colorscheme
Plug 'Sammyalhashe/random_colorscheme.vim'

call plug#end()

filetype plugin indent on

set nobackup
set clipboard=unnamed
set cmdheight=1
set completeopt=menuone,noselect
set fileencoding=utf-8
set hlsearch
set ignorecase
set mouse=a
set pumheight=20
set noshowmode
set showtabline=2
set smartcase
set smartindent
set autoindent
set smarttab
set noswapfile 
set t_Co=256
"set termguicolors
set undofile
set updatetime=300
set splitbelow
set splitright
set timeoutlen=1000
set expandtab
set nowritebackup
set shiftwidth=4
set tabstop=4
set softtabstop=4
set cursorline
set cursorcolumn
set number
set relativenumber
set numberwidth=2
set nowrap
set list lcs=tab:»·,nbsp:+,trail:·,extends:→,precedes:←,eol:↲
set wildmenu
set scrolloff=8
set sidescrolloff=8
set laststatus=2

set background=dark
"colorscheme rigel
syntax on

" Plugins
let g:random_scheme=1
let g:available_colorschemes=['spaceduck', 'rigel', 'gruvbox', 'onedark']


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'
"let g:AirlineTheme='rigel'

" Nerd Tree
let NERDTreeIgnore=['\.git$', '\.jpg$', '\.mp4$', '\.ogg$', '\.iso$', '\.pdf$', '\.pyc$', '\.odt$', '\.png$', '\.gif$', '\.db$']

" IndentLine
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'

" Keymaps
let mapleader = ' '
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <C-n> :NERDTreeToggle<cr>

nnoremap [b :bnext<CR>
nnoremap ]b :bprevious<CR>
nnoremap <C-x> :bd<CR>

vnoremap <c-d> :m '>+1<CR>gv=gv
vnoremap <c-u> :m '<-2<CR>gv=gv

nnoremap <C-w> :call ChangeColour()<CR>

" Autocmd
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

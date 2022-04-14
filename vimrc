set mouse=a
set number
set tabstop=4
syntax on
set autoindent
set expandtab
set softtabstop=4
set clipboard=unnamed
set scrolloff=8
set sidescrolloff=8
filetype indent on
filetype plugin on
set cursorline
set cursorcolumn
set ruler
set showmatch
set incsearch
set hlsearch
set foldenable
set modelines=1
set showbreak="↳"
set noswapfile
set nobackup
set nowritebackup
set termguicolors

let mapleader = ","

augroup configgroup
    autocmd!
    autocmd VimEnter * highlight clear SignColumn
    autocmd BufWritePre *.php,*.py,*.js,*.txt,*.hs,*.java,*.md
                \:call <SID>StripTrailingWhitespaces()
    autocmd FileType java setlocal noexpandtab
    autocmd FileType java setlocal list
    autocmd FileType java setlocal listchars=tab:+\ ,eol:-
    autocmd FileType java setlocal formatprg=par\ -w80\ -T4
    autocmd FileType php setlocal expandtab
    autocmd FileType php setlocal list
    autocmd FileType php setlocal listchars=tab:+\ ,eol:-
    autocmd FileType php setlocal formatprg=par\ -w80\ -T4
    autocmd FileType ruby setlocal tabstop=2
    autocmd FileType ruby setlocal shiftwidth=2
    autocmd FileType ruby setlocal softtabstop=2
    autocmd FileType ruby setlocal commentstring=#\ %s
    autocmd FileType python setlocal commentstring=#\ %s
    autocmd BufEnter *.cls setlocal filetype=java
    autocmd BufEnter *.zsh-theme setlocal filetype=zsh
    autocmd BufEnter Makefile setlocal noexpandtab
    autocmd BufEnter *.sh setlocal tabstop=2
    autocmd BufEnter *.sh setlocal shiftwidth=2
    autocmd BufEnter *.sh setlocal softtabstop=2
    autocmd BufEnter lua setlocal tabstop=2
    autocmd BufEnter lua setlocal shiftwidth=2
    autocmd BufEnter lua setlocal softtabstop=2
    autocmd BufEnter html setlocal tabstop=2
    autocmd BufEnter html setlocal shiftwidth=2
    autocmd BufEnter html setlocal softtabstop=2
    autocmd BufReadPre *.js let b:javascript_lib_use_jquery = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_underscore = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_backbone = 1
    autocmd BufReadPre *.js let b:javascript_lib_use_prelude = 0
    autocmd BufReadPre *.js let b:javascript_lib_use_angularjs = 0
augroup END

call plug#begin('~/.vim/autoload/')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'dikiaap/minimalist'
Plug 'editorconfig/editorconfig-vim'
Plug 'junegunn/vim-plug'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-fugitive'
Plug 'vim-airline/vim-airline'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'ghifarit53/tokyonight-vim'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'bling/vim-bufferline'
Plug 'valloric/MatchTagAlways'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim'
Plug 'rstacruz/sparkup'
call plug#end()

filetype plugin indent on
set t_Co=256
syntax on

let g:tokyonight_style = 'night'
colorscheme tokyonight

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#whitespace#enabled = 1
let g:airline#extensions#hunks#non_zero_only = 1

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nnoremap <C-f> :NERDTreeToggle<CR>

let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_phpcs_disable = 1
let g:syntastic_phpmd_disable = 1
let g:syntastic_php_checkers = ['php']
let g:syntastic_quiet_messages = { "type": "style" }
let g:syntastic_aggregate_errors = 1
let g:syntastic_auto_jump = 2
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

map <C-j> <C-w>j
map <C-h> <C-w>h
map <C-k> <C-w>k
map <C-l> <C-w>l

let g:bufferline_active_buffer_left = '['
let g:bufferline_active_buffer_right = ']'

nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>

let g:mta_use_matchparen_group = 1
nnoremap <leader>% :MtaJumpToOtherTag<cr>

nnoremap <leader>mm :MarkdownPreviewToggle<cr>

call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
    Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
    Plug 'preservim/nerdtree'
    Plug 'mg979/vim-visual-multi', {'branch': 'master'}
    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'tpope/vim-fugitive'
call plug#end()

colorscheme tokyonight
let mapleader = " "
let $PATH = "C:\\Program Files\\Git\\usr\\bin;" . $PATH

set ignorecase smartcase
set hlsearch
set showmode
set scrolloff=5
set history=1000
set incsearch
set smartcase
set visualbell
set clipboard=unnamedplus,unnamed
set tabstop=4
set shiftwidth=4
set expandtab
set wildmode=full:lastused

map <Leader>f <Plug>(easymotion-s)
nmap <Leader>nt :NERDTreeToggle<CR>

imap jj <Esc>
nnoremap <Leader>/ :nohlsearch<cr>
nnoremap Y y$
nnoremap <leader>q :q <CR>
nnoremap <leader>O O<Esc>
nnoremap <leader>o o<Esc>

:tnoremap <Esc> <C-\><C-n>
xnoremap <expr> p 'pgv"' . v:register . 'y'

if has("win32")
 let &shell='bash.exe'
 let &shellcmdflag = '-c'
 let &shellredir = '>%s 2>&1'
 set shellquote= shellxescape=
 let $TMP="/tmp"
 set shellxquote=
 let &shellpipe='2>&1| tee'
endif

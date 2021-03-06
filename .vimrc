syntax on
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set number
set cursorline 
set ruler

set lazyredraw

set magic

set hlsearch
set incsearch
set ignorecase
set smartcase

set autoread
set showcmd

set nocompatible
set backspace=2
:autocmd InsertEnter,InsertLeave * set cul!

set showmatch
set mat=2

set title

set autoindent
"set smartindent
set cindent

set smarttab
set tabstop=4
set shiftwidth=4
set expandtab

set wildmenu
set wildmode=list:longest,full

set encoding=utf-8
set fileencoding=utf-8
set ffs=unix,dos

set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=syntax
nnoremap <space> za

" Visually select the text that was last edited/pasted.
nnoremap gV `[v`]

inoremap jj <Esc>
"inoremap JJ <Esc>
inoremap fd <Esc>

map <silent> <Up> gk
imap <silent> <Up> <C-o>gk
map <silent> <Down> gj
imap <silent> <Down> <C-o>gj
map <silent> <home> g<home>
imap <silent> <home> <C-o>g<home>
map <silent> <End> g<End>
imap <silent> <End> <C-o>g<End>

:command WQ wq
:command Wq wq
:command W w
:command Q q

:nmap <silent> <C-h> :wincmd h<CR>
:nmap <silent> <C-j> :wincmd j<CR>
:nmap <silent> <C-k> :wincmd k<CR>
:nmap <silent> <C-l> :wincmd l<CR>

let mapleader=","
nnoremap <leader>s :mksession<CR>
nnoremap <leader>u :GundoToggle<CR>

nnoremap H ^
nnoremap L $

nmap <silent> <leader><space> :nohlsearch<CR>

" Map Q to repeat last run macro.
map Q @@

map Y y$

set pastetoggle=<F3>

"Easymotion settings

let g:EasyMotion_do_mapping = 0 " Disable default mappings
nmap f <Plug>(easymotion-bd-f)
nmap s <Plug>(easymotion-bd-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


"Easy Align settings
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

"ArgWrap settings
nnoremap <silent> <leader>a :ArgWrap<CR>



"Vim Plugin
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'altercation/vim-colors-solarized'

Plug 'easymotion/vim-easymotion'

Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

Plug 'sjl/gundo.vim'

Plug 'junegunn/vim-easy-align'

Plug 'FooSoft/vim-argwrap'

Plug 'jiangmiao/auto-pairs'

call plug#end()

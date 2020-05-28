call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'leafoftree/vim-vue-plugin'
Plug 'jremmen/vim-ripgrep'
Plug 'ntpeters/vim-better-whitespace'
call plug#end()

let g:vue_pre_processors = []

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(git|svn))$',
    \ 'file': '\v\.(exe|so|dll|DS_Store|swp)$',
    \ }

if executable('rg')
    let g:rg_derive_root='true'
endif

set termguicolors
set clipboard=unnamed

set relativenumber
set number
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell

syntax on

set cursorline
hi CursorLine   cterm=NONE ctermbg=236
hi LineNr       ctermfg=gray

set hlsearch
set smartcase
set ignorecase
set incsearch

"set autoindent
set shiftwidth=4
set softtabstop=4
set expandtab
"set smartindent

autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab

set list
set listchars=tab:>-

set ruler
set showtabline=2

set undolevels=1000
set backspace=indent,eol,start
set mouse=v

let mapleader = " "

:imap jj <Esc>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>o :wincmd l<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>x :q<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize +-5<CR>

"nnoremap <C-r> :w <CR> :!g++ % -o %< && ./%< <CR>
"nnoremap <C-b> :w <CR> :!g++ % -o %< <CR>

"nnoremap <C-j> :bprev<CR>
"nnoremap <C-k> :bnext<CR>

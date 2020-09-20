call plug#begin('~/.vim/plugged')
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ntpeters/vim-better-whitespace'
Plug 'itchyny/lightline.vim'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

let g:dracula_italic = 0

syntax enable
colorscheme dracula
set termguicolors
set background=dark

let g:better_whitespace_guicolor='lightred'
let g:better_whitespace_enabled=0

let g:lsp_settings = {
\  'clangd': {'cmd': ['/usr/local/Cellar/llvm/10.0.1/bin/clangd']},
\  'efm-langserver': {'disabled': v:false}
\}

augroup lsp_install
    au!
    let g:lsp_signs_enabled = 1         " enable signs
    let g:lsp_diagnostics_echo_cursor = 1 " enable echo under cursor when in normal mode
    " call s:on_lsp_buffer_enabled only for languages that has the server registered.
    autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

function! s:on_lsp_buffer_enabled() abort
    setlocal omnifunc=lsp#complete
    setlocal signcolumn=yes
    if exists('+tagfunc') | setlocal tagfunc=lsp#tagfunc | endif
    nmap <buffer> gd <plug>(lsp-definition)
    nmap <buffer> gD <plug>(lsp-peek-definition)
    nmap <buffer> gr <plug>(lsp-references)
    nmap <buffer> gi <plug>(lsp-declaration)
    nmap <buffer> gI <plug>(lsp-peek-declaration)
    nmap <buffer> gt <plug>(lsp-type-definition)
    nmap <buffer> <leader>rn <plug>(lsp-rename)
    nmap <buffer> [g <Plug>(lsp-previous-diagnostic)
    nmap <buffer> ]g <Plug>(lsp-next-diagnostic)
    nmap <buffer> K <plug>(lsp-hover)
    " refer to doc to add more commands
endfunction

let g:vue_pre_processors = []

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/](node_modules|target|dist)|(\.(git|svn))$',
    \ 'file': '\v\.(exe|so|dll|DS_Store|swp)$',
    \ }

if executable('rg')
    let g:rg_derive_root='true'
endif

set shortmess+=c

set clipboard=unnamed

set relativenumber
set number
set hidden
set linebreak
set showbreak=+++
set textwidth=100
set showmatch
set visualbell
set autoread


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

set laststatus=2
set showtabline=2
set noshowmode

autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype vue setlocal ts=2 sw=2 expandtab

set list
set listchars=tab:>-

set ruler

set undolevels=1000
set backspace=indent,eol,start
set mouse=v

let mapleader = " "

:imap jj <Esc>

nnoremap <C-f> :CtrlPLine<CR>
nnoremap <C-g> :CtrlPMRU<CR>

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>o :wincmd l<CR>
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>x :q<CR>
nnoremap <leader><leader> :nohl<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize +-5<CR>

"nnoremap <C-r> :w <CR> :!g++ % -o %< && ./%< <CR>
"nnoremap <C-b> :w <CR> :!g++ % -o %< <CR>

nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

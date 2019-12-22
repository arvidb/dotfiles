call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
call plug#end()

set termguicolors

"set relativenumber  
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

" python
autocmd Filetype python setlocal ts=4 sw=4 expandtab

set list
set listchars=tab:>-

set ruler	
set showtabline=2	

set undolevels=1000	
set backspace=indent,eol,start 
set mouse=v

:imap jj <Esc>

"nnoremap <C-r> :w <CR> :!g++ % -o %< && ./%< <CR>
"nnoremap <C-b> :w <CR> :!g++ % -o %< <CR>

"nnoremap <C-j> :bprev<CR>
"nnoremap <C-k> :bnext<CR>

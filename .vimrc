set number  
set linebreak	
set showbreak=+++   
set textwidth=100   
set showmatch	
set visualbell	

syntax on
set background=dark
colorscheme material

set hlsearch	
set smartcase	
set ignorecase	
set incsearch	

set autoindent    
set shiftwidth=4  
"set smartindent   
set smarttab	
set softtabstop=4 

set ruler	
set showtabline=2	

set undolevels=1000	
set backspace=indent,eol,start 
set mouse=v

nnoremap <C-r> :w <CR> :!g++ % -o %< && ./%< <CR>
nnoremap <C-b> :w <CR> :!g++ % -o %< <CR>

nnoremap <C-j> :bprev<CR>
nnoremap <C-k> :bnext<CR>

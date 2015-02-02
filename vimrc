execute pathogen#infect()

let mapleader = "\\"

set mouse=a
set colorcolumn=80
set tabstop=2
set softtabstop=2
set shiftwidth=2
set incsearch
set ignorecase
set smartcase
set hlsearch
set expandtab
set autoindent
syntax on 

nmap <Leader>q :nohlsearch<CR>

set background=dark
let base16colorspace=256
colorscheme spacegray

if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

set laststatus=2

filetype plugin indent on

nmap <Leader>e :NERDTreeToggle<CR>

nmap <Leader>t :TlistToggle<CR>

nmap <Leader>d :bp<bar>sp<bar>bn<bar>bd<CR>
command Bd bp | sp | bn | bd

let g:airline#extensions#tabline#enabled = 1

nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>

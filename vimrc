" Set disabled plugins
let g:pathogen_disabled = ['YouCompleteMe','syntastic']

" Load plugins
execute pathogen#infect()

" Set the <Leader>
let mapleader = ","
noremap ; :
noremap <M-;> ;

set mouse=a
set colorcolumn=80
" set tabstop=2
" set softtabstop=2
" set shiftwidth=2
filetype plugin indent on
set incsearch
set ignorecase
set smartcase
set hlsearch
set expandtab
set autoindent
set number
syntax on

nmap <Leader>q :nohlsearch<CR>

set background=dark
let base16colorspace=256
colorscheme spacegray

" Use 256 term color of available
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
  set t_Co=256
endif

set laststatus=2

filetype plugin indent on

nmap <Leader>e :NERDTreeToggle<CR>

" Buffer delete mapping
nmap <Leader>d :bp<bar>sp<bar>bn<bar>bd<CR>
command Bd bp | sp | bn | bd

let g:airline#extensions#tabline#enabled = 1

" Tabularize shortcuts
nmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:\zs<CR>

" Unite mappings/configs
nmap <Leader>u :Unite -start-insert file_rec/async<CR>
nmap <Leader>uo :Unite -start-insert buffer<CR>
nmap <Leader>ub :Unite -start-insert bookmark<CR>
nmap <Leader>b :UniteBookmarkAdd<CR>
nmap <space>/ :Unite grep:.<cr>

" Binding to start vimshell
nmap <Leader>s :VimShellTab
nmap <Leader>qs :VimShellClose


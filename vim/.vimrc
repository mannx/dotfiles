filetype on
filetype plugin on
filetype indent on

set number relativenumber
set tabstop=4
set shiftwidth=4

set splitright

set termguicolors

"colorscheme gruvbox-material
"colorscheme iceberg
colorscheme atom-dark
set background=dark

" Shortcut split navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

call plug#begin()

" Syntax Highlighting / Utils
Plug 'maxmellon/vim-jsx-pretty'
Plug 'fatih/vim-go', {'do': 'GoInstallBinaries'}
Plug 'rust-lang/rust.vim'

" File browser
Plug 'preservim/nerdtree'

call plug#end()

" Configuration for rust-lang/rust
" Auto format on save
let g:rustfmt_autosave = 1

" Configuration for NERDTreee
"autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree on open and move cursor to file if opened
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Exit VIM if NERDTree if only window remaing
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

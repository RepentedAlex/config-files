set tabstop=4
set shiftwidth=4
set number
set cc=80
syntax on
set cursorline
set noswapfile
set undofile
set undodir=~/.nvim/undo
filetype indent on
filetype plugin indent on
set si
set ai

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

call plug#begin('~/.config/nvim/plugged')

   Plug 'gruvbox-community/gruvbox'
   Plug 'vim-airline/vim-airline'
   Plug 'preservim/nerdtree' |
						   \ Plug 'Xuyuanp/nerdtree-git-plugin'
   Plug 'junegunn/goyo.vim'
   Plug 'tpope/vim-fugitive'
   Plug 'dense-analysis/ale'
   Plug 'junegunn/gv.vim'
   Plug 'simnalamburt/vim-mundo'
   Plug 'preservim/nerdcommenter'
   Plug 'danymat/neogen'

   call plug#end()

colorscheme gruvbox
lua << EOF
require('neogen').setup {}
EOF

inoremap { {}<Esc>ha
inoremap ( ()<Esc>ha
inoremap [ []<Esc>ha
inoremap " ""<Esc>ha
inoremap ' ''<Esc>ha
inoremap ` ``<Esc>ha

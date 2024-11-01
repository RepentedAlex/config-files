set tabstop=4
set autoindent
set number
set cc=80
syntax on
set cursorline
set noswapfile
set undofile
set undodir=~/.nvim/undo

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif

call plug#begin()

   Plug 'gruvbox-community/gruvbox'
   Plug 'vim-airline/vim-airline'
   Plug 'preservim/nerdtree' |
						   \ Plug 'Xuyuanp/nerdtree-git-plugin'
   Plug 'junegunn/goyo.vim'
   Plug 'tpope/vim-fugitive'
   Plug 'junegunn/gv.vim'
   Plug 'simnalamburt/vim-mundo'
   Plug 'preservim/nerdcommenter'

   call plug#end()

colorscheme gruvbox

" Options
let mapleader = ","
set clipboard=unnamedplus " Enables the clipboard between Vim/Neovim and other applications.
set completeopt=noinsert,menuone,noselect " Modifies the auto-complete menu to behave more like an IDE.
set cursorline " Highlights the current line in the editor
set hidden " Hide unused buffers
set autoindent " Indent a new line
set inccommand=split " Show replacements in a split screen
set mouse=a " Allow to use the mouse in the editor
set number " Shows the line numbers
set splitbelow splitright " Change the split screen behavior
set title " Show file title
set wildmenu " Show a more advance menu
set cc=80 " Show at 80 column a border for good code style
filetype plugin indent on   " Allow auto-indenting depending on file type
syntax on
set spell " enable spell check (may need to download language package)
set ttyfast " Speed up scrolling in Vim
set tabstop=4
set shiftwidth=4
set expandtab


call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.vim/plugged')
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'morhetz/gruvbox'
Plug 'projekt0n/github-nvim-theme'
Plug 'vim-airline/vim-airline'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'leoluz/nvim-dap-go'
call plug#end()

" colorscheme gruvbox
colorscheme github_dark_default
let g:bargreybars_auto=0
let g:airline_solorized_bg='dark'
let g:airline_powerline_fonts=1
"let g:airline#extension#tabline#enable=1
"let g:airline#extension#tabline#left_sep=' '
"let g:airline#extension#tabline#left_alt_sep='|'
"let g:airline#extension#tabline#formatter='unique_tail'
let NERDTreeQuitOnOpen=1

" gopls
let g:go_def_mode='gopls'
let g:go_info_mode='gopls'
let g:go_fmt_command = "gofmt"       " goimports / goreturns
let g:go_auto_type_info = 1          " show type under cursor
nnoremap <buffer> <leader>rn :GoRename<CR>


" NERDTree
:nnoremap <C-k> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

":nnoremap <leader>t :echo "Líder funcionando!"<CR>

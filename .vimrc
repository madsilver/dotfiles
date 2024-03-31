"Force read encoding
set encoding=utf-8

" To work cool, disable compatibility with Vi
set nocompatible

filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

" Keep plugin commands between vundle#begin/end
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'morhetz/gruvbox'
Plugin 'scrooloose/nerdtree.git'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'vim-airline/vim-airline'
"Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
"Plugin 'valloric/youcompleteme'

" Choose languages
Plugin 'python-mode/python-mode'
Plugin 'elzr/vim-json'
Plugin 'fatih/vim-go'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']

" NERDTree
:nnoremap <C-k> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

let g:syntastic_java_checkers = []
let g:ctrlp_max_files=0

"vim-go
let g:syntastic_go_checkers = ['govet', 'errcheck', 'go']
noremap <C-b> :sh<CR>
let g:go_highlight_functions = 1                                                          
let g:go_highlight_methods = 1                                                           
let g:go_highlight_fields = 1                                                         
let g:go_highlight_structs = 1
let g:go_highlight_interfaces = 1
let g:go_highlight_operators = 1                             
let g:go_highlight_build_constraints = 1

" lightline
set laststatus=2 " to display the status line always
if !has('gui_running')
  set t_Co=256
endif

" Display line numbers
set number
set numberwidth=4

syntax on
set background=dark
colorscheme papercolor

set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

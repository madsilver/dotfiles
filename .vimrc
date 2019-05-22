" Force read encoding
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
Plugin 'kien/ctrlp.vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'flazz/vim-colorschemes'
Plugin 'tpope/vim-surround'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'airblade/vim-gitgutter'
Plugin 'kristijanhusak/vim-hybrid-material'
Plugin 'leafOfTree/vim-vue-plugin'

" Choose languages
Plugin 'pangloss/vim-javascript'
Plugin 'python-mode/python-mode'
Plugin 'StanAngeloff/php.vim'
Plugin 'elzr/vim-json'

" All of your Plugins must be added before the following line
call vundle#end()

filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

" NERDTree
map <C-K> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" lightline
set laststatus=2 " to display the status line always
if !has('gui_running')
  set t_Co=256
endif

" Display line numbers
set number
set numberwidth=4

set background=dark
colorscheme hybrid

set backupdir=.backup/,~/.backup/,/tmp//
set directory=.swp/,~/.swp/,/tmp//
set undodir=.undo/,~/.undo/,/tmp//

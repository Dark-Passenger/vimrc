set nocompatible              " required
filetype off                  " required

" Enable mouse in all modes
"set mouse=a

" Remap keys for tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

"enable line number
set nu

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle
" instead of Plugin)
Plugin 'vim-scripts/indentpython.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'Lokaltog/powerline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
let python_highlight_all=1
syntax on

" Whitespace handling
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Setup powerline
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim/
set laststatus=2
set encoding=utf-8
set t_Co=256

" Start NerdTreeTabs on startup
let g:nerdtree_tabs_open_on_console_startup = 1

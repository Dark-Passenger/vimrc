set nocompatible
filetype off
set noswapfile                " disable swapfile
set number                    " enable number
set mouse=a                   " Enable mouse in all modes

set ignorecase                " Ignore case when searching
set smartcase                 " When searching try to be smart about cases
set hlsearch                  " Highlight search results
set incsearch                 " Makes search act like search in modern browsers
set magic                     " For regular expressions turn magic on

set ai                        "Auto indent
set si                        "Smart indent
set wrap                      "Wrap lines

" Remap keys for tab switching
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'vim-scripts/indentpython.vim'   "Python indentation
Plugin 'Valloric/YouCompleteMe'         "Autocomplete
Plugin 'scrooloose/syntastic'           "syntax highlighting
Plugin 'vim-airline/vim-airline'        "Status bar
Plugin 'vim-airline/vim-airline-themes' "Airline themes

" End of vundle
call vundle#end()
filetype plugin indent on

"Allow indentpython to highlight python syntax
let python_highlight_all=1

"Setup a global YouCompleteMe configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

"Enable syntax highlighting
syntax enable

" Enable colorscheme
set background=dark

" Whitespace handling
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
autocmd BufWritePre * %s/\s\+$//e       "Remove trailing whitespace on save

" Setup airline
set laststatus=2
set encoding=utf-8
set t_Co=256
set noshowmode
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

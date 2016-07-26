 " ------------------------ Vundle -----------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" -------------------------------------------------------------

Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdtree'
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F4>"
let g:NERDTreeMapPreview="<F5>"

Plugin 'Valloric/YouCompleteMe'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
" imap <C-\> <Plug>snipMateNextOrTrigger
" let g:snips_trigger_key = '<C-\>'

" Plugin 'altercation/vim-colors-solarized'
" vim for tmux 
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'tmux-plugins/vim-tmux'

Plugin 'tpope/vim-fugitive'

call vundle#end()            " required
filetype plugin indent on    " required
" -------------------------------------------------------------
set term=screen-256color
"enable syntax
syntax on

" cmd line height =2
set cmdheight=2

" enable highlight search
set hlsearch

" set space to turn off highlighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" hot key for nerdtree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" visual autocomplete for command menu
set wildmenu

" highlight matching {[()]}
set showmatch

" set vim theme
set background=dark
colorscheme smyck

" allow cusor go beyond last character
set virtualedit=onemore

" tab setting
set tabstop=3
set softtabstop=3
set expandtab 

" extend history
set history=700

" enable ruler
set ruler

" alow mouse to scroll
set mouse=a

" paste toggle = F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

nmap <leader>ne :NERDTree<cr>

" highlight current line
set cursorline

" set line number
set number

" set relative line number
set relativenumber

set laststatus=2
set fillchars+=stl:\ ,stlnc:\

" set lines=50 columns=100
" something's here 

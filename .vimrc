 " ------------------------ Vundle -----------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" -------------------------------------------------------------

Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'

Plugin 'scrooloose/nerdtree'
silent! nmap <C-p> :NERDTreeToggle<CR>
silent! map <F3> :NERDTreeFind<CR>

let g:NERDTreeMapActivateNode="<F3>"
let g:NERDTreeMapPreview="<F4>"

Plugin 'Valloric/YouCompleteMe'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'
imap <C-\> <Plug>snipMateNextOrTrigger
" let g:snips_trigger_key = '<C-\>'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" -------------------------------------------------------------
syntax on
set cmdheight=2
" enable highlight search
set hlsearch
" set space to turn off highlighting
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

let mapleader = ","
nmap <leader>ne :NERDTree<cr>

set background=dark
colorscheme smyck

set virtualedit=onemore

set history=700

set ruler

set mouse=a

nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

nmap <leader>ne :NERDTree<cr>

set relativenumber
set number
set laststatus=2
set fillchars+=stl:\ ,stlnc:\

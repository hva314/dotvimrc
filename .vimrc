" ------------------------ Vundle -----------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

set encoding=utf-8
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" -------------------------------------------------------------

Plugin 'godlygeek/tabular'
Plugin 'bling/vim-airline'

" enable tab for Vim airline
let g:airline#extension#tabline#enabled = 1

Plugin 'scrooloose/nerdtree'
" hot key for nerdtree
let mapleader = ","
nmap <leader>ne :NERDTree<cr>

" silent! nmap <C-p> :NERDTreeToggle<CR>
" silent! map <F3> :NERDTreeFind<CR>
" let g:NERDTreeMapActivateNode="<F4>"
" let g:NERDTreeMapPreview="<F5>"
Plugin 'vim-syntastic/syntastic'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-fugitive'
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

call vundle#end()            " required
filetype plugin indent on    " required
" -------------------------------------------------------------

" change cursor from block to I-beam
" when in inser mode for Gnome Terminal >=3.16 
if has("autocmd")
    au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
    au InsertEnter,InsertChange *
                \ if v:insertmode == 'i' | 
                \   silent execute '!echo -ne "\e[6 q"' | redraw! |
                \ elseif v:insertmode == 'r' |
                \   silent execute '!echo -ne "\e[4 q"' | redraw! |
                \ endif
    au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

" for VTE compatible terminal
let &t_SI = "\<Esc>[6 q"
let &t_SR = "\<Esc>[4 q"

"enable syntax
syntax on
set term=screen-256color

nnoremap <A-Left> :tabprevious<CR>
nnoremap <A-Right> :tabnext<CR>
" cmd line height =2
" set cmdheight=2

" enable highlight search
" set space to turn off highlighting
set hlsearch
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" visual autocomplete for command menu
set wildmenu

" highlight matching {[()]}
set showmatch

" set vim theme
set background=dark
colorscheme desert

" allow cusor go beyond last character
set virtualedit=onemore

" turn in indenting 
set autoindent
set smartindent
set cindent

" tab setting
set tabstop=4
set softtabstop=4
set expandtab 
set shiftwidth=4
" extend history
set history=500

" enable ruler
set ruler

" alow mouse to scroll
set mouse=a

" paste toggle = F2
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>
set showmode

" highlight current line
set cursorline
hi CursorLine cterm=NONE ctermbg=blue ctermfg=white guibg=blue guifg=white

" set line number
set number

" set relative line number
" set relativenumber

set laststatus=2
set fillchars+=stl:\ ,stlnc:\

set clipboard=unnamedplus

" set lines=50 columns=100

" jump to last edited line
autocmd BufReadPost *
  \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
  \   exe "normal g`\"" |
  \ endif

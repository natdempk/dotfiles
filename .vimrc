"required
set nocompatible
filetype off
" opt
set shell=bash

set runtimepath=~/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,~/.vim/after

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" required
Plugin 'gmarik/Vundle.vim'

set expandtab
"set t_Co=256
set t_Co=16
set hlsearch	
set smartcase	
set ignorecase	
set incsearch   
set cindent
set expandtab	
set shiftwidth=4
set smartindent	
set smarttab	
set softtabstop=4
set tabstop=4
set ruler	
set encoding=utf-8
set showcmd
set background=dark
set relativenumber
set number	
set linebreak	
set showbreak=+++ 	
set showmatch	
set undolevels=1000	
set colorcolumn=100
set backspace=indent,eol,start

" mostly support transparent terminal
"hi Normal ctermbg=NONE

" plugin manager
Bundle 'gmarik/vundle'
" git changes next to line numbers + stats @ bottom
Bundle 'airblade/vim-gitgutter' 
" nice statusline + tab/buffer listing
Bundle 'bling/vim-airline'
" syntax checking on write
"Bundle 'scrooloose/syntastic'
" easy commenting
Bundle 'scrooloose/nerdcommenter'
" kernel coding style for C
"Bundle 'bhilburn/kernel-coding-style'
" indentation level guides
Bundle 'nathanaelkane/vim-indent-guides'
" add ability to refer to surrounding []() etc
Bundle 'tpope/vim-surround'
" lotsa color schemes (for desert256)
Bundle 'flazz/vim-colorschemes'
" Solarized
Bundle 'altercation/vim-colors-solarized'
" some more colors that don't work totally...
" Bundle 'chriskempson/base16-vim'
" create pairs of [] automatically when typing like subl
Bundle 'jiangmiao/auto-pairs'
" Fuzzy find with <c-p>
Bundle 'kien/ctrlp.vim'
" G-G-G-G-GO
Bundle 'fatih/vim-go'
" Improved python linting
Bundle 'nvie/vim-flake8'
" Coffescript syntax
Bundle 'kchmck/vim-coffee-script'

" all plugins must be added before the following line
call vundle#end()
"syntax on
"filetype plugin indent on

" display line movement
nnoremap j gj
nnoremap gj j
nnoremap k gk
nnoremap gk k

" disable arrow keys
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" quick buffer traversal
nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

" command history without up+down
cnoremap <C-p> <Up>
cnoremap <C-n> <Down>

" better pane movement
noremap <C-J> <C-W>w
noremap <C-K> <C-W>W
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h

" put searches into view
noremap <Leader>n nzz
noremap <Leader>N Nzz

" automatically reload vimrc when it's saved
au BufWritePost .vimrc so ~/.vimrc

" trick bash so it gives us nice things
" turns out this isnt as good as i expected
"set shellcmdflag=-ic

" vim-airline configuration
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 0

" vim-indent-guides config
let g:indent_guides_start_level = 1
let g:indent_guides_guide_size = 4
let g:indent_guides_auto_colors = 1
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=darkgray
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=darkgray
autocmd BufReadPre,FileReadPre * :IndentGuidesEnable

" stop gitgutter freaking out, don't remember what this does...
let g:gitgutter_realtime = 0

" recognize go files and set filetype, indentation, etc
au BufRead,BufNewFile *.go setlocal filetype=go
au BufRead,BufNewFile *.go setlocal tabstop=2
au BufRead,BufNewFile *.go setlocal softtabstop=2
au BufRead,BufNewFile *.go setlocal shiftwidth=2
au BufRead,BufNewFile *.go setlocal expandtab

" go syntax highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_extra_types = 1
" maybe remove this later
let g:go_fmt_autosave = 0

" auto flake8 on python writes
autocmd BufWritePost *.py call Flake8()

" solarized colors fix
let g:solarized_termcolors=16

" this is moved due to paranoia about colors not working
syntax on
syntax enable
filetype plugin indent on
colorscheme solarized

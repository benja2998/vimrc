" Enable syntax highlighting
syntax on

" Set termguicolors
set termguicolors

" Show line numbers
set relativenumber
set number

" Enable smart indentation
set smartindent
set autoindent
set tabstop=4
set shiftwidth=4
set expandtab

" Enable highlight
set cursorline

" Enable mouse support
set mouse=a

" Use a better status line
set laststatus=2

if has('win32') || has('win64')
  let s:plug_path = expand('~\vimfiles\plugged')
else
  let s:plug_path = expand('~/.vim/plugged')
endif

call plug#begin(s:plug_path)

Plug 'github/copilot.vim'
Plug 'morhetz/gruvbox'

call plug#end()

set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

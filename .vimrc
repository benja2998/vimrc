" Enable syntax highlighting
syntax on

set completeopt=menuone,noinsert,noselect

" Use <Tab> to confirm if completion menu is visible, otherwise insert Tab
inoremap <silent><expr> <Tab> pumvisible() ? coc#_select_confirm() : "\<Tab>"

let g:copilot_no_tab_map = v:true

imap <silent><script><expr> <C-f> copilot#Accept("\<CR>")

" File encoding
set encoding=utf-8
set fileencoding=utf-8 

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
Plug 'neoclide/coc.nvim'

call plug#end()

set background=dark
let g:gruvbox_contrast_dark = 'hard'
colorscheme gruvbox

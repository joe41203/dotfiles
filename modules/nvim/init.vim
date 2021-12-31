if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')

  call dein#load_toml('~/.config/nvim/dein.toml', { 'lazy': 0 })
  call coc#util#install()

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

let NERDTreeShowHidden = 1

filetype plugin indent on

set encoding=utf-8
set modifiable
set fileencoding=utf-8
set clipboard+=unnamed
set backspace=2
set tabstop=2
set shiftwidth=2
set laststatus=2
set statusline=%y
set showmatch
set wrapscan
set hlsearch
set showcmd
set title
set number relativenumber
set cursorline
set cursorcolumn
set nofoldenable
set noswapfile
set expandtab
set splitbelow
set splitright
set incsearch
set ignorecase
set smartcase

set completeopt=menuone,noinsert

inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

nnoremap <C-f> :Ag<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>
nnoremap sj <C-w>j
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sh <C-w>h
noremap  <up>    <nop>
noremap  <left>  <nop>
noremap  <right> <nop>
noremap  <down>  <nop>
noremap! <up>    <nop>
noremap! <left>  <nop>
noremap! <right> <nop>
noremap! <down>  <nop>
noremap  <s>     <nop>
noremap! <s>     <nop>

syntax on


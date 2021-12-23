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

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

if has('vim_starting') && dein#check_install()
  call dein#install()
endif

set encoding=utf-8
set fileencoding=utf-8
set number

let mapleader = ","

nnoremap [Fzf] <Nop>
nmap <Leader>f [Fzf]
nnoremap [Fzf]a :<C-u>Ag<CR>
nnoremap [Fzf]f :<C-u>Files<CR>
nnoremap [Fzf]g :<C-u>GFiles<CR>
nnoremap [Fzf]G :<C-u>GFiles?<CR>
nnoremap [Fzf]b :<C-u>Buffers<CR>

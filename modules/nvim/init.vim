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

  call ddc#custom#patch_global('completionMenu', 'pum.vim')
  call ddc#custom#patch_global('sources', [
   \ 'around',
   \ 'vim-lsp',
   \ 'file'
   \ ])
  call ddc#custom#patch_global('sourceOptions', {
   \ '_': {
   \   'matchers': ['matcher_head'],
   \   'sorters': ['sorter_rank'],
   \   'converters': ['converter_remove_overlap'],
   \ },
   \ 'around': {'mark': 'Around'},
   \ 'vim-lsp': {
   \   'mark': 'LSP',
   \   'matchers': ['matcher_head'],
   \   'forceCompletionPattern': '\.|:|->|"\w+/*'
   \ },
   \ 'file': {
   \   'mark': 'file',
   \   'isVolatile': v:true,
   \   'forceCompletionPattern': '\S/\S*'
   \ }})
  call ddc#enable()

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable
if has('vim_starting') && dein#check_install()
  call dein#install()
endif

filetype plugin indent on

set encoding=utf-8
set nowrap
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
inoremap <Tab> <Cmd>call pum#map#insert_relative(+1)<CR>
inoremap <S-Tab> <Cmd>call pum#map#insert_relative(-1)<CR>

nnoremap <C-g> :Ag<CR>
nnoremap <C-f> :Rg<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <F5> :UndotreeToggle<CR>
nnoremap <F6> :NERDTreeFind<CR>
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

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

let g:webdevicons_enable_nerdtree = 1
let g:python_host_prog = system('echo -n (which python2)')
let g:python3_host_prog = system('echo -n (which python3)')
let NERDTreeShowHidden = 1

syntax on


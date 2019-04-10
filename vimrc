call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'cocopon/iceberg.vim'
Plug 'hzchirs/vim-material'
Plug 'chr4/nginx.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-scripts/indentpython.vim'
Plug 'joshdick/onedark.vim'
call plug#end()

set background = "dark"
set encoding=utf-8

syntax on
let g:onedark_color_overrides = {
\   "black": {"gui": "#000000", "cterm": "0", "cterm16": "0" },
\ }
colorscheme onedark

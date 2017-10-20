"plugins"
call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
call plug#end()

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

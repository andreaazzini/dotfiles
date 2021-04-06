call plug#begin('~/.vim/plugged')
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'cocopon/iceberg.vim'
Plug 'hzchirs/vim-material'
Plug 'chr4/nginx.vim'
Plug 'elixir-editors/vim-elixir'
Plug 'vim-scripts/indentpython.vim'
Plug 'joshdick/onedark.vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'mhinz/vim-mix-format'
Plug 'preservim/nerdtree'
call plug#end()

set background = "dark"
set encoding=utf-8

syntax on
let g:onedark_color_overrides = {
\   "black": {"gui": "#000000", "cterm": "0", "cterm16": "0" },
\   "white": {"gui": "#ffffff", "cterm": "255", "cterm16": "255" },
\ }
colorscheme onedark

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp\|deps$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Use tab for trigger completion with characters ahead and navigate.
" " NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" " other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ <SID>check_back_space() ? "\<TAB>" :
  \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Elixir auto-formatting
let g:mix_format_on_save = 1

" NerdTree
map <C-n> :NERDTreeToggle<CR>

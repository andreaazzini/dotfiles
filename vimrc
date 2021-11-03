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
Plug 'mhinz/vim-mix-format'
Plug 'preservim/nerdtree'
Plug 'slashmili/alchemist.vim'
Plug 'vim-airline/vim-airline'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif
Plug 'dense-analysis/ale'
Plug 'zchee/deoplete-jedi'
Plug 'ryanoasis/vim-devicons'
Plug 'airblade/vim-gitgutter'
call plug#end()

set background = "dark"
set encoding=utf-8

" Set python 3 host
let g:python3_host_prog='/home/azzarcher/miniconda3/bin/python'

syntax on
let g:onedark_color_overrides = {
\   "black": {"gui": "#0a0a0a", "cterm": "0", "cterm16": "0" },
\   "white": {"gui": "#ffffff", "cterm": "255", "cterm16": "255" },
\ }
colorscheme onedark

" Ignore some folders and files for CtrlP indexing
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|node_modules\|log\|tmp\|deps$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }

" Elixir auto-formatting
let g:mix_format_on_save = 1

" Airline
let g:airline_powerline_fonts = 1

" Deoplete
let g:deoplete#enable_at_startup = 1

inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

" NERDTree

" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | sp | wincmd j | endif
autocmd VimEnter * ter
autocmd VimEnter * wincmd k | 8 wincmd + | set number
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Remap keys
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

let NERDTreeShowHidden=1

" Ale
let g:ale_linters = {
\   'python': ['pylint'],
\   'javascript': ['eslint'],
\}

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black']
\}

let g:ale_fix_on_save = 1


" Use ctrl-[hjkl] to select the active split!
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

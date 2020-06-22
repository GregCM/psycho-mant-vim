set nocompatible
set number
set relativenumber
set splitbelow
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-latex/vim-latex'
Plugin 'Konfekt/FastFold'
"Plugin 'python-mode/python-mode'

filetype plugin indent on

syntax on

if &ft=='tex'
    set foldmethod=syntax
    set foldlevelstart=3
else
    set foldmethod=indent
    set foldlevelstart=3
endif

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:python_syntax_folding = 1
let g:vimsyn_folding = 'af'

colorscheme greg2

" MOVEMENT
" Indenting with Tab
" show existing tab with 4 spaces width
set tabstop=4
set softtabstop=4
set autoindent
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab
" Normal mode updates
map <C-@> :edit <CR>
" Tabs for command mode
nnoremap <S-Tab> <<
nnoremap <Tab> >>
" Shift+Tab for insert mode
inoremap <S-Tab> <C-d>

set mouse=a
set cursorline
set hlsearch
hi Search term=NONE cterm=underline
noremap <silent> <C-l> :nohls<CR><C-l>

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" Using 'Makefile' in ./
    " kuick kode kompile
    map <silent> <C-k> :terminal ++hidden ++close make<CR>
    " build bode bompile and enter 'de[b]ug mode'
    map <silent> <C-b> :terminal ++rows=8<CR>make<CR>

" copy to register
set clipboard=unnamedplus
noremap <C-p> "+pa <ESC>
vnoremap <C-c> "+y


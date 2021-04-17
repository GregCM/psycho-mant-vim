set nocompatible
set number
set relativenumber
set splitbelow
filetype off

" $HOME/*/ directories
set undodir=~/.cache/vim/undo
set directory=~/.cache/vim/swap
set backupdir=~/.cache/vim/backup
set viewdir=~/.cache/vim/view
set viminfo+='1000,n~/.cache/vim/viminfo
set runtimepath=~/.config/vim/,$VIMRUNTIME

set rtp+=~/.config/vim/bundle/Vundle.vim
call vundle#rc()
call vundle#begin('~/.config/vim/bundle/')

Plugin 'VundleVim/Vundle.vim'
Plugin 'Konfekt/FastFold'
Plugin 'vim-test/vim-test'
"Plugin 'vim-latex/vim-latex'
"Plugin 'python-mode/python-mode'

call vundle#end()
filetype plugin indent on

syntax on

set grepprg=grep\ -nH\ $*
let g:tex_flavor = "latex"

let g:markdown_folding = 1
let g:tex_fold_enabled = 1
let g:python_syntax_folding = 1
let g:vimsyn_folding = 'af'

colorscheme greg

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

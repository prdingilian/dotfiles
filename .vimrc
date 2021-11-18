" basic stuff
syntax on
set relativenumber
let mapleader=' '
set tabstop=2
set re=2
set background=light

" remaps
nnoremap <Leader>f :Files<CR>

" plugins
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'pangloss/vim-javascript'

call plug#end()

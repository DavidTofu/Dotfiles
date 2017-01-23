set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'https://github.com/altercation/vim-colors-solarized'
Plugin 'https://github.com/vimwiki/vimwiki'
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/Xuyuanp/nerdtree-git-plugin'
Plugin 'https://github.com/wincent/command-t'
Plugin 'othree/html5.vim'
Plugin 'christoomey/vim-tmux-navigator'
Plugin 'gregsexton/MatchTag'
Plugin 'Valloric/YouCompleteMe'
" Plugin 'lervag/vimtex'


" Save folds
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd BufEnter *.groovy set makeprg=groovy\ %
autocmd BufEnter *.py set makeprg=python3\ %

autocmd CMDWinEnter	set bg=dark
autocmd GUIEnter * colorscheme solarized

set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4
set nu

" Dat mouse support tho
set mouse=a

" Vim, be normal
set splitbelow

" Better leader
let mapleader = ","
" Resize splits more quickly
nnoremap <silent> <Leader>a :exe "resize +2" <CR>
nnoremap <silent> <Leader>aa :exe "resize -2" <CR>

" Vimwiki
let g:vimwiki_list = [ {'path' : '~/Google Drive/Wiki/vimwiki', 'syntax': 'markdown'},
			\ {'path': '~/Google Drive/WoL', 'syntax': 'markdown' } ]

" For vim-latexsuite to work
let g:text_flavor='latex'

set tw=79

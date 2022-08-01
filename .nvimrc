" 	File: Nvim Configuration
"
"	 ____  _______________ 
"	(_)  \/  || ___ \ ___ \ Author:     Kevin Veldman
"	 _| .  . || |_/ / |_/ / Date:       01-08-2022
"	| | |\/| || ___ \    /  File:       Neovim Configuration
"	| | |  | || |_/ / |\ \  Github:     meKevinpv
"	|_\_|  |_/\____/\_| \_| Licence:    Free
"
"
"	Personal Settings
set rnu
set exrc
set foldcolumn=1
set smarttab
set shiftwidth=4
set smartindent
set expandtab
set nohlsearch
set hidden
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set nowrap
set tabstop=4
set incsearch
set ai
set si
set so=7
let $LANG='en'
set langmenu=en
set colorcolumn=80
set signcolumn=yes
set nocompatible

"	Plugins
call plug#begin()
Plug 'folke/zen-mode.nvim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'f-person/git-blame.nvim'
Plug 'sheerun/vim-polyglot'
Plug 'dylanaraps/wal.vim'
call plug#end()

"	Emmet for HTML and CSS
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key= ','

" 	Hotkeys
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-0>:set spell!<cr>
map <space> /
map <C-space> ?	

"	Theming
colo seoul256

"colorscheme wal
let g:seoul256_background = 240
syntax enable

" -- Personal Settings --
set rnu
set foldcolumn=1
set smarttab
set shiftwidth=4
set tabstop=4
set ai
set si
set wrap
map <space> /

" -- Sudo save file on :W
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" -- 7 Lines to cursor when moving vertically
set so=7

let $LANG='en'
set langmenu=en

map <C-space> ?
" -- Plugins --
call plug#begin()
Plug 'folke/zen-mode.nvim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
Plug 'f-person/git-blame.nvim'
call plug#end()

" -- Emmet for HTML and CSS --
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key= ','

" -- Theme --
colo seoul256
let g:seoul256_background = 233
syntax enable

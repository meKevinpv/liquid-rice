" -- Personal Settings --
set number

" -- Plugins --
call plug#begin()
Plug 'folke/zen-mode.nvim'
Plug 'mattn/emmet-vim'
Plug 'junegunn/seoul256.vim'
Plug 'itchyny/lightline.vim'
call plug#end()

" -- Emmet for HTML and CSS --
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_leader_key= ','

" -- Theme --
colo seoul256
let g:seoul256_background = 233
syntax enable

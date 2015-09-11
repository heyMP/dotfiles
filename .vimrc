" Let pathogen install plugins
execute pathogen#infect()

set shiftwidth=2

" Syntactics
filetype plugin indent on
syntax on

" Set the default theme to Monokai-Fefined
colorscheme Monokai-Refined
let g:molokai_original = 1
let g:rehash256 = 1

" Toggle Nerdtree
map <C-n> :NERDTreeToggle<CR>

" Open Nerdtree Tab
map <Leader>n <plug>NERDTreeTabsToggle<CR>

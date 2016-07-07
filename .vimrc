filetype off
" Let pathogen install plugins
execute pathogen#infect()

let mapleader=","
set shiftwidth=2
set backspace=2   " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile    " http://robots.thoughtbot.com/post/18739402579/global-gitignore#comment-458413287
set history=50
set ruler         " show the cursor position all the time
set showcmd       " display incomplete command
set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set autowrite     " Automatically :write before running commands
set autoread      " Reload files changted outside vim

" Allow usage of mouse in iTerm
set ttyfast
set mouse=v
set ttymouse=xterm2

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·

" Make it obvious where 80 characters is
set textwidth=80

" Numbers
set number
set numberwidth=5

" Scrolling
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

"Toggle relative numbering, and set to absolute on loss of focus or insert
"mode
set rnu
function! ToggleNumbersOn()
  set nu!
  set rnu
endfunction
function! ToggleRelativeOn()
  set rnu!
  set nu
endfunction
autocmd FocusLost * call ToggleRelativeOn()
autocmd FocusGained * call ToggleRelativeOn()
autocmd InsertEnter * call ToggleRelativeOn()
autocmd InsertLeave * call ToggleRelativeOn()

" Syntactics
filetype plugin indent on

" Set the default theme to Monokai-Refined
set t_Co=256
syntax on
colorscheme dracula

" Toggle Nerdtree
map <C-n> :NERDTreeMirrorToggle<CR>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map  <C-k> :tabnew<CR>
let g:nerdtree_tabs_smart_startup_focus = 0
let g:NERDTreeShowHidden = 1
let NERDTreeDirArrows=0

" CtrlP
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='powerlineish'

" Allow NerdCommenter to execute in insert mode
imap <D-/> <esc>,c<space> 

" Multiple Cursors 
let g:multi_cursor_next_key='<C-g>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'

" Paste
set paste

" Added a debugger.  type ,hi and get the actual vim highlight name
map ,hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>

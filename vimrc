" Set line numbers
set number

set clipboard=unnamed

" Toggle NERDTree on CTRL + n
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeToggle<CR>
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0

" Easier tabs
ca tn :tabnew<CR>
ca tc :tabclose<CR>

" Use spaces, not tabs
set tabstop=2
set softtabstop=2
set shiftwidth=2
set shiftround
set expandtab

" ------------------Plugins------------------
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'                
Plug 'vim-airline/vim-airline'            
Plug 'vim-airline/vim-airline-themes'
Plug 'mxw/vim-jsx' 
Plug 'pangloss/vim-javascript' 
Plug 'leshill/vim-json'
Plug 'w0rp/ale'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all'  }
Plug 'junegunn/fzf.vim'

call plug#end()
"------------------ END ----------------------


" Remap jk as leader
inoremap jk <Esc>

" no swapfile
set noswapfile

" Map :FZF to Ctrl+P
nnoremap <silent> <C-p> :FZF<CR>

" Set line numbers
set number

" Use System Clipboard
set clipboard=unnamed

" Toggle NERDTree on CTRL + n
map <C-n> :NERDTreeToggle<CR>
map <C-b> :NERDTreeToggle<CR>

" Show hidden files in nerdtree
let NERDTreeShowHidden=1

" Ale linting stuff
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

" Set a cursor line
set cursorline

" Search highlighting
set hlsearch

" fix backspacing
set backspace=indent,eol,start

" Colorz and Themez
set t_Co=256
color wombat256mod
let g:airline_theme='term'

" Deoplete
let g:deoplete#enable_at_startup = 1


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
Plug 'HerringtonDarkholme/yats.vim'
Plug 'Shougo/deoplete.nvim'
Plug 'neoclide/coc.nvim', {'tag': '*', 'do': './install.sh'}

call plug#end()
"------------------ END ----------------------


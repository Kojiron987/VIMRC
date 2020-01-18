" Map the leader key to a comma.
let mapleader = "\<space>"

" Manage plugins with vim-plug
call plug#begin()

Plug('scrooloose/nerdtree')
Plug('tpope/vim-vinegar')
Plug('ctrlpvim/ctrlp.vim')
Plug('easymotion/vim-easymotion')
Plug('sjl/gundo.vim')
Plug('tpope/vim-fugitive')
Plug('vim-airline/vim-airline')

" colorscheme
Plug('felipesousa/rupza')
call plug#end()

packloadall                 " Load all plugins
silent! helptags ALL        " Load help files for all plugins.

set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden

" Show last command in status line.
set showcmd                 

set laststatus=2            " Always show status

set number
filetype plugin indent on   " Enable file type based indentation.
set autoindent              " Respect indentation when starting a new line
set showmatch
set wildmenu                " Enabled enhanced tab autocomplete.
set wildmode=list:longest,full   " Complete till longest string
                                 " then open the wildmenu.
syntax on                   " Enable syntax highlighting.
set foldmethod=indent       " Fold method by indent.
set tags=tags;              " Look for a tags file recursively in
                            " parent directories.
" Regenerate tags when saving python files.
" autocmd BufWritePost *.py silent! !ctags -R &
" Regenerate tags when saving c++ files.
" autocmd BufWritePost *.cpp *.h silent! !ctags -R &

set expandtab               " Expand tabs to spaces. Essential in Python.
set tabstop=4               " Number of spaces tab is counted for.
set shiftwidth=4            " Number of sapces to use for autoindent.
set backspace=2             " Fix backspace behavior on most terminals.

set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch

" Immediatly add a closing quotes or braces in insert mode.
" inoremap ' ''<esc>i
" inoremap ( ()<esc>i
" inoremap { {}<esc>i
" inoremap [ []<esc>i

" Fast split navigation with <Ctrl> + hjkl.
noremap <c-h> <c-w><c-h>
noremap <c-j> <c-w><c-j>
noremap <c-k> <c-w><c-k>
noremap <c-l> <c-w><c-l>

" Fast split navigation with <Ctrl> + hjkl for terminal mode.
tnoremap <c-h> <c-w><c-h>
tnoremap <c-j> <c-w><c-j>
tnoremap <c-k> <c-w><c-k>
tnoremap <c-l> <c-w><c-l>

" Save a file with leader-w.
noremap <leader>w :w<cr>

" Disable highlighting after pressing double esc key.
nnoremap <esc><esc> :nohlsearch<CR><esc>

set termguicolors
colorscheme rupza

command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window.

autocmd BufRead * normal zR         " Open folds when opening buffer.

" NERDTree setting
let NERDTreeShowBookmarks = 1 " Always show bookmarks.
let NERDTreeHijackNetrw = 0    " Avoid NERDTree replacing Netrw.
autocmd VimEnter * NERDTree " Enable NERDTree on Vim startup.
" Autoclose NERDTree if it's the only open window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
            \ b:NERDTree.isTabTree()) | q | endif
" Short cut for toggling NERDTree
noremap <leader>n :NERDTreeToggle<cr>
" Save a file with leader-w.
noremap <leader>w :w<cr>

" Disable highlighting after pressing double esc key.
nnoremap <esc><esc> :nohlsearch<CR><esc>


command! Bd :bp | :sp | :bn | :bd " Close buffer without closing window.

autocmd BufRead * normal zR         " Open folds when opening buffer.

" NERDTree setting
let NERDTreeShowBookmarks = 1 " Always show bookmarks.
let NERDTreeHijackNetrw = 0    " Avoid NERDTree replacing Netrw.
autocmd VimEnter * NERDTree " Enable NERDTree on Vim startup.
" Autoclose NERDTree if it's the only open window left.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") &&
            \ b:NERDTree.isTabTree()) | q | endif
" Short cut for toggling NERDTree
noremap <leader>n :NERDTreeToggle<cr>

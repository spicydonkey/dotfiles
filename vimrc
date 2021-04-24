filetype off

""" Setup vim-plug 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
"   A minimalist Vim plugin manager.
"
" Install
"   Unix
"       curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"           https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"   
"       Reload .vimrc and :PlugInstall to install plugins.
"
" Usage
"
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin()
" List the plugins here... (`Plug` commands)

" Colorscheme
" Seoul256.vilow-contrast Vim color scheme based on Seoul Colors. Works on 256-color terminal or on GVim.
Plug 'junegunn/seoul256.vim'

" goyo - Distraction-free writing in Vim
Plug 'https://github.com/junegunn/goyo.vim.git'

" limelight
Plug 'https://github.com/junegunn/limelight.vim.git'

call plug#end()     " update &runtimepath and init plugin system
" Automatically executes `filetype plugin indent on` and `syntax enable`.

filetype plugin indent on
syntax enable

" leader prefix
let mapleader = "\\"

" Color scheme
"" standards
"colorscheme industry    " pretty good for XPS13

"" seoul256
" seoul256 (dark - default):
"   Range:      233 (darkest) ~ 239 (lightest)
"   Default:    237
let g:seoul256_background = 233
colorscheme seoul256

" TAB
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set expandtab		" tabs are spaces
set autoindent  " copy indentation from previous line

" UI configs
set number	" show line numbers
"set relativenumber      " show relative line numbers
set showcmd	" show command in bottom bar
set cursorline      " highlight current line
filetype indent on      " load filetype=specific indent files
set wildmenu        " visual autocomplete
set lazyredraw      " redraw only when needs to
set showmatch       " highlight matching [{()}]

" Searching
set incsearch       " search as characters are entered
set hlsearch        " highlight matches

"" MY MAPPINGS
" turn off search highlight: by \<space>
nnoremap <leader><space> :nohlsearch<CR>

" easy vimrc editing
nnoremap <leader>ev :vsplit $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" folding
" set foldenable      " enable folding
" set foldlevelstart      " open most folds by defualt
" set foldnestmax=10      " 10 nested folds max
" space open/closes folds
nnoremap <space> za
set foldmethod=indent   " fold based on indent level

" Movement
" move vertically by visual line
nnoremap j gj
nnoremap k gk
" highlight last inserted text
nnoremap gV `[v`]

" Leader Shortcuts
" save session
nnoremap <leader>s :mksession<CR>

" turn off beeping sound
set visualbell
set t_vb=

" use matchit
"packadd! matchit

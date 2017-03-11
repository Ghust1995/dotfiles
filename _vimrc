scriptencoding utf-8
set encoding=utf-8
set modelines=1

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Vim plug {{{
call plug#begin('~\vimfiles\plugged')

Plug 'altercation/vim-colors-solarized'

Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' } 
Plug 'sjl/gundo.vim'
Plug 'vim-syntastic/syntastic'

call plug#end()
" }}}


" Colors {{{
syntax enable
set guifont=Lucida_Console:h10
set background=dark
colorscheme solarized
au GUIEnter * simalt ~x
" }}}

" Spaces and Tabs {{{
set tabstop=2
set softtabstop=2 
set shiftwidth=2 
set expandtab
" }}}

" UI Config {{{
set number
set showcmd
set cursorline
filetype indent plugin on
set wildmenu
set lazyredraw
set showmatch
" }}}

" Searching {{{
set incsearch						" search results as typing
set hlsearch						" highlight searches
set ignorecase		
set smartcase						" will use case sensitive if capital letter used
" }}}

" Folding {{{
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent
" }}}

" Movement {{{
" nnoremap j gj
"nnoremap k gk
" highlight last block
nnoremap gV `[v`]
" }}}

" Shortcuts {{{
inoremap jk <esc>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>s :mksession<CR>
set mouse=a
set wrap
" Facilitating copy and pasting from external clipboard
map <leader>p "+p      
map <leader>P "+P
map <leader>y "+y
" Fixes indentation
nnoremap <F7> mzgg=G`z
" }}}

" TODO: {{{
set linebreak
set backspace=indent,eol,start
set history=200
set ruler
set hidden
set cmdheight=2
set ttimeout						" time out for key codes
set ttimeoutlen=100			" wait up to 100ms after Esc for special key

set display=truncate    " Show @@@ in the last line if it is truncated.
set scrolloff=5 	" lines to show at top and bottom of cursor
" }}}

" Backups {{{
" }}}

" NERDTree {{{
autocmd vimenter * NERDTree " Open NERDTree on start
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif "Close vim if only NERDTree is opened
" }}}

" Syntastic {{{
let g:syntastic_javascript_checkers = ['standard']
" }}}

" vim:foldmethod=marker:foldlevel=0

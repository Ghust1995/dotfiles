scriptencoding utf-8
set encoding=utf-8

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

filetype indent plugin on

syntax on								" Enable syntax highlighting

set ts=2 sw=2						" tab = 2 spaces
set wrap
set linebreak						" line break doesnt cut words
set backspace=indent,eol,start
set history=200					" keep 200 lines of command line history
set ruler								" show the cursor position all the time
set showcmd							" display incomplete commands
set wildmenu						" display completion matches in a status line
set number							" display lines of code
set mouse=a							" allows mouse usage
set hidden							" makes it possible to have files in unsaved buffer
set cmdheight=2

" Search settings
set incsearch						" search results as typing
set ignorecase		
set smartcase						" will use case sensitive if capital letter used
set hlsearch						" highlight searches

set ttimeout						" time out for key codes
set ttimeoutlen=100			" wait up to 100ms after Esc for special key

" Show @@@ in the last line if it is truncated.
set display=truncate

set scrolloff=5 	" lines to show at top and bottom of cursor

" Facilitating copy and pasting from external clipboard
map <leader>p "+p
map <leader>y "+y

" gvim stuff
set guifont=Lucida_Console:h10
set background=dark
colorscheme deep-space
au GUIEnter * simalt ~x


" vim plug
call plug#begin('~\vimfiles\plugged')

Plug 'sheerun/vim-polyglot'

call plug#end()

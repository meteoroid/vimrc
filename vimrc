set nocompatible
set backspace=indent,eol,start
set history=50
set number
set ruler
set showcmd
set incsearch
set autoindent
set nocindent 
set nosmartindent 
set shiftwidth=4
set tabstop=4
set expandtab
set noerrorbells
set autoread
set nrformats=alpha
set nobackup
set nowritebackup
set noswapfile
set laststatus=1


" Syntax highlighting on when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

if has("autocmd")
  filetype plugin on

  " Always jump to the last known cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif
else
  endif " has("autocmd")


" Function key maps
set nohlsearch
map <F2> :set hls!<CR>
set wrap
map <F3> :set wrap!<CR>


" Command key maps to create, close, and select tabs
map <D-t> :tabnew<CR>
map <D-w> :tabclose<CR>
map <D-1> 1gt
map <D-2> 2gt
map <D-3> 3gt
map <D-4> 4gt
map <D-5> 5gt
map <D-6> 6gt
map <D-7> 7gt
map <D-8> 8gt
map <D-9> 9gt


" Enter normal mode maps
map ; :
imap jj <ESC>
imap jk <ESC>


" Paired character key maps
inoremap ( ()<ESC>i
inoremap [ []<ESC>i
inoremap { {}<ESC>i
inoremap < <><ESC>i
inoremap ' ''<ESC>i
inoremap " ""<ESC>i
inoremap <BAR> <BAR><BAR><ESC>i


autocmd! bufwritepost .vimrc source %

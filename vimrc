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


" Switch syntax highlighting on, when the terminal has colors
if &t_Co > 2 || has("gui_running")
  syntax on
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  ""autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else
  endif " has("autocmd")
 

set nohlsearch
map <F2> :set hls!<CR>
set wrap
map <F3> :set wrap!<CR>


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


inoremap ( ()<esc>i
inoremap [ []<esc>i
inoremap { {}<esc>i
inoremap < <><esc>i
inoremap ' ''<esc>i
inoremap " ""<esc>i
inoremap <bar> <bar><bar><esc>i


autocmd! bufwritepost .vimrc source %

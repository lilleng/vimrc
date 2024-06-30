set nocompatible

if has('win32')
  set undodir=~/vimfiles/undo
  set directory=~/vimfiles/swap
  set backupdir=~/vimfiles/backup
  set guioptions-=m
  set guioptions-=T
  set guioptions-=r
else
  set undodir=~/.vim/undo
  set directory=~/.vim/swap
  set backupdir=~/.vim/backup
endif

set expandtab
set shiftwidth=2
set softtabstop=2
set undofile
set autoindent
set smartindent
set number
set relativenumber
set wildignore+=**/.git/**,*.exe,*.dll,*.pdb
set path+=**
set wildmenu
set mouse-=a
set nrformats-=octal

" Add a red square on the character beyond 80 characters.
highlight ColorColumn ctermbg=red
call matchadd('ColorColumn', '\%81v', 100)

syntax on
set showcmd
set cursorline
colorscheme desert
filetype indent plugin on

autocmd BufRead,BufNewFile *.conf setf dosini
augroup CursorLine
  au!
  au VimEnter * setlocal cursorline
  au WinEnter * setlocal cursorline
  au BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

nnoremap Q <nop>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

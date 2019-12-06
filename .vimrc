" Map enter/shift-enter to insert empty line below/above in command mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>
" Map f to format a paragraph
map f gwip

" update the buffer if it's been updated elsewhere. Checks one time after 4s of
" inactivity in normal mode.
set autoread
au CursorHold * checktime

set spell
set nocompatible
autocmd ColorScheme * highlight OverLength ctermbg=red ctermfg=white guibg=#592929
colorscheme molokai
"" colorscheme morning
match OverLength /\%81v.\+/

set autochdir
set laststatus=2
set noswapfile
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set guifont=Monospace\ 14
set shiftwidth=8
set backspace=2

" following 2 commands enforce column width to 80 chars
set textwidth=80
set wrapmargin=2

set smartindent
set autoindent
set comments=sr:/*,mb:*,el:*/
set noerrorbells
set nobackup
set t_Co=256
set number
set incsearch
set ignorecase
set showmatch
set hlsearch
set history=1000
set ruler
set showcmd
set mouse=a

set colorcolumn=80

syntax on
filetype on

" Look for tag file in directory of current file, in current directory and up
" until $WORK_DIR/work and stop on first hit.
set tags=./tags,tags;$WORK_DIR/work

set ttyfast
"" set mouse=a

"" autocmd BufWritePre * %s/\s\+$//e
"" autocmd BufEnter * silent! lcd %:p:h
autocmd bufnewfile *.c so ~/c_template.txt
autocmd bufnewfile *.cpp so ~/cpp_template.txt

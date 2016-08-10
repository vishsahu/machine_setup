colorscheme molokai
set laststatus=2
set noswapfile
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set nocompatible

set tabstop=8
set shiftwidth=3
set wrapmargin=0
set backspace=2
set textwidth=79
set smarttab
set expandtab        " expand tabs to spaces
set smartindent
set autoindent
set cindent
set comments=sr:/*,mb:*,el:*/

set noerrorbells
set nobackup
set t_Co=256
set number
set incsearch
set showmatch
set hlsearch
set history=1000
set ruler
set showcmd
:map! <F3> <C-R>=strftime('%c')<CR>

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
match OverLength /\%81v.\+/
highlight WhitespaceEOL ctermbg=red guibg=red
match WhitespaceEOL /\s\+$\| \+\ze\t/
set tags=tags;/
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set ttyfast
autocmd BufEnter * silent! lcd %:p:h
"set mouse=a


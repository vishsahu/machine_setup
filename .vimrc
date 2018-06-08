set tags=,tags;
set nocompatible
"colorscheme molokai
colorscheme morning
set laststatus=2
set noswapfile
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
set guifont=Monospace\ 13
set shiftwidth=8
"set wrapmargin=0
set backspace=2
"set textwidth=79
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

syntax on
filetype on

highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%81v.\+/
"highlight WhitespaceEOL ctermbg=red guibg=red
"match WhitespaceEOL /\s\+$\| \+\ze\t/
set tags=tags;/
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set ttyfast
"set mouse=a

"autocmd BufWritePre * %s/\s\+$//e
"autocmd BufEnter * silent! lcd %:p:h
autocmd bufnewfile *.c so ~/c_template.txt
autocmd bufnewfile *.cpp so ~/cpp_template.txt

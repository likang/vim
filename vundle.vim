set nocompatible               " be iMproved
filetype off                   " required!

" Initialize vundle
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'vim-scripts/L9'
Bundle 'vim-scripts/FuzzyFinder'
"Bundle 'vim-scripts/AutoComplPop'
Bundle 'scrooloose/nerdcommenter'
"Bundle 'ervandew/supertab'
Bundle 'Shougo/neocomplcache'
Bundle 'msanders/snipmate.vim'

filetype plugin indent on     " required! 

"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

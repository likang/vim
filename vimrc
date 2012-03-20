set number  " 显示行号
set ruler   " 打开状态栏标尺
syntax on   " 自动语法高亮

set et      " 编辑时将所有Tab替换为空格
set sta     " 设置set et后，按一下Backspace就删除用Tab键自动生成的多个空格
set sw=4    " set shiftwidth,自动缩进时，缩紧尺寸为4个控制
set ts=4    " set tabstop,Tab宽度为4个字符
set smartindent " 创建新行时使用智能自动缩进

set incsearch   " 搜索时即时显示搜索结果
set hlsearch    " 高亮显示搜索结果
set ignorecase  " 搜索时忽略大小写
set smartcase   " 搜索关键字包含大写时仍保持对大小写敏感

set showmatch   " 插入括号时，短暂的跳转到匹配的对应括号
set matchtime=2 " 短暂跳转到匹配括号的时间
set autochdir   " 自动切换当前目录为当前文件所在的目录

set nocompatible    " 关闭vi兼容模式
set backspace=indent,eol,start  " 针对vi,使其正常使用Backspace键和上下左右键

" 列宽超过120时给予错误提示
match ErrorMsg /\%>120v.\+/

set foldmethod=syntax   " 按语法高亮元素折叠
set foldlevel=99        " 默认不折叠

filetype plugin indent on " 开启文件类型自动识别，启用文件类型插件，启用针对文件类型的自动缩进

set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "文件编码猜测

" 设置状态栏显示内容
set statusline=\ %<%F%=[%1*%M%*%n%R%H]\ %y\ %0(%l/%L:%c%)\ 

"set laststatus=2    "显示状态栏，默认为1

" Language - Python
autocmd FileType python map <f8> :!python %<cr>


" 使用vundle管理插件
source ~/.vim/vundle.vim

" Supertab settings
" supertab + eclim == java win
"let g:SuperTabDefaultCompletionTypeDiscovery = [
"\ "&completefunc:<c-x><c-u>",
"\ "&omnifunc:<c-x><c-o>",
"\ ]
let g:SuperTabDefaultCompletionType = "<c-x><c-u>"
let g:SuperTabLongestHighlight = 1
let g:SuperTabRetainCompletionType = 2
let g:SuperTabMappingForward="<Tab>" 
let g:SuperTabMappingBackward="<S-Tab>"

" Eclim settings
" ,i imports whatever is needed for current line
nnoremap <silent> <LocalLeader>i :JavaImport<cr>
" ,d opens javadoc for statement in browser
nnoremap <silent> <LocalLeader>d :JavaDocSearch -x declarations<cr>
" ,<enter> searches context for statement
nnoremap <silent> <LocalLeader><cr> :JavaSearchContext<cr>
" ,jv validates current java file
nnoremap <silent> <LocalLeader>jv :Validate<cr>
" ,jc shows corrections for the current line of java
nnoremap <silent> <LocalLeader>jc :JavaCorrect<cr>
" 'open' on OSX will open the url in the default browser without issue
let g:EclimBrowser='open'


" AutoComplPop 插件设置
"let g:acp_completeoptPreview = 1

" ***** neocomplcache ***

" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplcache.
let g:neocomplcache_enable_at_startup = 1
" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 1
" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 1
" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
    \ }

" Define keyword.
if !exists('g:neocomplcache_keyword_patterns')
  let g:neocomplcache_keyword_patterns = {}
endif
let g:neocomplcache_keyword_patterns['default'] = '\h\w*'

" Plugin key-mappings.
imap <C-k>     <Plug>(neocomplcache_snippets_expand)
smap <C-k>     <Plug>(neocomplcache_snippets_expand)
inoremap <expr><C-g>     neocomplcache#undo_completion()
inoremap <expr><C-l>     neocomplcache#complete_common_string()

" SuperTab like snippets behavior.
"imap <expr><TAB> neocomplcache#sources#snippets_complete#expandable() ? "\<Plug>(neocomplcache_snippets_expand)" : pumvisible() ? "\<C-n>" : "\<TAB>"

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplcache#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplcache#close_popup()
inoremap <expr><C-e>  neocomplcache#cancel_popup()

" AutoComplPop like behavior.
"let g:neocomplcache_enable_auto_select = 1

" Shell like behavior(not recommended).
"set completeopt+=longest
"let g:neocomplcache_enable_auto_select = 1
"let g:neocomplcache_disable_auto_complete = 1
"inoremap <expr><TAB>  pumvisible() ? "\<Down>" : "\<TAB>"
"inoremap <expr><CR>  neocomplcache#smart_close_popup() . "\<CR>"

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
  let g:neocomplcache_omni_patterns = {}
endif
let g:neocomplcache_omni_patterns.ruby = '[^. *\t]\.\w*\|\h\w*::'
"autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplcache_omni_patterns.c = '\%(\.\|->\)\h\w*'
let g:neocomplcache_omni_patterns.cpp = '\h\w*\%(\.\|->\)\h\w*\|\h\w*::'

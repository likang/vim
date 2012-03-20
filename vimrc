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
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabLongestHighlight = 1
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabMappingForward="<Tab>" 
"let g:SuperTabMappingBackward="<S-Tab>"

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
let g:acp_completeoptPreview = 1

"neocomplcache 设置
"source ~/.vim/neocomplcache

set nu
set fileencodings=utf8,cp936,gb18030,big5
" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on
set background=dark

set incsearch
set ignorecase
set wildmenu
" 总是显示状态栏
set laststatus=2
" " 显示光标当前位置
set ruler
" " 高亮显示当前行/列
set cursorline
 " 高亮显示搜索结果
set hlsearch
" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示菜单和工具条
"set guioptions-=m
set guioptions-=T
" 禁止折行
set nowrap
" 自适应不同语言的智能缩进
filetype indent on
" " 将制表符扩展为空格
set expandtab
" " 设置编辑时制表符占用空格数
set tabstop=4
" " 设置格式化时制表符占用空格数
set shiftwidth=4
" " 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
filetype plugin on

"Vim 的内部编码
set encoding=utf-8     
"Vim 在与屏幕/键盘交互时使用的编码(取决于实际的终端的设定)
set termencoding=utf-8
"Vim 当前编辑的文件在存储时的编码
set fileencoding=utf-8
"打开文件时的尝试使用的编码
set fileencodings=ucs-bom,utf-8,gbk,default,latin1


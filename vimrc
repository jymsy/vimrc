set nu
set fileencodings=utf8,cp936,gb18030,big5
" 开启语法高亮功能
syntax enable
" " 允许用指定语法高亮配色方案替换默认方案
syntax on
set background=dark
"colorscheme solarized
colorscheme molokai
let g:molokai_original = 1


" 定义快捷键的前缀，即<Leader>
let mapleader=";"
set incsearch
set ignorecase
set wildmenu
" 总是显示状态栏
set laststatus=2
" " 显示光标当前位置
set ruler
" " 高亮显示当前行/列
set cursorline
set cursorcolumn
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


" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
" " 设置NERDTree子窗口宽度
let NERDTreeWinSize=32
" " 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" " 显示隐藏文件
"let NERDTreeShowHidden=1
" " NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" " 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1

nmap <Leader>bt :ToggleBufExplorer<CR>
let g:bufExplorerDefaultHelp=0       " Do not show default help.
let g:bufExplorerShowRelativePath=1  " Show relative paths.
let g:bufExplorerSortBy='mru'        " Sort by most recently used.

"只显示当前文件的
let Tlist_Show_One_File = 1
""如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Exit_OnlyWindow = 1
"在右侧窗口中显示taglist窗口配置好以后
let Tlist_Use_Right_Window = 1
map <silent> <F9> :TlistToggle<CR>

let g:winManagerWindowLayout = "TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
nmap <C-W><C-F> :FirstExplorerWindow<cr>
nmap <C-W><C-B> :BottomExplorerWindow<cr>
nmap <silent> <leader>wm :WMToggle<cr>

" 随 vim 自启动
let g:indent_guides_enable_on_vim_startup=1
" " 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" " 色块宽度
let g:indent_guides_guide_size=1
" " 快捷键 i 开/关缩进可视化
nmap <silent> <Leader>i <Plug>IndentGuidesToggle

let g:ProjTags = [ "/home/jym/php/dev722/sugarcrm" ] " project tags

" DBGPavim
let g:dbgPavimPort = 9100
let g:dbgPavimBreakAtEntry = 0

" CtrlP
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_root_markers = ['index.php']
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 40
let g:ctrlp_match_window = 'results:200'

set nocompatible                " be iMproved
filetype off                    " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

"my Bundle here:
"
" original repos on github
"Bundle 'kien/ctrlp.vim'
"Bundle 'sukima/xmledit'
"Bundle 'sjl/gundo.vim'
"Bundle 'jiangmiao/auto-pairs'
"Bundle 'klen/python-mode'
"Bundle 'Valloric/ListToggle'
"Bundle 'SirVer/ultisnips'
"Bundle 'Valloric/YouCompleteMe'
"Bundle 'scrooloose/syntastic'
"Bundle 't9md/vim-quickhl'
"Bundle 'powerline/powerline'
"Bundle 'amiorin/vim-project'
Bundle 'nathanaelkane/vim-indent-guides'
Bundle 'scrooloose/nerdcommenter'
Bundle 'bling/vim-airline'
Bundle 'StanAngeloff/php.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'jlanzarotta/bufexplorer'
Bundle 'fishy/projtags-vim'
Bundle 'brookhong/DBGPavim'
Bundle 'kien/ctrlp.vim'
"..................................
" vim-scripts repos
"Bundle 'YankRing.vim'
"Bundle 'vcscommand.vim'
"Bundle 'ShowPairs'
"Bundle 'SudoEdit.vim'
"Bundle 'EasyGrep'
"Bundle 'VOoM'
"Bundle 'VimIM'
Bundle 'winmanager'
Bundle 'taglist.vim'
Bundle 'AutoTag'
"..................................
" non github repos
" Bundle 'git://git.wincent.com/command-t.git'
"......................................
filetype plugin indent on

"au VimEnter * NERDTree /home/jym/php/dev722 "在 vim 启动的时候默认开启 NERDTree（autocmd 可以缩写为 au）

" 设置 gvim 显示字体
"set gfn=WenQuanYi\ Micro\ Hei\ 12
set gfn=Source\ Code\ Pro\ 12

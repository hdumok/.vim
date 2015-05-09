set nocp
"关闭vi的一致性模式避免以前的BUG
set nocompatible              " be iMproved
"显示行号
set number
"右下角显示光标行列信息
set ruler
"在状态栏显示正在输入的命令
set showcmd
"设置匹配模式{}
set showmatch
"设置c/c++自动对齐
set autoindent
"自动切换当前目录为文件所在目录
set autochdir
set nobackup
set cindent
"突出显示当前行列
set cursorline
"set cursorcolumn
"开始语法高亮
syntax enable
syntax on
"制定配色方案为256色
set t_Co=256
"搜索忽略大小写
set ignorecase
"开启vim中的鼠标
set mouse=a
"设置TAB宽度
set tabstop=4
"设置自动对其空格数
set shiftwidth=4
"设置退格键可以一次删除4格空格
set softtabstop=4
set smarttab
"设置编码方式
set encoding=utf-8
set tags += tags
"set tags+=/home/mok/test/tags
colorscheme molokai
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>
"垂直分割窗口
nmap <F5> :AV<cr>  
filetype off                  " required!  
hi Comment ctermfg=green      
set rtp+=~/.vim/bundle/vundle/  
call vundle#rc()  
      
" let Vundle manage Vundle  
" required!   
Bundle 'gmarik/vundle'  
"powerline插件 状态栏增强显示
Bundle 'Lokaltog/vim-powerline'
set laststatus=2
let g:Powline_symbols='fancy'
Bundle 'autocomplpop'
Bundle 'c.vim'
Bundle 'scrooloose/nerdtree'
"autocmd vimenter * NERDTree
Bundle 'taglist.vim'
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1
let Tlist_Auto_Open=1
Bundle 'a.vim'
Bundle 'winmanager'
let g:winManagerWindowLayout = "FileExplorer"
"设置winmanager的宽度，默认为25
let g:winManagerWidth = 30
"定义打开关闭winmanager快捷键为F2
nmap <silent> <F2> :WMToggle<cr>
"在进入vim时自动打开winmanager
let g:AutoOpenWinManager = 1

filetype on 
"针对不同文件采用不同缩进方式
filetype indent on
"允许插件
filetype plugin on
"启动智能补全
filetype plugin indent on     " required!  


"Bundle 'file:///Users/gmarik/path/to/plugin'  

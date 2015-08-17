" Pathogen
filetype off
runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()
call pathogen#helptags()

"" Disable python folding
let g:pymode_folding = 0

syntax enable
syntax on
filetype plugin indent on

set nu
set expandtab "把制表符转换为多个空格
set tabstop=4 "插入模式下输入一个制表符占据的空格数
set softtabstop=4 "如何处理连续多个空格
set selectmode=
set shiftwidth=4 " 设置格式化时制表符占用空格数
set autoindent "自动缩进

set laststatus=1
set ruler
set showcmd "在状态栏显示命令
set showmatch "显示匹配项
set hlsearch "高亮搜索
set report=0 "显示修改次数
set incsearch "搜索自动跳转到
set ignorecase
set smartcase
set cursorline "当前行
set cursorcolumn "当前列
set cc=80 "右边界

set clipboard=unnamed

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1

set pastetoggle=<F2>

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType ruby,javascript,html,erb,markdown set sw=2
autocmd FileType ruby,javascript,html,erb,markdown set ts=2

:set list
:set listchars=tab:>-,trail:-  

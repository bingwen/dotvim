" vim config
syntax enable "语法
syntax on "语法高亮
filetype plugin indent on
filetype plugin on

set nu "行号
set expandtab "把制表符转换为多个空格
set tabstop=4 "插入模式下输入一个制表符占据的空格数
set softtabstop=4 "如何处理连续多个空格
set shiftwidth=4 " 设置格式化时制表符占用空格数
set autoindent "自动缩进
set selectmode=
set laststatus=1
set ruler
set showcmd "在状态栏显示命令
set showmatch "显示匹配项
set hlsearch "高亮搜索
set report=1 "显示修改次数
set incsearch "搜索自动跳转到
set ignorecase "搜索忽略大小写
set smartcase
set cursorline "当前行
"set cursorcolumn "当前列
set cc=80 "右边界
set backspace=2

set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,big5,gb2312,latin1
set clipboard=unnamed
"set mouse=a " 启用鼠标
set pastetoggle=<F2>
set list
set listchars=tab:>-,trail:-  
set updatetime=250

let g:gitgutter_map_keys = 0
let g:gitgutter_realtime = 1
set completeopt-=preview
let g:SimpylFold_docstring_preview = 1
let g:SimpylFold_fold_docstring = 0
let g:SimpylFold_fold_import = 0

call plug#begin('~/.vim/plugged')
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
call plug#end()

autocmd FileType python set sw=4
autocmd FileType python set ts=4
autocmd FileType yaml,ruby,javascript,html,erb,markdown set sw=2
autocmd FileType yaml,ruby,javascript,html,erb,markdown set ts=2

autocmd BufWritePost *.py call Flake8()

autocmd BufWinEnter *.py setlocal foldexpr=SimpylFold(v:lnum) foldmethod=expr
autocmd BufWinLeave *.py setlocal foldexpr< foldmethod<

highlight Folded guibg=NONE ctermbg=NONE

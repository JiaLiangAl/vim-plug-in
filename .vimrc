syntax on
"set background=dark
"colorscheme solarized
"let g:solarized_termtrans=1
"set noswapfile


let $VIMTEMP = $VIMFILES.'/tmp'
if v:version >= 703
set undofile
set undodir=$VIMTEMP
set undolevels=1000 "maximum number of changes that can be undone
set undoreload=10000 "maximum number lines to save for undo on a buffer
endif


map <F5> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
map <F9> :bp <CR>
map <F10> :bn <CR>
map <F8> :YcmRestartServer <CR>

"设置字体
"set guifont=Consolas:h11
set encoding=utf-8
set termencoding=utf-8
set fileencodings=utf-8,gbk,latin1
set fileencoding=utf-8
let g:ycm_global_ycm_extra_conf="~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
let g:NERDSpaceDelims=1
set number
set nowrap
set ignorecase
"---------------------------------设置宽度（tab等）----
"设置tab宽度
set tabstop=4

"设置软tab宽度，软tab，用空格代替tab
set softtabstop=4

"自动缩进的宽度
set shiftwidth=4

"----------------------------------设置对齐和缩进--------
"设置自动对齐，（和上一行）
set autoindent

"智能对齐
set smartindent

"使用c/c++语言的自动缩进方式
set cindent

"设置c/c++语言的具体缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s 

"不要用空格代替制表符
"set expandtab

"在行和段开始处使用制表符
set smarttab

let NERDTreeWinSize=30

set nocompatible              " 去除VI一致性,必须要添加
filetype off                  " 必须要添加

" 设置包括vundle和初始化相关的runtime path`
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" 另一种选择, 指定一个vundle安装插件的路径
"call vundle#begin('~/some/path/here')

" 让vundle管理插件版本,必须
Plugin 'VundleVim/Vundle.vim'

" 以下范例用来支持不同格式的插件安装.
" 请将安装插件的命令放在vundle#begin和vundle#end之间.
" Github上的插件
" 格式为 Plugin '用户名/插件仓库名'
"Plugin 'tpope/vim-fugitive'
" 来自 http://vim-scripts.org/vim/scripts.html 的插件
" Plugin '插件名称' 实际上是 Plugin 'vim-scripts/插件仓库名' 只是此处的用户名可以省略
Plugin 'L9'
" 由Git支持但不再github上的插件仓库 Plugin 'git clone 后面的地址'
Plugin 'git://git.wincent.com/command-t.git'
" 本地的Git仓库(例如自己的插件) Plugin 'file:///+本地插件仓库绝对路径'
"Plugin 'file:///home/gmarik/path/to/plugin'
" 插件在仓库的子目录中.
" 正确指定路径用以设置runtimepath. 以下范例插件在sparkup/vim目录下
"Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" 安装L9，如果已经安装过这个插件，可利用以下格式避免命名冲突
"Plugin 'ascenator/L9', {'name': 'newL9'}

" 你的所有插件需要在下面这行之前

Plugin 'scrooloose/nerdtree'
map <F12> :NERDTreeToggle<CR>
 " 下面是我个人常用的插件配置
Plugin 'Lokaltog/vim-powerline'
Plugin 'tpope/vim-commentary'
Plugin 'majutsushi/tagbar'
map <silent> <F4> :TagbarToggle<CR>
Plugin 'Valloric/YouCompleteMe'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'jiangmiao/auto-pairs'
Plugin 'rdnetto/YCM-Generator'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tpope/vim-fugitive'
Plugin 'kien/ctrlp.vim'
call vundle#end()            " 必须
filetype plugin indent on    " 必须 加载vim自带和插件相应的语法和文件类型相关脚本
" 忽视插件改变缩进,可以使用以下替代:
"filetype plugin on
"
" 常用的命令
" :PluginList       - 列出所有已配置的插件
" :PluginInstall     - 安装插件,追加 `!` 用以更新或使用 :PluginUpdate
" :PluginSearch foo - 搜索 foo ; 追加 `!` 清除本地缓存
" :PluginClean      - 清除未使用插件,需要确认; 追加 `!` 自动批准移除未使用插件
"
" 查阅 :h vundle 获取更多细节和wiki以及FAQ
" 将你自己对非插件片段放在这行之后
"

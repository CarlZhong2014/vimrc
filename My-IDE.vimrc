set nocompatible


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                       Vundle配置                       "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off                  " Just Vundle required
" set the runtime path to include Vundle and initialize
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')
if has('win32')"
    set rtp+=$VIMHOME/vimfiles/bundle/Vundle.vim/
    call vundle#begin('$VIM/vimfiles/bundle/')
else
    "On Linux, OSX, UNIX.
    set rtp+=~/.vim/bundle/Vundle.vim
    call vundle#begin()
endif

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" 折叠
Plugin 'tmhedberg/SimpylFold'
" 缩进(Python)
Plugin 'vim-scripts/indentpython.vim'
""Plugin 'thinca/vim-quickrun'
" 代码补全
" Plugin 'Valloric/YouCompleteMe'
" Python 代码补全
Plugin 'davidhalter/jedi-vim'
" 静态语法检查
Plugin 'scrooloose/syntastic'
" 缩进线插件
Plugin  'Yggdroot/indentLine'
" 目录导航
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'scrooloose/nerdtree'
" 状态栏
Plugin 'Lokaltog/vim-powerline'
" molokai 配色方案
Plugin 'tomasr/molokai'
" 代码视图 ctags+taglist
Plugin 'vim-scripts/ctags.vim'
Plugin 'vim-scripts/taglist.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required




""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                        filetype                        "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype on
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"              编码、配色配置等显示相关配置              "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""
" 启动的时候不显示那个援助乌干达儿童的提示   
""""""""""""""""""""""""""""""""
set shortmess=atI

""""""""""""""""""""""""""""""""
" 编码设置
""""""""""""""""""""""""""""""""
" 设置内部字符编码
set enc=utf-8
" 设置终端显示编码
set tenc=utf-8
" 文件默认编码
set fenc=utf-8
" 文件字符编码检测列表
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"以双字节处理zh、ja、ko自然语言
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif

" 解决Windows GVIM 菜单乱码
if has("win32") 
    source $VIMRUNTIME/delmenu.vim 
    source $VIMRUNTIME/menu.vim 
    language messages zh_CN.utf-8 
endif




""""""""""""""""""""""""""""""""
" 文件格式
""""""""""""""""""""""""""""""""
set fileformat=unix


""""""""""""""""""""""""""""""""
" 行号设置
""""""""""""""""""""""""""""""""
set nu

""""""""""""""""""""""""""""""""
" 使用monokai配色方案
" git : https://github.com/tomasr/molokai
""""""""""""""""""""""""""""""""
let g:rehash256 = 1
colorscheme molokai
set bg=dark


""""""""""""""""""""""""""""""""
" 工具栏和菜单设置
""""""""""""""""""""""""""""""""
if has ("gui_running")
    " 隐藏工具栏
    set guioptions-=T
    " 隐藏菜单
    set guioptions-=m
endif


""""""""""""""""""""""""""""""""
" 启动gvim时，窗口最大化
""""""""""""""""""""""""""""""""
if has("win32")
 au GUIEnter * simalt ~x
endif


""""""""""""""""""""""""""""""""
" 标签页设置
""""""""""""""""""""""""""""""""
" 总是显示标签栏
set showtabline=2

""""""""""""""""""""""""""""""""
" NERDTree 配置
" git : https://github.com/scrooloose/nerdtree
""""""""""""""""""""""""""""""""
"显示增强
let NERDChristmasTree=1
"自动调整焦点
let NERDTreeAutoCenter=1
"鼠标模式:目录单击,文件双击
let NERDTreeMouseMode=2
"禁用“打开文件后自动关闭NERDTree”功能
let NERDTreeQuitOnOpen=0
"显示文件
let NERDTreeShowFiles=1
"显示隐藏文件
let NERDTreeShowHidden=1
"高亮显示当前文件或目录
let NERDTreeHightCursorline=1
"显示行号
let NERDTreeShowLineNumbers=1
"窗口位置
let NERDTreeWinPos='left'
"窗口宽度
let NERDTreeWinSize=31
"不显示'Bookmarks' label 'Press ? for help'
let NERDTreeMinimalUI=1
"快捷键
nnoremap <silent> <F2> :NERDTreeTabsToggle<CR>
"启动时不打开NERDTreeTabs
let g:nerdtree_tabs_open_on_gui_startup=0
"当打开vim且没有文件时自动打开NERDTree
" autocmd vimenter * if !argc() | NERDTree | endif


""""""""""""""""""""""""""""""""
" 语法高亮
""""""""""""""""""""""""""""""""
syntax on

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                    快捷键配置                          "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 配置<leader>键
let mapleader=","


" 配置backspace的工作方式
set backspace=indent,eol,start

" For split window
set splitbelow
set splitright

"split navigations
nnoremap <C-j> <C-w><C-j>
nnoremap <C-k> <C-w><C-k>
nnoremap <C-l> <C-w><C-l>
nnoremap <C-h> <C-w><C-h>

"Quickly quit window when u press `,+w`


""""""""""""""""""""""""""""""""
" 标签页切换快捷键
""""""""""""""""""""""""""""""""
" 切换到上一个标签`,+q`
map <leader>q :tabp<CR>
" 切换到下一个标签`,+e`
map <leader>e :tabn<CR>
" 关闭当前标签页面`,+w`
map <leader>w :tabc<CR>
" 创建新的标签页
map <leader>c :tabnew<CR>
""""""""""""""""""""""""""""""""
" 编译和运行
""""""""""""""""""""""""""""""""
" 运行当前Python脚本。（根据环境将!python更换为Python的执行文件）
autocmd FileType python map <F5> :!python %:p<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                   TAB和自动缩进配置                    "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""
" TAB设置
""""""""""""""""""""""""""""""""
" 一个TAB占据4个空格
set tabstop=4 
" 将TAB自动替换为对应个数的空格
set expandtab 
" 方便在开启了et后使用退格（backspace）键，每次退格将删除4个空格
set softtabstop=4

""""""""""""""""""""""""""""""""
" 自动缩进设置 
""""""""""""""""""""""""""""""""
" 开启自动缩进
set autoindent
" 自动缩进4个空格
set shiftwidth=4


" 每行最多有81个字符
set textwidth=81

""""""""""""""""""""""""""""""""
" vim-powerline
" git : https://github.com/Lokaltog/vim-powerline
""""""""""""""""""""""""""""""""
set laststatus=2   " Always show the statusline

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"               indentLine：语法检查通用配置             "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" git : https://github.com/Yggdroot/indentLine
""""""""""""""""""""""""""""""""
" 启用indentLine
let g:indentLine_enabled = 1
" 设置缩进线的表示字符
let g:indentLine_char = "|"
" <,+l> 打开缩进线功能
map <silent> <leader>l :IndentLinesToggle<CR> 
""""""""""""""""""""""""""""""""
" Fold setting 
""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" SimpylFold 
" git : https://github.com/tmhedberg/SimpylFold
""""""""""""""""""""""""""""""""
"The first line of your docstrings always appear in the fold text
let g:SimpylFold_docstring_preview=1

"默认不折叠代码
set nofoldenable

"将折叠方法设置为indent
set foldmethod=indent

"默认展开所有折叠
"set foldlevel=99

"When press `f` will fold and unfold current code according to foldmethod option.
map f @=((foldclosed(line('.')) < 0 ) ? 'zC' : 'zO')<CR>

"When press `F` will fold and unfold all code according to foldmethod option.
""
map F @=((foldclosed(line('.')) < 0) ? 'zM' : 'zR')<CR>

"折叠栏颜色设置
highlight Folded guibg=white guifg=blue
highlight FoldColumn guibg=darkgrey guifg=white


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                    YCM自动补全通用配置                 "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" git : https://github.com/Valloric/YouCompleteMe
""""""""""""""""""""""""""""""""
" 配置默认的ycm_extra_conf.py

" if has('win32')
    " WINDOWS
"     let g:ycm_global_ycm_extra_conf = '$VIM\vimfiles\bundle\YouCompleteMe\third_party\ycmd\cpp\ycm\.ycm_extra_conf.py'
" else
    " *nix & OS X
"     let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
" endif

"按`,+d` 会跳转到声明
" nnoremap <leader>d :YcmCompleter GoToDeclaration<CR>

"按`,+g` 会跳转到定义
" nnoremap <leader>g :YcmCompleter GoToDefinition<CR>

"按`,+r` 会跳转到参考文档
" nnoremap <leader>r :YcmCompleter GoToReferences<CR>

"打开vim时不再询问是否加载ycm_extra_conf.py配置
" let g:ycm_confirm_extra_conf=0   

"使用ctags生成的tags文件
" let g:ycm_collect_identifiers_from_tag_files = 1 

" YCM will auto-close the 'preview' window after
" the user accepts the offered completion string. 
" let g:ycm_autoclose_preview_window_after_completion=1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"              Syntastic：语法检查通用配置               "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" git : https://github.com/scrooloose/syntastic
""""""""""""""""""""""""""""""""
"Global Option
" 打开文件时，不检查语法。
let g:syntastic_check_on_open = 0 
" 保存退出时，检查语法
let g:syntastic_check_on_wq = 1
" 设置为手动模式
" let g:syntastic_mode_map={'mode': 'passive'}

" For Location list
" 总是显示Location list
let g:syntastic_always_populate_loc_list = 1
" 自动开关loc-list的模式(0\1\2\3\)
" 0 : When set to 0 the error window will be neither opened nor closed automatically.
" 1 : When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
" 2 :When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically. 
" 3 :When set to 3 the error window will be automatically opened when errors are detected, but not closed automatically. 
let g:syntastic_auto_loc_list = 1
" "设置loc_list高亮值，默认为10.
let g:syntastic_loc_list_height = 5
" loc_list 快捷键设置
" 使用<F3>打开/关闭Error Location list
nnoremap <silent> <F3> :w<CR> :SyntasticCheck<CR>
imap <silent> <F3> <ESC>:w<CR> :SyntasticCheck<CR>
" 跳到下一条错误
map <leader>n :lnext<CR>
imap <leader>n <ESC>:lnext<CR>
" 跳到上一条错误
map <leader>m :lprevious<CR>
imap <leader>m <ESC>:lprevious<CR>
" 
" 
" "For Command Windows
" 
" "For Signs
" "Use this option to tell syntastic whether to use the `:sign` interface to mark syntax errors.
let g:syntastic_enable_signs = 1
" "使用EE标记错误行
let g:syntastic_error_symbol = 'EE'
let g:syntastic_style_error_symbol = 'E>'
" "使用ww标记warning行
let g:syntastic_warning_symbol = 'WW'
let g:syntastic_style_warning_symbol = 'W>'
" 
" 
" "For Statusline Flag
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" 
" "For Error Balloons
" "启用Error Balloons
let g:syntastic_enable_balloons = 1
" 
" "For Highlighting errors
" "高亮错误
let g:syntastic_enable_highlighting = 1
highlight SyntasticErrorSign guifg=white guibg=red
" 
" " 累计Error和Warning
let g:syntastic_aggregate_errors = 1

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"               jedi-vim：语法检查通用配置               "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""""""""""""""""""""""""""""
" git : https://github.com/davidhalter/jedi-vim
""""""""""""""""""""""""""""""""
" 打开游标所在的函数或类对应的文档。" <, + r> "
let g:jedi#documentation_command = "<leader>r"
" 始终保持文档窗口打开
let g:jedi#auto_close_doc = 0
" 文档显示buffer窗口的高度。
let g:jedi#max_doc_height = "10"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                                        "
"                       PYTHON IDE                       "
"                                                        "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""
" Syntastic PYTHON语法检查配置
""""""""""""""""""""""""""""""""
"使用flake8进行语法和风格检查。需要通过pip install flake8 安装。
au BufRead *.py :let g:syntastic_python_checkers=["flake8"] 




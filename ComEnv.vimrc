"""""""""""""""""""""""""""""
"编码相关
"""""""""""""""""""""""""""""
" 编码设置
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
" 背景相关
""""""""""""""""""""""""""""""""
" 启动的时候不显示那个援助乌干达儿童的提示   
set shortmess=atI

" 显示行号 
set nu   

"设置背景为dark
set bg=dark
" 设置配色方案
colorscheme elflord
" 语法高亮显示
syntax on

""""""""""""""""""""""""""""""""
"通用按键配置
""""""""""""""""""""""""""""""""
"配置backspace的工作方式
set backspace=indent,eol,start


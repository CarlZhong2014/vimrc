"YCM configure file
"配置默认的ycm_extra_conf.py
"WINDOWS
let g:ycm_global_ycm_extra_conf = 'C:\Program Files (x86)\Vim\vimfiles\bundle\YouCompleteMe\third_party\ycmd\cpp\ycm\.ycm_extra_conf.py'
"*nix & OS X
"let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

"指定python执行文件.
"WINDOWS
let g:ycm_python_binary_path = 'C:\Python27\python.exe'
"*nix & OS X
"let g:ycm_python_binary_path = '/usr/bin/python2.7'

"按gb 会跳转到定义
nnoremap <silent> gb :YcmCompleter GoToDefinitionElseDeclaration<CR>   
"打开vim时不再询问是否加载ycm_extra_conf.py配置
let g:ycm_confirm_extra_conf=0   
"使用ctags生成的tags文件
let g:ycm_collect_identifiers_from_tag_files = 1 
"通过 :YcmDiags 命令可以查看当前的文件有哪些编译错误. 
map <F4> : YcmDiags<CR>

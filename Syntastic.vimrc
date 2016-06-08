"For syntastic
"DOCSURL : https://github.com/scrooloose/syntastic/blob/master/doc/syntastic.txt

"Global Option
"打开文件时，检查文件语法。
let g:syntastic_check_on_open = 1
"保存退出时，不检查文件语法
let g:syntastic_check_on_wq = 0

"For Location list
"禁止总是显示Location list
let g:syntastic_always_populate_loc_list = 0
"自动开关loc-list的模式(0\1\2\3\)
"0 : When set to 0 the error window will be neither opened nor closed automatically.
"1 : When set to 1 the error window will be automatically opened when errors are detected, and closed when none are detected.
"2 :When set to 2 the error window will be automatically closed when no errors are detected, but not opened automatically. 
"3 :When set to 3 the error window will be automatically opened when errors are detected, but not closed automatically. 
let g:syntastic_auto_loc_list = 1
"设置loc_list高亮值，默认为10.
let g:syntastic_loc_list_height = 5


"For Command Windows

"For Signs
"Use this option to tell syntastic whether to use the `:sign` interface to mark syntax errors.
let g:syntastic_enable_signs = 1
"使用>>标记错误行
let g:syntastic_error_symbol = ">>"
"使用>标记warning行
let g:syntastic_warning_symbol = ">"

"For Statusline Flag

"For Error Balloons
"启用Error Balloons
let g:syntastic_enable_balloons = 1

"For Highlighting errors
"高亮错误
let g:syntastic_enable_highlighting = 1
highlight SyntasticErrorSign guifg=white guibg=red

"For Checkers
"pyflakes 需要安装kevinw/pyflakes-vim
let g:syntastic_python_checkers=['pyflakes'] 
let g:pyflakes_use_quickfix = 0
let g:syntastic_javascript_checkers = ['jsl', 'jshint']
let g:syntastic_html_checkers=['tidy', 'jshint']

"KB map
nnoremap <silent> <F3> :Errors <CR>

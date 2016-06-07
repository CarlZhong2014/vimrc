" You need add following code in .vimrc(on Unix/Linux) or _vimrc(On MS)
" au BufNewFile,BufRead *.py source PathOfPyEnv.vimrc

" Indentation match PEP8
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" Set the fileformat is unix, nor dos.
set fileformat=unix

" Enable folding
set foldmethod=indent
set foldlevel=99
" Showing docstring when folding code. This way needs SimpylFold Plugin.
let g:SimpylFold_docstring_preview=1



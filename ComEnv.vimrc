"""""""""""""""""""""""""""""
"�������
"""""""""""""""""""""""""""""
" ��������
" �����ڲ��ַ�����
set enc=utf-8
" �����ն���ʾ����
set tenc=utf-8
" �ļ�Ĭ�ϱ���
set fenc=utf-8
" �ļ��ַ��������б�
set fencs=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

"��˫�ֽڴ���zh��ja��ko��Ȼ����
if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
    set ambiwidth=double
endif
" ���Windows GVIM �˵�����
if has("win32") 
    source $VIMRUNTIME/delmenu.vim 
    source $VIMRUNTIME/menu.vim 
    language messages zh_CN.utf-8 

endif

""""""""""""""""""""""""""""""""
" �ļ���ʽ
""""""""""""""""""""""""""""""""
set fileformat=unix
""""""""""""""""""""""""""""""""
" �������
""""""""""""""""""""""""""""""""
" ������ʱ����ʾ�Ǹ�Ԯ���ڸɴ��ͯ����ʾ   
set shortmess=atI

" ��ʾ�к� 
set nu   

"���ñ���Ϊdark
set bg=dark
" ������ɫ����
colorscheme elflord
" �﷨������ʾ
syntax on

""""""""""""""""""""""""""""""""
"ͨ�ð�������
""""""""""""""""""""""""""""""""
"����backspace�Ĺ�����ʽ
set backspace=indent,eol,start


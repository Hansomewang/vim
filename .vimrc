"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" HansomeWang vim
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 禁止生成临时文件
set nobackup
set noswapfile
" 文件在vim之外修改过，自动重新读入
set autoread
" 设置自动保存
set autowrite
" 在处理未保存或只读文件的时候，弹出确认
set confirm

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set langmenu=zh_CN.UTF-8
" 帮助系统设置为中文
set helplang=cn
" 设置编码格式
set termencoding=utf-8
set encoding=utf8
" 使用utf-8或gbk打开文件
set fileencodings=utf8,ucs-bom,gbk,cp936,gb2312,gb18030


""""""""""""""""""""""""""""""
" winmanager.vim
""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <F3> :WMToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"cscope
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
cs add ./cscope.out              " 设定 cscope 文件名
if has("cscope")
        set csprg=/usr/bin/cscope
        set csto=0
        set cst
        set nocsverb
        " add any database in current directory
        if filereadable("cscope.out")
            cs add cscope.out
        " else add database pointed to by environment
        elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
        endif
        set csverb
endif
" s: Finds all uses of this symbol
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
" g: Finds definition of this symbol
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
" d: Finds calls by this function
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>
" c: Finds calls to this function
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
" t: Find assignments to
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
" e: Find this egrep pattern
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
" f: Opens the filename under the cursor
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
" i: Find files #including this file
nmap <C-\>i :cs find i <C-R>=expand("<cfile>")<CR><CR>


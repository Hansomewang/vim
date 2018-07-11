"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vimrc config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype plugin indent on        " 开启插件
syntax on                        " 自动语法高亮
set t_Co=256
colorscheme zz256

set backspace=indent,eol,start   " 不设定在插入状态无法用退格键和 Delete 键删除回车符
set backupcopy=yes               " 设置备份时的行为为覆盖
set cmdheight=1                  " 设定命令行的行数为 1
set expandtab                    " 用空格替代tab
set foldcolumn=0                 " 设置折叠区域的宽度
set foldenable                   " 开启折叠
set foldmethod=syntax            " 设置语法折叠
set foldlevel=3                  " 设置折叠层数为
set guioptions-=T                " 隐藏工具栏
set guioptions-=m                " 隐藏菜单栏
set helplang=cn                  " 设置帮助语言
set hidden                       " 允许在有未保存的修改时切换缓冲区，此时的修改由 vim 负责保存
set hlsearch                     " 搜索时高亮显示被找到的文本
set ignorecase smartcase         " 搜索时忽略大小写，但在有一个或以上大写字母时仍保持对大小写敏感
set incsearch                    " 输入搜索内容时就显示搜索结果
set laststatus=2                 " 显示状态栏 (默认值为 1, 无法显示状态栏)
set magic                        " 设置魔术
set nocompatible                 " 关闭 vi 兼容模式
set noerrorbells                 " 关闭错误信息响铃
set nobackup                     " 关闭备份
set novisualbell                 " 关闭使用可视响铃代替呼叫
set nowb                                 " 不产生swp文件
set nowrapscan                   " 禁止在搜索到文件两端时重新搜索
set number                       " 显示行号
set ruler                        " 打开状态栏标尺
set shiftwidth=4                 " 设定 << 和 >> 命令移动时的宽度为 4
set smartindent                  " 开启新行时使用智能自动缩进
set softtabstop=4                " 使得按退格键时可以一次删掉 4 个空格
set t_vb=                        " 置空错误铃声的终端代码
set tabstop=4                    " 设定 tab 长度为 4
set tags=./tags                  " 设定 ctag　文件名
cs add ./cscope.out              " 设定 cscope 文件名

" 为C程序提供自动缩进
set smartindent

"自动补全
:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
function! ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endfunction
filetype plugin indent on 
"打开文件类型检测, 加了这句才可以用智能补全
set completeopt=longest,menu

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" quickfix
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <F6> :cn<cr>
nmap <F7> :cp<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" winmanager.vim
" """"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout = "BufExplorer|TagList"
let g:winManagerWidth = 30
let g:defaultExplorer = 0
map <F3> :WMToggle<CR>
imap <F3> <ESC>:NERDTreeToggle<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 缓存设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 禁止生成临时文件
set nobackup
set noswapfile
" 文件在vim之外修改过，自动重新读入
set autoread
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

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTags的设定  
 """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Sort_Type = "name"    " 按照名称排序  
let Tlist_Use_Right_Window = 1  " 在右侧显示窗口  
let Tlist_Compart_Format = 1    " 压缩方式  
let Tlist_Exist_OnlyWindow = 1  " 如果只有一个buffer，kill窗口也kill掉buffer  
let Tlist_File_Fold_Auto_Close = 0  " 不要关闭其他文件的tags  
let Tlist_Enable_Fold_Column = 0    " 不要显示折叠树  
autocmd FileType java set tags+=D:\tools\java\tags  
"autocmd FileType h,cpp,cc,c set tags+=D:\tools\cpp\tags  
"let Tlist_Show_One_File=1            "不同时显示多个文件的tag，只显示当前文件的
"设置tags  
set tags=tags  
"set autochdir"


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


"autocomplpop插件,一个字母即可补全  
let g:acp_behaviorKeywordLength = 1  
let g:AutoComplPop_MappingDriven = 1  
""color  
hi Pmenu guibg=#444444  
hi PmenuSel ctermfg=7 ctermbg=4 guibg=#555555 guifg=#ffffff  ""

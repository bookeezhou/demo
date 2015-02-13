set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'altercation/vim-colors-solarized'
Bundle 'Lokaltog/vim-powerline'



" 定义快捷键前缀
let mapleader=";"
" 开启文件类型侦测
filetype on
" " 根据侦测到的不同类型加载对应的插件
filetype plugin on

" 定义快捷键到行首和行尾
nmap 1b 0
nmap 1e $

" 设置快捷键将选中文本块复制到系统剪贴板
vnoremap <Leader>y "+y
" 设置快捷键将系统剪贴板内容粘贴至 vim
nmap <Leader>p "+p
" 定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
" 定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
" 定义快捷键保存所有窗口内容并退出 vim
nmap <Leader>WQ :wa<CR>:q<CR>
" 不做任何保存，直接退出 vim
nmap <Leader>Q :qa!<CR>
" 依次遍历子窗口
nnoremap nw <C-W><C-W>
" 跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
" 跳转至方的窗口
nnoremap <Leader>hw <C-W>h
" 跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
" 跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
" 定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %

" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
"set nocompatible
" vim 自身命令行模式智能补全
set wildmenu


" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示当前行/列
set cursorline
set cursorcolumn
" 高亮显示搜索结果
set hlsearch
 
syntax enable
" set background=light
set background=dark
colorscheme solarized

set gcr=a:block-blinkon0
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set guioptions-=T
set guioptions-=m

" 需要安装wmctrl软件
fun! ToggleFullscreen()
	call system("wmctrl -ir " . v:windowid . " -b toggle,fullscreen")
endf
map <silent> <F11> :call ToggleFullscreen()<CR>
"autocmd VimEnter * call ToggleFullscreen()

if (has("gui_running"))
	" set guifont=Microsoft\ YaHei\ Mono\ Regular\ 11.5
	"set gfw=Microsoft_YaHei_Mono_Regular:Regular:h11.5:cGB2312
	set gfw=Microsoft_YaHei_Mono_Regular:Regular:h12
endif

set nowrap
let g:Powerline_colorscheme='solarized256'

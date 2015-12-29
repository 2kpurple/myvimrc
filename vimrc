let $VIMRUNTIME="/usr/share/vim/vim73"
set runtimepath=$VIMRUNTIME
set helpfile=$VIMRUNTIME/doc/help.txt

set nu
syntax on
set tabstop=4
set hlsearch
set nocompatible
set ignorecase
set laststatus=2
set autoread
set background=dark
set backspace=indent,eol,start
" colorscheme solarized
" colorscheme molokai

autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" gui config
if has("gui_running") 
    set guioptions-=L " 隐藏左侧滚动条 
    set guioptions-=r " 隐藏右侧滚动条 
    set guioptions-=b " 隐藏底部滚动条 
    " set showtabline=0 " 隐藏Tab栏 
	" set guifont=Inconsolata:h13
	set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h12
	set nowrap
	colorscheme seoul256
	set transparency=3
endif

" let Vundle manage Vundle
" required!
" github
Bundle 'gmarik/vundle'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Raimondi/delimitMate'
Bundle "tpope/vim-commentary"
Bundle 'Valloric/YouCompleteMe'
Bundle 'scrooloose/nerdtree'
Bundle "airblade/vim-gitgutter"
Bundle 'junegunn/seoul256.vim'
Bundle 'junegunn/goyo.vim'
Bundle 'junegunn/limelight.vim'
" Bundle 'Valloric/YouCompleteMe'
" Bundle 'wincent/command-t'

Bundle 'taglist.vim'
" Bundle 'winmanager'
filetype plugin indent on     " required!

" 一些常用map映射
nmap t, :tabp<CR>
nmap t. :tabn<CR>
nmap <D-s> :w<CR>

" TagList 配置
let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 0         "在右侧窗口中显示taglist窗口
let Tlist_WinWidth = 40
" taglist映射
nmap ,tl :TlistToggle<CR>
nmap ,ta :ta 

"设置中文帮助文档
if version >= 603
		set helplang=cn
		set encoding=utf-8
		set fileencoding=utf-8
endif

" for eclim
" let g:EclimJavaCompleteCaseSensitive = 1

" for ycm
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
let g:ycm_filetype_whitelist = { 'cpp' : 1,
						\'h' : 1,
						\'py' : 1
						\}
nnoremap <leader>gl :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>

" for cscope
nmap <C-s>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-s>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-s>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR>
nmap <C-s>d :cs find d <C-R>=expand("<cword>")<CR><CR>

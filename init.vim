call plug#begin('~/.vim/plugged')
	Plug 'tmhedberg/SimpylFold'
        Plug 'preservim/nerdtree'
	Plug 'vim-scripts/indentpython.vim'
	Plug 'https://github.com/Valloric/YouCompleteMe'
	Plug 'vim-syntastic/syntastic'
	Plug 'jnurmine/Zenburn'
	Plug 'altercation/vim-colors-solarized'
call plug#end()
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif
set foldmethod=indent
set number
set foldlevel=99
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/
set encoding=utf-8
let python_highlight_all=1
syntax on

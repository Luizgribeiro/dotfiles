

set nocompatible              " be iMproved, required
filetype off                  " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"**                PLUGINS & CONFIGS               *""
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'

    Plugin 'Valloric/YouCompleteMe'

    Plugin 'scrooloose/nerdtree'

call vundle#end()            " required

"YouCompleteMe config
let g:ycm_global_ycm_extra_conf = '.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'

" filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on


""""""""""""""""""""""""""""""""""""""""""""""""""""""
"**                    INTERFACE                   **"
""""""""""""""""""""""""""""""""""""""""""""""""""""""
"numeros relativos no canto
    set relativenumber

"hilight na lina do cursor
    set cursorline

"definindo hilight do cursor
    hi CursorLine term=bold cterm=bold guibg=Grey40

"define coluna da numeracao
    set numberwidth=2

"Quebra a linha na palavra e nao no caractere
    set linebreak 

"Indentação
    set autoindent

syntax enable

""""""""""""""""""""""""""""""""""""""""""""""""""""""
"**                   MAPEAMENTOS                  **"
""""""""""""""""""""""""""""""""""""""""""""""""""""""

"mapeando tecla leader
    let mapleader = ";"

"tornando barra de espaço mais util--> folding
    nnoremap <space> za


"remap de atalhos CTRL:

	"remap function save
	nnoremap <c-s> :w<CR> 
	"insert mode nao recursivo
	inoremap <c-s> <Esc>:w<CR>l
	"visual mode nao recursivo
	vnoremap <c-s> <Esc>:w<CR>

	"remap save-quit
	"normal mode 
	nnoremap <c-q> :wq<CR>
	"insert mode
	inoremap <c-q> <Esc>:wq<CR>l
	"visual mode
	vnoremap <c-q> <Esc>:wq<CR>

	"remap unsave-quit
	"normal mode 
	nnoremap <c-u> :q!<CR>
	"insert mode
	inoremap <c-u> <Esc>:q!<CR>l
	"visual mode
	vnoremap <c-u> <Esc>:q!<CR>


	"remap ctrl z--> undo
	"normal mode
	nnoremap <c-z> :u<CR>
	"insert mode
	inoremap <c-z> <Esc>:u<CR>l
	"visual mode
	vnoremap <c-z> <Esc>:u<CR>

	"remap ctrl h/j/k/l --> change vim window
	nnoremap <c-h> <c-w>h 
	nnoremap <c-j> <c-w>j 
	nnoremap <c-k> <c-w>k 
	nnoremap <c-l> <c-w>l 

"remap de teclas basicas	
    "arrow remap

	nnoremap <Down> :echo "No down for you!"<CR>
	vnoremap <Down> :<C-u>echo "No down for you!"<CR>
	inoremap <Down> <nop>
    
	nnoremap <Up> :echo "No up for you!"<CR>
	vnoremap <Up> :<C-u>echo "No up for you!"<CR>
	inoremap <Up> <nop>
    
	nnoremap <Left> :echo "No left for you!"<CR>
	vnoremap <Left> :<C-u>echo "No left for you!"<CR>
	inoremap <Left> <nop>

	nnoremap <Right> :echo "No right for you!"<CR>
	vnoremap <Right> :<C-u>echo "No right for you!"<CR>
	inoremap <Right> <nop>
        
    "esc remap
	inoremap jj <esc>
    
"edicao do vimrc
	"abrir vimrc
	nnoremap <leader>ev :vsplit $MYVIMRC<cr>
	"save vimrc
	nnoremap <leader>sv :source $MYVIMRC<cr>

"html abbreviations

abbrev hd1 <h1></h1><Esc>5ha
iabbrev hd2 <h2></h2><Esc>5ha
iabbrev hd3 <h3></h3><Esc>5ha
iabbrev bli <br/>
iabbrev PP <p></p><Esc>4ha 
iabbrev blt <ul></ul><Esc>5ha
iabbrev bpt <li></li><Esc>5ha
iabbrev hlin <hr />
iabbrev nlis <ol></ol><Esc>5ha

"markdown abbreviations

iabbrev esmu \*
iabbrev esun \_




let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1























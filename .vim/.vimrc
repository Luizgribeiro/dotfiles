"mapeando tecla leader
let mapleader = ";"

"tornando barra de espaço mais util--> folding
nnoremap <space> za


"""""""""""""""""""""""""INTERFACE"""""""""""""""""""
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


set autoindent

syntax enable

"remap de atalhos CTRL:

	"remap function save
    "not recursive 
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


"remap de teclas basicas	
    "arrow remap
	nnoremap <Down> :echo "No down for you!"<CR>
	vnoremap <Down> :<C-u>echo "No down for you!"<CR>
    inoremap <Down> :<C-o> echo "No down for you!"<CR>
    
	nnoremap <Up> :echo "No up for you!" <CR>
	vnoremap <Up> :<C-u>echo "No up for you!" <CR>
	inoremap <Up> :<C-o>echo "No up for you!" <CR>
    
	nnoremap <Left> :echo "No left for you!"<CR>
	vnoremap <Left> :<C-o>echo "No left for you!"<CR>
	inoremap <Left> :<C-o>echo "No left for you!"<CR>

	nnoremap <Right> :echo "No right for you!"<CR>
	vnoremap <Right> :<C-u>echo "No right for you!"<CR>
	inoremap <Right> :<C-o>echo "No right for you!"<CR>


    "esc remap
	inoremap <esc> <nop>
	inoremap jj <esc>
    
"edicao do vimrc
	"abrir vimrc
	nnoremap <leader>ev :vsplit $MYVIMRC<cr>
	"save vimrc
	nnoremap <leader>sv :source $MYVIMRC<cr>

"Indent
    set tabstop=4
    set shiftwidth=4
    set expandtab

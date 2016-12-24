set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set number
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'StanAngeloff/php.vim'

Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
Bundle 'm2mdas/phpcomplete-extended'


filetype plugin on
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

autocmd vimenter * NERDTree
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

let php_sql_query=1                                                                                        
let php_htmlInStrings=1

function! PhpSyntaxOverride()
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

nmap <C-j>v :NERDTree<cr>
vmap <C-j>v <esc>:NERDTree<cr>i
imap <C-j>v <esc>:NERDTree<cr>i

nmap <C-j>x :NERDTreeClose<cr>
vmap <C-j>x <esc>:NERDTreeClose<cr>i
imap <C-j>x <esc>:NERDTreeClose<cr>i

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

map  <C-n> :tabnew<CR>
colorscheme wombat256 

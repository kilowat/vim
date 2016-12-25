set nocompatible              " be iMproved, required
filetype on                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set number
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:airline_theme ='dark'
let g:phpcomplete_index_composer_command = "composer"
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'felixhummel/setcolors.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'tpope/vim-surround'
Plugin 'ervandew/supertab'
Plugin 'StanAngeloff/php.vim'
Plugin 'majutsushi/tagbar'
Plugin 'vim-airline/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'


filetype plugin on
call vundle#end()            " required
filetype plugin indent on    " required


autocmd vimenter * NERDTree


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

colorscheme wombat256

nmap <C-j>v :NERDTree<cr>
vmap <C-j>v <esc>:NERDTree<cr>i
imap <C-j>v <esc>:NERDTree<cr>i

nmap <C-j>x :NERDTreeClose<cr>
vmap <C-j>x <esc>:NERDTreeClose<cr>i
imap <C-j>x <esc>:NERDTreeClose<cr>i

map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>

map  <C-n> :tabnew<CR>


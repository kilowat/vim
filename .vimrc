set nocompatible              " be iMproved, required
filetype on                  " required

set rtp+=~/.vim/bundle/Vundle.vim
set nu
set nuw=4
set omnifunc=syntaxcomplete#Complete
set tabstop=4
set expandtab
set shiftwidth=4
set splitbelow
set splitright
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
let g:airline_theme ='dark'
let g:XkbSwitchEnabled       = 1
let g:XkbSwitchLib = '/usr/local/lib/libxkbswitch.so' "lib64 if 64 bit system
let g:XkbSwitchIMappings     = ['ru']
let g:XkbSwitchSkipIMappings = {'*' : ['[', ']', '{', '}', "'"]}
let php_sql_query=1                                                                                        
let php_htmlInStrings=1
let g:user_emmet_mode='a'
let g:user_emmet_leader_key='<C-Y>' 
let g:indentLine_enabled    = 0
let g:indentLine_char       = '¦'
let g:indentLine_color_term = 239
let g:indentLine_color_gui  = '#A4E57E'

let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
let g:tagcommands = {
\    "php" : {"tagfile":".php.tags","args":"-R"},
\    "javascript" : {"tagfile":".js.tags","args":"-R"} 
\}
:set cursorline
:hi cursorline cterm=none
:hi cursorlinenr ctermfg=yellow

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
Plugin 'lyokha/vim-xkbswitch'
Plugin 'mattn/emmet-vim'
Plugin 'gregsexton/MatchTag'
Plugin 'Yggdroot/indentLine'
Plugin 'othree/html5.vim'
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'joonty/vim-taggatron'

filetype plugin on
call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * NERDTree
autocmd InsertEnter * set nornu
autocmd InsertLeave * set rnu

autocmd FileType scss set iskeyword+=-

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

nmap ^[i :IndentLinesToggle<CR>

inoremap  kj           <Esc>
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
map <C-n> :tabnew<CR>
map  <C-n> :tabnew<CR>

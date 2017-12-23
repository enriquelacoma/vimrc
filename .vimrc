set nocompatible              " be iMproved, required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'flazz/vim-colorschemes'
Plugin 'bling/vim-airline'
Plugin 'Raimondi/delimitMate'
Plugin 'scrooloose/syntastic'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'FuzzyFinder'
Plugin 'L9'
Plugin 'sickill/vim-monokai'
Plugin 'tomasr/molokai'
Plugin 'fatih/vim-go'


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

set number
set expandtab
set shiftwidth=2
set tabstop=2
set cursorline
set autoread

syntax enable

set background=light
colorscheme Monokai
"colorscheme zenburn"

" Syntastic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'tidy5'

let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd']
"let g:syntastic_php_phpcs_args = '--standard=Drupal --report=csv --extensions=php,module,inc,install,test,profile,theme'"
let g:syntastic_php_phpcs_args = '--standard=DrupalPractice --report=csv --extensions=php,module,inc,install,test,profile,theme'
"let g:syntastic_javascript_checkers = ['phpcs']"
"let g:syntastic_javascript_phpcs_args = '--standard=Drupal --report=csv --extensions=js'"

let s:defaultCheckers = {
        \ 'javascript': ['phpcs'],
      \ }



let g:airline#extensions#tabline#enabled = 1
let g:multi_cursor_use_default_mapping=0
let g:multi_cursor_next_key='<C-n>'
"let g:multi_cursor_prev_key='<C-p>'"
"let g:multi_cursor_skip_key='<C-x>'"
"let g:multi_cursor_quit_key='<Esc>'"


set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'cdmedia/itg_flat_vim'
Plugin 'bling/vim-bufferline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Colors
if $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal"
    set t_Co=256
endif
syntax on
"colorscheme itg_flat
set wildmenu            " graphical autocomplete

let g:airline_theme='zenburn'
set number              " add line numbers
set ruler
set cursorline          " add highlighter of what line on
set visualbell

set showcmd             " show partial command in status line
set showmatch           " show matching brackets
set ignorecase          " do case insensitive matching 

" make TAB = 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab           " convert tab to spaces
set backspace=indent,eol,start
set autoindent
set laststatus=2

set incsearch           " search as characters are entered
set hlsearch            " highlight matches

map <C-w>< <C-w>5<
map <C-w>> <C-w>5>

" Easymotion settings
"   by default <Leader> is \
"   by default <plug>EasyMotion is <Leader><Leader>
map <Leader> <Plug>(easymotion-prefix)
map f <Plug>(easymotion-prefix)

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatusLineFlag()}
set statusline+=%*

"let g:syntastic_python_checkers=['pyflakes', 'pep8', 'pylint', 'python']
let g:syntastic_python_checkers=['pep8', 'pylint', 'python']
"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_check_on_open = 0

" Automatically strip trailing whitespace
autocmd BufWritePre *.py %s/\s\+$//e

" Easy buffer switching
:nnoremap ; :buffers<CR>:buffer<Space>
:nnoremap <TAB> :b<Space>

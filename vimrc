set nocompatible          "use Vim settings, rather than Vi
set encoding=utf-8        "Set default encoding

" Pathogen Plugin framework
runtime bundle/pathogen/autoload/pathogen.vim
execute pathogen#infect()
execute pathogen#infect('languages/{}')

filetype plugin indent on      "load plugins and indent files

syntax on                      "Syntax highlighting

set showcmd                    "show incomplete cmds down the bottom
set showmode                   "show current mode down the bottom
set laststatus=2
set modeline
set ruler
set title

set incsearch                  "find the next match as we type the search
set hlsearch                   "highlight searches by default

set ignorecase                 "set search to be case insensitive
set smartcase                  "unless you typed uppercase letters in your query

set number                     "add line numbers
set relativenumber             "add relative numbers
set showbreak=...
set wrap linebreak nolist
set cursorline                 "highlight line
set backspace=indent,eol,start
set whichwrap=h,l,b,<,>,~,[,]

"indent settings
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab
set shiftround
set autoindent

set scrolloff=3
set sidescrolloff=5
set sidescroll=1

set iskeyword-=_                  "Underscores denote words

if exists("+colorcolumn")
    set colorcolumn=81            "highlight columns 81 onwards
endif

" Themes
set t_Co=256
set background=dark
colorscheme spacegray

" Set relevant filetypes
au BufRead,BufNewFile *.scss set filetype=sass
au BufRead,BufNewFile *.md set filetype=markdown

" GUI settings
if has('gui_running')
  set guifont=Liberation\ Mono\ for\ Powerline:h15
  let g:airline_powerline_fonts = 1
endif


" Airline
" let g:bufferline_echo = 0
let g:airline_theme="bubblegum"
let g:airline#extensions#tabline#enabled = 1 "enable the tabline
let g:airline#extensions#tabline#fnamemod = ':t' " show just the filename of buffers in the tab line
let g:airline_detect_modified=1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" Set up CTRL P {{{
" " First set up patterns to ignore
set wildignore+=*/tmp/*,*.so,*/node_modules,*.swp,*.zip,*.jpg,*.png,*.gif "patterns to ignore
let g:ctrlp_map = '<c-p>'                           "Open with CTRL+P
let g:ctrlp_cmd = 'CtrlPMixed'
let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$' "default ignores
let g:ctrlp_by_filename = '1'                       "only look for filenames

" NERDTree
map <C-n> :NERDTreeToggle<CR>


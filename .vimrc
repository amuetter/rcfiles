""                             _   _            _             _
""                            | | | |          ( )           (_)
""   __ _ _ __ ___  _   _  ___| |_| |_ ___ _ __|/ ___  __   ___ _ __ ___  _ __ ___
""  / _` | '_ ` _ \| | | |/ _ \ __| __/ _ \ '__| / __| \ \ / / | '_ ` _ \| '__/ __|
"" | (_| | | | | | | |_| |  __/ |_| ||  __/ |    \__ \  \ V /| | | | | | | | | (__
""  \__,_|_| |_| |_|\__,_|\___|\__|\__\___|_|    |___/ (_)_/ |_|_| |_| |_|_|  \___|
""
""
"" Table of Contents
""------------------
"" General
"" Colors and syntax
"" Navigation and Search
"" Tabs and Indentation
"" Autocomplete
"" Miscellaneous

"" General
set nocompatible
execute pathogen#infect()
set bs=2
" Automatic reloading of .vimrc
" autocmd! bufwritepost .vimrc source %
let mapleader = "-"

" Backup, swap and undofile
set noswapfile
set nobackup
set undofile
set undolevels=100
set undoreload=1000
set undodir=$HOME/.vim/undofiles

:nnoremap <leader>d dd

"" Colors and syntax highlighting
filetype plugin indent on
syntax on
set t_Co=256
color wombat256mod
highlight ColorColumn ctermbg=235 guibg=#2c2d27
"let &colorcolumn="80,".join(range(120,999),",")
"let &colorcolumn=join(range(81,999),",")
set colorcolumn=95

"" Vim-Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
"if !exists('g:airline_symbols')
"    let g:airline_symbols = {}
"endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
"   let g:airline_symbols.linenr = '␊'
"   let g:airline_symbols.linenr = '␤'
"   let g:airline_symbols.linenr = '¶'
"   let g:airline_symbols.branch = '⎇'
"   let g:airline_symbols.paste = 'ρ'
"   let g:airline_symbols.paste = 'Þ'
"   let g:airline_symbols.paste = '∥'
"   let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
"  let g:airline_symbols.branch = ''
"  let g:airline_symbols.readonly = ''
"  let g:airline_symbols.linenr = ''
"  let g:airline_symbols.space = "\ua0"

"" Navigation and Search
set number
set relativenumber
set scrolloff=10
map <Tab> <C-W>w
"set hlsearch
set incsearch
set ignorecase
set smartcase

"" Tabs and indentation
set expandtab
set tabstop=4
set shiftwidth=4
vnoremap < <gv
vnoremap > >gv

"" Autocomplete
let g:pydiction_location = '~/.vim/bundle/pydiction/complete-dict'

inoremap ( ()<Esc>mzi<C-o>f)<Esc>`zs
inoremap [ []<Esc>mzi<C-o>f]<Esc>`zs
inoremap { {}<Esc>mzi<C-o>f}<Esc>`zs
inoremap < <><Esc>mzi<C-o>f><Esc>`zs
inoremap ' ''<Esc>mzi<C-o>f'<Esc>`zs
inoremap " ""<Esc>mzi<C-o>f"<Esc>`zs

"" Miscellaneous
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-k> :%s/\s\+$//ce<CR>

" Copy/paste to/from system clipboard
map <Leader>p "*p
map <Leader>y "*y

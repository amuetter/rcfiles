
set nocompatible

execute pathogen#infect()

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
""if !exists('g:airline_symbols')
""    let g:airline_symbols = {}
""endif

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

"" Navigation
set number
set relativenumber
map <Tab> <C-W>w

"" Tabs and indentation
set expandtab
set tabstop=4
set shiftwidth=4
vnoremap < <gv
vnoremap > >gv


nmap <C-n> :NERDTreeToggle<CR>

"" Autocomplete
inoremap ( ()<Esc>i
inoremap [ []<Esc>i
inoremap { {}<Esc>i

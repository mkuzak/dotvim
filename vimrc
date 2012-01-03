" pathogen config
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" syntax
filetype off
filetype plugin indent on
syntax on

" solarized colorscheme
let g:solarized_termtrans=1
set background=dark
colorscheme solarized
set t_Co=256

" gui stuff
set gfn=Monaco:h12
set guioptions-=T

" JSON files are javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

" indenting and formating
set cindent
set smartindent
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set formatoptions=qrn1
set backspace=indent,eol,start
set lbr
set showcmd
set ttyfast

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" enable mouse
set mouse=a

" some UI settings
set nolazyredraw
set number

" no sounds
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" fix backspace in ssh
"set t_kb=^?

"hlight current line
set cursorline

" Javascript section
au FileType javascript setl nocindent
au FileType javascript setl set tabstop=2
au FileType javascript setl set softtabstop=2
au FileType javascript setl set shiftwidth=2

" Highlight 81 column
set colorcolumn=81
:highlight ColorColumn ctermbg=black guibg=black

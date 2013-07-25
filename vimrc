" pathogen config
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" syntax
filetype off
filetype plugin on
filetype indent on
syntax on

if has('autocmd')
    autocmd filetype python set expandtab
endif

" solarized colorscheme
" let g:solarized_termtrans=1
set background=dark
set t_Co=256
colorscheme molokai
" colorscheme solarized

" gui stuff
set gfn=Monaco:h12
set guioptions-=T

" JSON files are javascript
autocmd BufNewFile,BufRead *.json set ft=javascript

" enable multiple non-saved buffers
set hidden

"customize statusline
:set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [POS=%04l,%04v][%p%%]\ [LEN=%L] 
:set laststatus=2 

" needed for vim-R-plugin
" not compatibile with vi
set nocompatible
syntax enable


" indenting and formating
set cindent
set smartindent
set autoindent
set copyindent
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
set smarttab

" searching
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch

" history
set history=1000
set undolevels=1000

" enable mouse
set mouse=a

" some UI settings
set nolazyredraw
set number
set title

" no sounds
set noerrorbells
set visualbell
set t_vb=
set tm=500

" no backups
set nobackup
set noswapfile

" paste mode
set pastetoggle=<F2>

" toggle mouse between vim and terminal

" use Q for formatting the current paragraph (or selection)
vmap Q gq
vmap Q gqap

" disable arrows
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" j and k jump row when wrapped
nnoremap j gj
nnoremap k gk

" clear hlsearch when typed ,/
nmap <silent> ,/ :nohlsearch<CR>

" enable write with sudo with w!
cmap w!! w !sudo tee % >/dev/null



" fix backspace in ssh
"set t_kb=^?

"hlight current line
set cursorline

" Javascript section
au FileType javascript setl nocindent
au FileType javascript setl tabstop=2
au FileType javascript setl softtabstop=2
au FileType javascript setl shiftwidth=2

" html indenting
au FileType html setl tabstop=2
au FileType html setl softtabstop=2
au FileType html setl shiftwidth=2

" Highlight 81 column
set colorcolumn=81
:highlight ColorColumn ctermbg=black guibg=black

" jslint config
" nmap <F4> :w<CR>:make<CR>:cw<CR>
" "nmap <F4> :w<CR>:JSHint<CR>
autocmd BufWritePost *.js JSHint

" flake8 config
autocmd BufWritePost *.py call Flake8()

" tidying up trailing whitespace
function! <SID>StripTrailingWhitespaces()
    " Preparation: save last search, and cursor position.
    let _s=@/
    let l = line(".")
    let c = col(".")
    "Do the business:
    %s/\s\+$//e
    " Clean up: restore previous search history, and cursonr position"
    let @/=_s
    call cursor(l,c)
endfunction

autocmd BufWrite *.py,*.js :call <SID>StripTrailingWhitespaces()

" fix background in vim in tmux
set term=screen-256color

" r in screen/tmux
let vimrplugin_screenplugin=0

" slime use tmux
let g:slime_target="tmux"

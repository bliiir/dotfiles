" ------------------------------------------------------------------------------
" Source
" ------------------------------------------------------------------------------

" Spelling
source $HOME/.config/nvim/rc/spell.vim

" Custom plugin settings
source $HOME/.config/nvim/rc/plugins.vim

" User defined functions
source $HOME/.config/nvim/rc/functions.vim

" ALL hotkeys
source $HOME/.config/nvim/rc/map.vim

" file type specific vim config
autocmd BufNewFile,BufRead *.js  source $HOME/.config/nvim/rc/java_script.vim
" autocmd BufNewFile,BufRead *.cs source $HOME/.config/nvim/rc/cs.vim
" autocmd BufNewFile,BufRead *.c,*.cpp  source $HOME/.config/nvim/rc/c.vim
autocmd BufNewFile,BufRead *.tex source $HOME/.config/nvim/rc/latex.vim
autocmd BufNewFile,BufRead *.md  source $HOME/.config/nvim/rc/markdown.vim
autocmd BufNewFile,BufRead *.html,*.xhtml  source $HOME/.config/nvim/rc/html.vim
autocmd BufNewFile,BufRead Snakefile,*.py,*.ipy  source $HOME/.config/nvim/rc/python.vim


" ------------------------------------------------------------------------------ 
" Directories
" ------------------------------------------------------------------------------ 
set backupdir=~/.local/share/nvim/backup/
set directory=~/.local/share/nvim/swap/
set undodir=~/.local/share/nvim/undo/


" ------------------------------------------------------------------------------
" Encoding
" ------------------------------------------------------------------------------
set encoding=utf-8  " The encoding displayed.
set fileencoding=utf-8  " The encoding written to file.


" ------------------------------------------------------------------------------
" Python version
" ------------------------------------------------------------------------------
" let g:python2_host_prog = '/usr/local/bin/python'
" let g:python3_host_prog = '/usr/local/bin/python3'


" ------------------------------------------------------------------------------
" Style
" ------------------------------------------------------------------------------

set title  " show the name of the file at the top of the terminal window
set statusline+=%F  " Show the path and filename at the bottom of the buffer


" Colors
set colorcolumn=72,79,100
"set tw=100  " width of document (used by gd), default was 79
" highlight ColorColumn ctermbg=233

"------------------------------------------------------------------------------- 
" define variables (let clause)
let npm_root = systemlist("npm root -g")[0]


"------------------------------------------------------------------------------- 
" Misc
"------------------------------------------------------------------------------- 
" General option
" enables hj and arrow keys warp to next next/previous line
"
set whichwrap+=<,>,h,l,[,]
"set matchpairs=(:),[:],{:},<:>
set matchpairs+=<:>,«:»

" nnoremap . <NOP>
set autoread " reload file when changes happen in other editors
set tags=./tags

set mouse=a  " Enable mouse in vim
set history=5000  " Sert number of undos

syntax enable
filetype plugin indent on

"------------------------------------------------------------------------------- 
" set wrap
set nowrap  " Do not wrap lines
"set nolinebreak
"set nolist  " list disables linebreak
set linebreak
set nolist  " list disables linebreak
set textwidth=79
set wrapmargin=0

"------------------------------------------------------------------------------- 

" ============================================================
" makes yanked text be yanked into the global clipboard
" makes OSX clipboard work when vim is started in a tmux session
" ============================================================
set clipboard=unnamedplus
if $TMUX == ''
    set clipboard+=unnamed
endif

" Folding ---------------------------------------------------------------------- 
" set foldmethod=syntax
set foldmethod=indent
set foldlevel=100

" Make folds auto-open and auto-close when the cursor moves over them
set foldopen=all
set foldclose=all

" Undo stuff ------------------------------------------------------------------- 
if has('persistent_undo')
    set undofile
endif

set undolevels=5000

" Tab stuff
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

" Backspace stuff
set bs=2 " make backspace behave like normal again
set backspace=indent,eol,start

set wildmode=list:longest " make TAB behave like in a shell
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

" Search  stuff
set hlsearch
set incsearch
set ignorecase

set smartcase

" makes / and ? case insensitive
set ic

" Source user defined functions
hi Normal ctermfg=252 ctermbg=none cterm=none guifg=#e3e0d7 guibg=NONE gui=none

set norelativenumber
set number
" highlight String cterm=italic gui=italic                                    


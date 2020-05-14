" ------------------------------------------------------------------------------
" Source
" ------------------------------------------------------------------------------

" Custom plugin settings
source $HOME/.config/nvim/rc/plugins.vim

" coc settings
source $HOME/.config/nvim/rc/coc.vim

" Spelling
source $HOME/.config/nvim/rc/spell.vim

" User defined functions
source $HOME/.config/nvim/rc/functions.vim

" ALL hotkeys
source $HOME/.config/nvim/rc/map.vim

" Macros
source $HOME/.config/nvim/rc/macros.vim


" ------------------------------------------------------------------------------
" Filetypes
" ------------------------------------------------------------------------------
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

" hi Normal ctermfg=252 ctermbg=none cterm=none guifg=#e3e0d7 guibg=NONE gui=none
" Colors
set colorcolumn=79,100
" highlight ColorColumn ctermbg=233
set cursorcolumn  " Shows a colorcolumn at the same indentation as the cursor
" set cursorline

" Place the cursor anywhere in the window
" set virtualedit=all

let $NVIM_TUI_ENABLE_TRUE_COLOR=1


"------------------------------------------------------------------------------- 
" Misc
"------------------------------------------------------------------------------- 
" define variables (let clause)
let npm_root = systemlist("npm root -g")[0]
" General option
" enables hj and arrow keys warp to next next/previous line
"
set whichwrap+=<,>,h,l,[,]
set matchpairs=(:),[:],{:},<:>,«:»
" set matchpairs+=<:>,«:»

" nnoremap . <NOP>
set autoread " reload file when changes happen in other editors
set tags=./tags

set mouse=a  " Enable mouse in vim
set history=5000  " Sert number of undos


"------------------------------------------------------------------------------- 
" Wrapping
"------------------------------------------------------------------------------- 
" set wrap
set nowrap  " Do not wrap lines
set linebreak
"set nolinebreak
set nolist  " list disables linebreak
" set textwidth=79
" set wrapmargin=0

"------------------------------------------------------------------------------- 
" Clipboard
"------------------------------------------------------------------------------- 
" makes yanked text be yanked into the global clipboard
" makes OSX clipboard work when vim is started in a tmux session
set clipboard=unnamedplus
if $TMUX == ''
    set clipboard+=unnamed
endif

"------------------------------------------------------------------------------- 
" Folding
"------------------------------------------------------------------------------- 
" set foldmethod=syntax
set foldmethod=indent
set foldlevel=100

" Make folds auto-open and auto-close when the cursor moves over them
set foldopen=all
set foldclose=all

"------------------------------------------------------------------------------- 
" Undo
"------------------------------------------------------------------------------- 
if has('persistent_undo')
    set undofile
endif

set undolevels=5000

"------------------------------------------------------------------------------- 
" Tabs
"------------------------------------------------------------------------------- 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround

"------------------------------------------------------------------------------- 
" Backspace
"------------------------------------------------------------------------------- 
set bs=2 " make backspace behave like normal again
set backspace=indent,eol,start


set wildmode=list:longest " make TAB behave like in a shell
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*


"------------------------------------------------------------------------------- 
" Search
"------------------------------------------------------------------------------- 
set hlsearch
set incsearch
set ignorecase
set smartcase
" makes / and ? case insensitive
set ic



"------------------------------------------------------------------------------- 
" Linenumbers
"------------------------------------------------------------------------------- 
set norelativenumber
set number
" highlight String cterm=italic gui=italic


"------------------------------------------------------------------------------- 
" Concealing
"------------------------------------------------------------------------------- 
" Stop vim from hiding any characters
set conceallevel=0


"------------------------------------------------------------------------------- 
" Syntax
"------------------------------------------------------------------------------- 
" syn keyword commentKeywords NOTE BUG TODO
syntax enable
filetype plugin indent on

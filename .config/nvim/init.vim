" ------------------------------------------------------------------------------
" Source
" ------------------------------------------------------------------------------

" Custom plugin settings
source $HOME/.config/nvim/rc/plugins.vim

" User defined functions
source $HOME/.config/nvim/rc/functions.vim

" file type specific vim config
autocmd BufNewFile,BufRead Snakefile,*.py,*.ipy  source $HOME/.config/nvim/rc/python.vim
autocmd BufNewFile,BufRead *.js  source $HOME/.config/nvim/rc/java_script.vim
autocmd BufNewFile,BufRead *.cs source $HOME/.config/nvim/rc/cs.vim
autocmd BufNewFile,BufRead *.c,*.cpp  source $HOME/.config/nvim/rc/c.vim
autocmd BufNewFile,BufRead *.tex source $HOME/.config/nvim/rc/latex.vim
autocmd BufNewFile,BufRead *.md  source $HOME/.config/nvim/rc/markdown.vim
autocmd BufNewFile,BufRead *.html,*.xhtml  source $HOME/.config/nvim/rc/html.vim


" ------------------------------------------------------------------------------
" Terminal
" ------------------------------------------------------------------------------

" show the name of the file at the top of the terminal window
set title

" Show the path and filename at the bottom of the buffer
set statusline+=%F

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
" Syntaxtic recomended settings, change when smarter :D
" ------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


" ------------------------------------------------------------------------------
" Fix Tab completion
" both YouCompleteMe and UltiSnips use the tab key
" make them play nice togeter
"
let g:UltiSnipsSnippetDirectories=["UltiSnips", $HOME.'/.config/nvim/plugged/vim-snippets/Ultisnips', $HOME.'/.config/nvim/plugged/vim-snippets/']

 " makes ctrl + j complete snippets
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsUsePythonVersion = 3


" from: https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" uncomment if you want snippet and code completion to have different keys
" let g:UltiSnipsJumpForwardTrigger="<c-j>"
" let g:UltiSnipsJumpBackwardTrigger="<c-k>"

" ------------------------------------------------------------------------------ 

" ------------------------------------------------------------------------------ 
" makes vim drop its tmp files inside the .vim folder
set backupdir=~/.local/share/nvim/backup/
set directory=~/.local/share/nvim/swap/
set undodir=~/.local/share/nvim/undo/
source $HOME/.config/nvim/rc/spell.vim

"------------------------------------------------------------------------------- 
" define variables (let clause)
let npm_root = systemlist("npm root -g")[0]

"------------------------------------------------------------------------------- 
" ALL hotkeys
source $HOME/.config/nvim/rc/map.vim

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

set mouse=a

set history=5000

syntax enable
filetype plugin indent on

"------------------------------------------------------------------------------- 
" Wrap lines
set nowrap
"set nolinebreak
"set nolist  " list disables linebreak
" set wrap
set linebreak
set nolist  " list disables linebreak
set textwidth=0
set wrapmargin=0

"------------------------------------------------------------------------------- 
" Colors
colorscheme dracula
let g:airline_theme='badwolf'
set colorcolumn=80,100
"set tw=100  " width of document (used by gd), default was 79
" highlight ColorColumn ctermbg=233

" ============================================================
" makes yanked text be yanked into the global clipboard
" makes OSX clipboard work when vim is started in a tmux session
" ============================================================
set clipboard=unnamedplus
if $TMUX == ''
    set clipboard+=unnamed
endif

" Folding ---------------------------------------------------------------------- 
set foldmethod=syntax
set foldmethod=indent
set foldlevel=99

" Make folds auto-open and auto-close when the cursor moves over them
"set foldopen=all
"set foldclose=all

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
hi Normal             ctermfg=252             ctermbg=none            cterm=none              guifg=#e3e0d7   guibg=NONE     gui=none

" Plugin settings
let g:NERDDefaultAlign = 'left'


set norelativenumber
set number


" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin()
    
	" On-demand loading
    Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
    if !has('nvim')
        Plug 'tpope/vim-sensible'
    else
        set termguicolors
    endif

    " General:
    Plug 'scrooloose/nerdcommenter'

    "Plug 'freeo/vim-kalisi'
    Plug 'tpope/vim-surround'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " Syntax:
    Plug 'vim-syntastic/syntastic'

    " Tab Completion:
	Plug 'ervandew/supertab'
	Plug 'Valloric/YouCompleteMe'
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'
	" Plug 'prabirshrestha/async.vim'
	" Plug 'prabirshrestha/vim-lsp'
	" Plug 'thomasfaingnaert/vim-lsp-snippets'
	" Plug 'thomasfaingnaert/vim-lsp-ultisnips'
	
    " Git:
    Plug 'tpope/vim-fugitive'

    " Color:
    Plug 'dracula/vim', { 'as': 'dracula' }

    " Markdown:
    Plug 'godlygeek/tabular'
    Plug 'plasticboy/vim-markdown'

    " Python:
    Plug 'https://github.com/tweekmonster/impsort.vim'

    " Latex:
    Plug 'lervag/vimtex'

	" jupyter integration
	Plug 'jupyter-vim/jupyter-vim'

call plug#end()


" ------------------------------------------------------------------------------
" Nerd Commentator
" ------------------------------------------------------------------------------
let g:NERDAltDelims_c = 1
let g:NERDAltDelims_cpp = 1

let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1


" ------------------------------------------------------------------------------
" source shellbridge
" ------------------------------------------------------------------------------
" let shellbridge_rc = npm_root . "/shellbridge/editors/shellbridge.vim"
" if filereadable(shellbridge_rc)
	" exec 'source' shellbridge_rc
" endif


" ------------------------------------------------------------------------------
" Ultisnips
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
" Syntastic
" ------------------------------------------------------------------------------

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

:noremap ]r :py3 Syntastic.move("lnext")<CR>
:noremap [r :py3 Syntastic.move("lprevious")<CR>
" movements
" :map ]r :lnext<CR>
" :map [r :lprevious<CR>

" Syntastic
"class Syntastic:
"	@classmethod
"	def get_count(cls):
"		count = int(vim.eval('v:count'))
"		if count == 0:
"			count = ""
"		return str(count)
"
"	@classmethod
"	def move(cls, command):
"		count = cls.get_count()
"		cmd = ":{}{}".format(count, command)
"		print(cmd)
":w
"vim.command(cmd)
"EOF

"py3 << EOF

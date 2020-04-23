" ------------------------------------------------------------------------------
" Source
" ------------------------------------------------------------------------------

" Shellbridge
" let shellbridge_rc = npm_root . "/shellbridge/editors/shellbridge.vim"
" if filereadable(shellbridge_rc)
	" exec 'source' shellbridge_rc
" endif


" ------------------------------------------------------------------------------
" Plugins
" ------------------------------------------------------------------------------
call plug#begin()
    
	" On-demand loading
	" if !has('nvim')
	" else
	"     set termguicolors
	" endif
 
	" Vim defaults everyone can agree on
	Plug 'tpope/vim-sensible'

	" Commenting:
	" Vim plugin for intensely nerdy commenting powers
	Plug 'scrooloose/nerdcommenter'
	" Quoting/parenthesizing made simple
	Plug 'tpope/vim-surround'


	" File Explorer:
	" A tree explorer plugin for vim
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
 
	" Syntax:
	" Syntax checking hacks for vim
	Plug 'vim-syntastic/syntastic'


	" Tab Completion:
	" Using the jedi autocompletion library for VIM
	Plug 'davidhalter/jedi-vim'
	" A code-completion engine for Vim
	Plug 'Valloric/YouCompleteMe'
	" Perform all your vim insert mode completions with Tab  
	" Plug 'ervandew/supertab'


	" Language Server:
	" normalize async job control api for vim and neovim 
	Plug 'prabirshrestha/async.vim'
	" async language server protocol plugin for vim and neovim 
	Plug 'prabirshrestha/vim-lsp'


	" Intellisense:
	" Intellisense engine for Vim8 & Neovim, full language server protocol 
	" support as VSCode
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	
	
	" Snippets:
	" UltiSnips - The ultimate snippet solution for Vim
	Plug 'sirver/ultisnips'
	" vim-snipmate default snippets
	Plug 'honza/vim-snippets'
	" Language Server Protocol snippets in vim using vim-lsp
	Plug 'thomasfaingnaert/vim-lsp-snippets'
	" Language Server Protocol snippets in vim using vim-lsp and UltiSnips
	Plug 'thomasfaingnaert/vim-lsp-ultisnips'


	" Git:
	" Fugitive is the premier Vim plugin for Git
	Plug 'tpope/vim-fugitive'
 

	" Themes:
	" status/tabline for vim
	Plug 'vim-airline/vim-airline'
	" A collection of themes for vim-airline 
	Plug 'vim-airline/vim-airline-themes'
	" The colorscheme with neovim in mind
	Plug 'freeo/vim-kalisi'
	" A dark Material Design version of Monokai for Vim 
	Plug 'skielbasa/vim-material-monokai'


	" Markdown:
	Plug 'plasticboy/vim-markdown'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
 

	" Python:
	" Semantic Highlighting for Python in Neovim
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
	Plug 'nvie/vim-flake8'
	Plug 'tweekmonster/impsort.vim'
	Plug 'tmhedberg/SimpylFold'
	Plug 'yhat/vim-docstring'
 
	" Jupyter:
	Plug 'jupyter-vim/jupyter-vim'

	" Latex:
	Plug 'lervag/vimtex'
 
	" Tabularize:
	Plug 'godlygeek/tabular'
	Plug 'nathanaelkane/vim-indent-guides'
 
call plug#end()


" ------------------------------------------------------------------------------
" Style
" ------------------------------------------------------------------------------

set background=dark
set termguicolors

" material monokai
colorscheme material-monokai
let g:materialmonokai_italic=1
let g:materialmonokai_subtle_spell=1
let g:materialmonokai_custom_lint_indicators=1
let g:airline_theme='materialmonokai'
let g:materialmonokai_subtle_airline=1


" ------------------------------------------------------------------------------
" Nerd Commentator
" ------------------------------------------------------------------------------
let g:NERDAltDelims_c = 1
let g:NERDAltDelims_cpp = 1
let g:NERDSpaceDelims = 1
let g:NERDCommentEmptyLines = 1
let g:NERDDefaultAlign = 'left'

" ------------------------------------------------------------------------------
" NERDTree
" ------------------------------------------------------------------------------
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists(“s:std_in”) | NERDTree | endif
nnoremap <Leader>f :NERDTreeToggle<Enter>
nnoremap <silent> <Leader>v :NERDTreeFind<CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1


" ------------------------------------------------------------------------------
" Ultisnips
" ------------------------------------------------------------------------------

" Fix Tab completion
" both YouCompleteMe and UltiSnips use the tab key
" make them play nice togeter
"
let g:UltiSnipsSnippetDirectories=[ 
			\ "UltiSnips",
			\ $HOME.'/.config/nvim/plugged/vim-snippets/Ultisnips', 
			\ $HOME.'/.config/nvim/plugged/vim-snippets/', 
			\ $HOME.'/.config/nvim/plugged/vim-snippets-custom']

 " makes ctrl + j complete snippets
let g:UltiSnipsExpandTrigger="<c-j>"

" from: https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" make YCM compatible with UltiSnips (using supertab)
" let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
" let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
" let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
" let g:UltiSnipsExpandTrigger = "<tab>"
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

" Syntaxtic recomended settings, change when smarter :D
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" movements
" map ]r :lnext<CR>
" map [r :lprevious<CR>

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
"
"vim.command(cmd)


" ------------------------------------------------------------------------------
" Simplyfold
" ------------------------------------------------------------------------------
let g:SimpylFold_docstring_preview = 1


" ------------------------------------------------------------------------------
" Flake8
" ------------------------------------------------------------------------------
let g:flake8_show_in_gutter=1
let g:flake8_show_in_file=1
"
" ------------------------------------------------------------------------------
" Markdown preview
" ------------------------------------------------------------------------------
" https://github.com/iamcco/markdown-preview.nvim/tree/d84315616169d24450847a03fd5d3dc68a666597
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 1
let g:mkdp_command_for_global = 1
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }


" ------------------------------------------------------------------------------
" vim-docstring 
" ------------------------------------------------------------------------------
autocmd FileType python PyDocHide

" -----------------------------------------------------------------------------
" vim-indent-guides 
" -----------------------------------------------------------------------------
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4


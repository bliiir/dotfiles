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
	Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
	if !has('nvim')
		Plug 'tpope/vim-sensible'
	else
		set termguicolors
	endif
 
	" General:
	Plug 'scrooloose/nerdcommenter'
 
	Plug 'freeo/vim-kalisi'
	Plug 'tpope/vim-surround'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
 
	" Syntax:
	Plug 'vim-syntastic/syntastic'
	Plug 'nvie/vim-flake8'
	Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
 
	" Tab Completion:
	Plug 'Valloric/YouCompleteMe'
	Plug 'sirver/ultisnips'
	Plug 'honza/vim-snippets'
	Plug 'davidhalter/jedi-vim'
	Plug 'prabirshrestha/async.vim'
	Plug 'prabirshrestha/vim-lsp'
	Plug 'thomasfaingnaert/vim-lsp-snippets'
	Plug 'thomasfaingnaert/vim-lsp-ultisnips'
	" Plug 'ervandew/supertab'
	
	" Git:
	Plug 'tpope/vim-fugitive'
 
	" Color:
	Plug 'skielbasa/vim-material-monokai'
	" Plug 'dracula/vim', { 'as': 'dracula' }
	" Plug 'niklas-8/vim-darkspace', { 'as': 'darkspace' }
	" Plug 'phanviet/vim-monokai-pro', { 'as': 'monokai-pro' }
	
	" Markdown:
	Plug 'plasticboy/vim-markdown'
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
 
	" Python:
	Plug 'tweekmonster/impsort.vim'
	Plug 'tmhedberg/SimpylFold'
	Plug 'yhat/vim-docstring'
 
	" Latex:
	Plug 'lervag/vimtex'
 
	" Jupyter:
	Plug 'jupyter-vim/jupyter-vim'

	" Tabularize:
	Plug 'godlygeek/tabular'
	" Plug 'nathanaelkane/vim-indent-guides'
 
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
" " ------------------------------------------------------------------------------
" autocmd FileType python PyDocHide

" -----------------------------------------------------------------------------
" vim-indent-guides 
" -----------------------------------------------------------------------------
" let g:indent_guides_enable_on_vim_startup = 1
" let g:indent_guides_auto_colors = 0
" autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
" autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4

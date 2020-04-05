" config file containing all hotkeys
map <Leader>v :source $HOME/.config/nvim/init.vim<CR>

" Save
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR> i

" Quit
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>i
 
" Save and quit
nnoremap <C-x> :x<CR>
inoremap <C-x> <Esc>:x<CR>i

" Toggle normal and insert mode
nnoremap <C-space> i
inoremap <C-space> <Esc> 

" disable formatting when pasting large chunks of code
set pastetoggle=<F2>

" Keep visual selection after indenting/unindenting
:vnoremap < <gv
:vnoremap > >gv


" use ctrl + number to switch tab
" Does not work because of escape carrackter stuff is needed for the terminal
" to not mess uo Ctrl + letter
map <C-1> 1gt
map <C-2> 2gt
map <C-3> 3gt
map <C-4> 4gt
map <C-5> 5gt
imap <C-1> <Esc>1gt
imap <C-2> <Esc>2gt
imap <C-3> <Esc>3gt
imap <C-4> <Esc>4gt
imap <C-5> <Esc>5gt
map <C-6> = previous buffer!

" vmap <expr> > ShiftAndKeepVisualSelection(">")
" vmap <expr> < ShiftAndKeepVisualSelection("<")


" wierd ones that I should use
noremap  <Leader>wc :%!column -t

map <C-/> "<Leader>c "
imap <C-/> "<C-O><Leader>c "

" ---------------------------------------------------------------------------
" Terminal mapping
" ---------------------------------------------------------------------------
tnoremap <Esc> <C-\><C-n>

" ---------------------------------------------------------------------------
" insert/remove blank lines in normal mode
" ---------------------------------------------------------------------------
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
" nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
" nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
" nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" keybindings for syntastic
 noremap  ]e :lnext<CR>
 noremap  [e :lprevious<CR>

" ---------------------------------------------------------------------------
" Move block
" ---------------------------------------------------------------------------
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv




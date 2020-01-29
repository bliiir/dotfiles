" config file containing all hotkeys I used

map <Leader>v :source $HOME/.config/nvim/init.vim<CR>

" Save
noremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>i

" Quit
nnoremap <C-q> :q<CR>
inoremap <C-q> <Esc>:q<CR>i

" Save and quit
nnoremap <C-x> :x<CR>
inoremap <C-x> <Esc>:x<CR>i

" Toggle normal and insert mode
nnoremap <C-m> i
inoremap <C-m> <Esc>

" disable formatting when pasting large chunks of code
set pastetoggle=<F2>

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
" <C-6> = previous buffer!

" vmap <expr> > ShiftAndKeepVisualSelection(">")
" vmap <expr> < ShiftAndKeepVisualSelection("<")


" wierd ones that I should use
noremap  <Leader>wc :%!column -t

map <C-/> "<Leader>c "
imap <C-/> "<C-O><Leader>c "

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
tnoremap <Esc> <C-\><C-n>

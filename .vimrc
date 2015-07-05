" ===============================
" ========= Vundle ==============
" ===============================

"load all plugins with vundle
source ~/.vim/vimrc/my_vundle.vim


" ===============================
" ========= General =============
" ===============================
" syntax highlighting
syntax on

" cold folding
set foldmethod=indent
set foldlevel=99
" space to fold/unfold code
inoremap <F10> <C-O>za
nnoremap <F10> za
vnoremap <F10> zf


" ctrl-s to save
inoremap <C-S> <Esc>:w<CR>
vnoremap <C-S> <Esc>:w<CR>v
nnoremap <C-S> :w<CR>

" line numbers
set number

" highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" ===============================
" ========= Python ==============
" ===============================

" tab width
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" execute python file
nnoremap <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<cr>
inoremap <buffer> <F5> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>


" clear terminal
nnoremap <Leader>c :!clear<CR>
inoremap <Leader>c :!clear<CR>

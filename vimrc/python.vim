" ===============================
" ========= Python ==============
" ===============================

" highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" tab width
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set expandtab

" execute python file
nnoremap <buffer> <F5> :w<CR>:exec '!python3' shellescape(@%, 1)<cr>
inoremap <buffer> <F5> <Esc>:w<CR>:exec '!python3' shellescape(@%, 1)<cr>

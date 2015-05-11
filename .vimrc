"load all plugins with vundle
source ~/.vim/vimrc/my_vundle.vim

" ===============================
" ========= General =============
" ===============================
" cold folding
set foldmethod=indent
set foldlevel=99
" ctrl-s to save
inoremap <C-S> <Esc>:w<CR>i
vnoremap <C-S> <Esc>:w<CR>v
nnoremap <C-S> :w<CR>

" line numbers
set number

" highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%80v.*/
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
nnoremap <buffer> <F5> :w<CR>:exec '!python' shellescape(@%, 1)<cr>
inoremap <F5> <Esc><F5> 

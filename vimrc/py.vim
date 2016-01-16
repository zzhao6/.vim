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
nnoremap <C-c> :!clear<CR><CR>:echo "Console cleared!"<CR>

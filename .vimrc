" ===============================
" ========= numpad ==============
" ===============================
source ~/.vim/vimrc/numpad.vim

" ===============================
" ========= bash ================
" ===============================
au BufRead,BufNewFile .zzbash set filetype=sh

" ===============================
" ========= python ==============
" ===============================
source ~/.vim/vimrc/python.vim

" ===============================
" ========= C++ =================
" ===============================
source ~/.vim/vimrc/cpp.vim

" ===============================
" ========= Vundle ==============
" ===============================

" load all plugins with vundle
source ~/.vim/vimrc/my_vundle.vim
" load python configs
source ~/.vim/vimrc/py.vim
" ===============================
" ========= General =============
" ===============================
" background
set background=dark
" syntax highlighting
syntax on
" bash
autocmd BufNewFile,BufRead *.bashzz set syntax=sh

" Highlight Cursor Line
set cursorline
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white

" disable ctrl-z terminates the process
" inoremap <C-Z> <Space>
" nnoremap <C-Z> <Space>
" vnoremap <C-Z> <Space>


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

" use tab for makefile
autocmd FileType make setlocal noexpandtab

" highlight search
:noremap <F4> :set hlsearch! hlsearch?<CR>

" set delete the previous word
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db


" clear terminal
nnoremap <C-c> :!clear<CR><CR>:echo "Console cleared!"<CR>

" highlight excess line length
augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

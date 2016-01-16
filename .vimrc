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

"load all plugins with vundle
source ~/.vim/vimrc/my_vundle.vim


" ===============================
" ========= General =============
" ===============================
" background
set background=dark
" syntax highlighting
syntax on

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

" highlight search
:noremap <F4> :set hlsearch! hlsearch?<CR>

" set delete the previous word
inoremap <C-w> <C-\><C-o>dB
inoremap <C-BS> <C-\><C-o>db


" clear terminal
nnoremap <C-c> :!clear<CR><CR>:echo "Console cleared!"<CR>


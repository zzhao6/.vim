" ===============================
" ========= Vundle ==============
" ===============================
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" The bundles you install will be listed here

filetype plugin indent on

" The rest of your config follows here
" ======== Airline ============
Bundle 'vim-airline/vim-airline'

" ======== Minibufexpl ==========

Bundle 'fholgado/minibufexpl.vim'
" Global mappings
" only keep one functionality here, <leader>c is used as globally clear the  terminal
map <Leader>e :MBEToggle<cr>

" keyboard control
noremap <C-J>  <C-W>j
noremap <C-K>  <C-W>k
noremap <C-H>  <C-W>h
noremap <C-L>  <C-W>l
                
nnoremap <C-Right>   :w<CR>:MBEbn<CR>
nnoremap <C-Left>    :w<CR>:MBEbp<CR>
inoremap <C-Right>   <Esc>:w<CR>:MBEbn<CR>
inoremap <C-Left>    <Esc>:w<CR>:MBEbp<CR>

" configuration
" ======== Jedi-Vim =============
" Discarded, use supertab instead
" Bundle 'davidhalter/jedi-vim'
" ======== Supertab ============
Bundle 'ervandew/supertab'
" ======== TaskList ============
Bundle 'TaskList.vim'
" ======== commenter ============
Bundle 'scrooloose/nerdcommenter'
" ===============================
" ========= End Vundle ==========
" ===============================

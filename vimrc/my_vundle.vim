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
" ======== Powerline ============
Bundle 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}
" Powerline setup
let g:Powerline_symbols = 'fancy'
set t_Co=256
set laststatus=2



" ======== Minibufexpl ==========

Bundle 'fholgado/minibufexpl.vim'
" Global mappings
map <Leader>e :MBEOpen<cr>
map <Leader>c :MBEClose<cr>
map <Leader>t :MBEToggle<cr>
      
" keyboard control
noremap <C-J>  <C-W>j
noremap <C-K>  <C-W>k
noremap <C-H>  <C-W>h
noremap <C-L>  <C-W>l
                
noremap <C-Right>   :MBEbn<CR>
noremap <C-Left>    :MBEbp<CR>
" configuration
" ===============================
" ========= End Vundle ==========
" ===============================

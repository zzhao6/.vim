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


" ===============================
" ========= General =============
" ===============================

" line numbers
set number

" NOT WORKING YET  highlight excess line length
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

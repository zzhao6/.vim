## my vim configuration

How to use:
* clone the repo to desktop
* run the following
  + git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
* put the following code in ~/.vimrc
```
source ~/.vim/.vimrc

" automatically reload vimrc
autocmd BufWritePost .vimrc source %
```

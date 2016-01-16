## my vim configuration

How to use:
* clone the repo to desktop
* run the following
```
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
```
* put the following code in ~/.vimrc
```
source ~/.vim/.vimrc

" automatically reload vimrc
autocmd BufWritePost .vimrc source %
```
* run your vim, type the following to install all plugins.
```
:BundleList
:PluginInstall
```

* All plugins and fonts should be installed automatically.

* Shotcut Keys:
ctrl + left/right arrow: change tab (bufexpl)
<leader>cc: comment line or block (nerd commenter)
<leader>c<space>: uncomment line or block (nerd commenter)




ctrl + s: save current file
ctrl + c: clear console

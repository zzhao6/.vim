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

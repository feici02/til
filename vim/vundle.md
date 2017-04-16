# How to use Vundle?

## 0. Vundle is a plug-in manager for Vim.

## 1. backup your original .vimrc file and .vim directory.
```
if [ -e .vimrc ]; then mv .vimrc .vimrc_bak; fi
if [ -e .vim ]; then mv .vim .vim_bak; fi
```

## 2. clone the vundle repo
```
$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

## 3. edit ```.vimrc```, for example:

```
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
```

## 4. start ```vim``` and run following commands:
```
# start the installation
:PluginInstall
# the plugins configured in .vimrc will be installed

# run command below to complete the installation
:bdelete

# to update plugins
:PluginUpdate
# or
:PluginInstall!
```

## 5. how to install a plugin (another way)?
```
$ vim

# list all vim plugins
:PlguinSearch!

# search a plugin named markdown
:PluginSearch! markdown

# move the cursor to the search result and type "i" to install

# run command below to complete
:bdelete

# edit .vimrc
:e ~/.vimrc

# add the following line
Plugin 'Markdown'
```

## 6. how to delete a plugin?
```
# delete the plugin in .vimrc file first
# run following command in vim
:PluginClean
```

## 7. vundle mannual
Run following command in ```vim```:
```:h vundle```

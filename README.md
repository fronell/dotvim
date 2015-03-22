# Installation
## Linux

    cd ~
    git clone git@github.com:fronell/dotvim.git
    rm ~/.vimrc
    ln -s ~/dotvim .vim
    ln -s ~/dotvim/vimrc ~/.vimrc
    touch ~/.vimtags

## Windows

The steps below will blow away any existing VIM configuration.  Install git and perform the following steps from an Administrator command prompt:

    cd %UserProfile%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles
    del _vimrc
    mklink _vimrc vimfiles\vimrc

# Managing Plugins

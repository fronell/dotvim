# Installation
## Linux

    cd ~
    git clone git@github.com:fronell/dotvim.git
    rm ~/.vimrc
    ln -s ~/dotvim .vim
    ln -s ~/dotvim/vimrc ~/.vimrc
    touch ~/.vimtags

## Windows

Install git and run windows_setup.bat.  If you want to do the install manually, here are the steps:

    cd %UserProfile%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles
    del _vimrc
    mklink _vimrc vimfiles\vimrc

# Managing Plugins

# Installation
## Linux

The steps below blow away your existing vim configuration so be careful!

    cd ~
    git clone git@github.com:fronell/dotvim.git
    rm ~/.vimrc
    rm -rf ~/.vim
    ln -s ~/dotvim .vim
    ln -s ~/dotvim/vimrc ~/.vimrc
    touch ~/.vimtags

## Windows

The steps below blow away your existing vim configuration so be careful!

Its a two-step process with Windows because you cannot create symlinks as a regular user.  Instead, we have to determine our user profile directory and then open up a command prompt with Admin privileges to create the symlink.

Open a command prompt as a regular user and do the following:

    cd %UserProfile%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles

Open a command prompt as the Administrator and do the following:

    cd <UserProfile dir from above>
    del _vimrc
    mklink _vimrc vimfiles\vimrc

# Managing Plugins

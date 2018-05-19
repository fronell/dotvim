# Installation
## Linux

The steps below delete the existing Vim configuration so be careful!

    cd ~
    rm -f ~/.vimrc
    rm -rf ~/.vim
    git clone git@github.com:fronell/dotvim.git
    ln -s ~/dotvim .vim
    ln -s ~/dotvim/vimrc ~/.vimrc
    # Used by ctags in Vim
    touch ~/.vimtags

## Windows

Download Vim from the following URL:

https://tuxproject.de/projects/vim/x64/

Check which version of Visual Studio Vim was compiled with because you will need
the C++ redistributables for that version installed for Vim to work.

The steps below delete the existing Vim configuration so be careful!

From a console with Admin rights (Admin is needed to create symlinks):

    cd %USERPROFILE%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles
    del _vimrc
    mklink _vimrc vimfiles\vimrc

### Ack for Windows

The instructions below use the Perl binary that comes with git for Windows:

1. Download the single-file version of ack from http://beyondgrep.com/install/
2. Rename the file to ack.pl and place it in a directory thats in %PATH%
3. From a console with Admin rights, run the following commands:
    ```
    assoc .pl=Perl  
    ftype Perl="c:\Program Files\git\usr\bin\perl.exe" "%1" %*
    ```
4. Open up gVim and perform a test Ack command
5. If prompted to associate with perl.exe, make sure to check the box to "Always
use this app" and press OK

**Do not create the association using File Explorer!**  

Reference used for creating the filetype association:

http://whitescreen.nicolaas.net/programming/windows-shebangs

It also describes how to associate an app for files without an extension in
Windows.

### ctags for Windows

1. Download ctags for Windows from http://ctags.sourceforge.net/
2. Place ctags.exe in a directory thats in %PATH%

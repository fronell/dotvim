# Installation
## Linux

The steps below delete the existing Vim configuration so be careful!

    cd ~
    git clone git@github.com:fronell/dotvim.git
    rm ~/.vimrc
    rm -rf ~/.vim
    ln -s ~/dotvim .vim
    ln -s ~/dotvim/vimrc ~/.vimrc
    touch ~/.vimtags

## Windows

Download Vim from the following URL:

https://tuxproject.de/projects/vim/x64/

Check which version of Visual Studio Vim was compiled with because you will need
the C++ redistributables for that version installed for Vim to work.

The steps below delete the existing Vim configuration so be careful!

Open a command prompt as the Administrator and do the following:

    cd %UserProfile%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles
    del _vimrc
    mklink _vimrc vimfiles\vimrc

### Ack for Windows

The instructions below use the Perl binary that comes with git for Windows:

1. Download the single-file version of ack from http://beyondgrep.com/install/
2. Rename the file to ack.pl and place it in a directory thats in %PATH%
3. Open an Administrator command prompt and run the following commands:
    ```
    assoc .pl=Perl  
    ftype Perl="c:\Program Files\git\usr\bin\perl.exe" "%1" %*
    ```
**Do not create the association using File Explorer!**  

The Ack command should now work in Vim

### ctags for Windows

1. Download ctags for Windows from http://ctags.sourceforge.net/
2. Place ctags.exe in a directory thats in %PATH%

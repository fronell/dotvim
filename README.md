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

Open a command prompt as the Administrator and do the following:

    cd %UserProfile%
    rmdir vimfiles /S /Q
    git clone https://github.com/fronell/dotvim.git vimfiles
    del _vimrc
    mklink _vimrc vimfiles\vimrc

### Ack for Windows

The instructions below use the Perl binary that comes with git for Windows

  Download the single-file version of ack at:
    http://beyondgrep.com/install/
  Rename the file to ack.pl and place it in a directory thats in the System PATH
  Open an Administrator command prompt and run the following commands:
    assoc .pl=Perl
    ftype Perl="c:\Program Files\git\usr\bin\perl.exe" "%1" %*
  Do not do the association through Windows Explorer!
  After that, you should be able to run ack.pl and use it with Vim

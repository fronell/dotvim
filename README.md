__TOC__

<!--ts-->
   * [Linux Setup](#linux-setup)
   * [Windows Setup](#windows-setup)
      * [ack](#ack)
      * [ctags](#ctags)

<!-- Added by: Chris Wornell, at: 2018-06-16T19:17-05:00 -->

<!--te-->

# Linux Setup

Install the appropriate Vim package to get scripting support:

Distro | Package
------ | -------
RHEL   | vim-enhanced
Ubuntu | vim-nox

The steps below delete the existing Vim configuration so be careful!

```bash
cd ~
rm -f ~/.vimrc
rm -rf ~/.vim
git clone git@github.com:fronell/dotvim.git
ln -s ~/dotvim .vim
ln -s ~/dotvim/vimrc ~/.vimrc
# Used by ctags in Vim
touch ~/.vimtags
```

# Windows Setup

The following URL contains a Vim for Windows that is compiled with scripting support and continually updated.  Download and extract to any folder of choice:

https://tuxproject.de/projects/vim/x64/

Check which version of Visual Studio Vim was compiled with because you will need
the C++ redistributables for that version installed for Vim to work.

The steps below delete the existing Vim configuration so be careful!

From a console with Admin rights (Admin is needed to create symlinks):

```
cd %USERPROFILE%
rmdir vimfiles /S /Q
git clone https://github.com/fronell/dotvim.git vimfiles
del _vimrc
mklink _vimrc vimfiles\vimrc
```

## ack

Required by plugin [Ack](https://github.com/mileszs/ack.vim.git)

The following instructions use the Perl binary that comes with [git for Windows](https://git-scm.com):

1. Download the single-file version of ack from https://beyondgrep.com/install/
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

## ctags

Required by the following plugins:

* [Ctrl-P](https://github.com/ctrlpvim/ctrlp.vim)
* [Tagbar](https://github.com/majutsushi/tagbar.git)

Setup instructions:

1. Download ctags for Windows from https://github.com/universal-ctags/ctags-win32/releases
2. Extract ctags.exe in a directory thats in %PATH%

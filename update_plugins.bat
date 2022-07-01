set TEMPDIR=temp
set BUNDLEDIR=bundle
set FTPLUGINDIR=ftplugin

REM We use a temp dir so we can exclude .git and .gitignore files when we
REM copy the clones to the bundle dir
rmdir /Q /S %TEMPDIR%
mkdir %TEMPDIR%

REM [==== ANSIBLE ====]
REM Ansible YAML: Ansible syntax checker that supports ansible-lint
REM git clone https://github.com/chase/vim-ansible-yaml.git %TEMPDIR%\ansible-yaml
REM Modify the filetype detection in the plugin so its used for all yaml files
REM sed -i "s/if fp.*/if fp =~ '.*\\\.y\\\(a\\\)\\\?ml$'/" %TEMPDIR%\ansible-yaml\ftdetect\ansible.vim
REM Will limit loading of ft=ansible only for yaml files under ansible/*
REM sed -i "s/if fp.*/if fp =~ 'ansible\/.*\\\.y\\\(a\\\)\\\?ml$'/" bundle\ansible-yaml\ftdetect\ansible.vim
REM "if fp =~ '/ansible/.*\.y\(a\)\?ml$' || fp =~ '/\(group\|host\)_vars/'

REM [==== COLORS ====]
REM Base16 Vim: An architecture for building themes using a base of sixteen colors
git clone https://github.com/chriskempson/base16-vim.git %TEMPDIR%\base16
REM code-dark: Dark color scheme for Vim heavily inspired by the look of the Dark+ scheme of Visual Studio Code
git clone https://github.com/tomasiser/vim-code-dark.git %TEMPDIR%\codedark
REM gotham: Gotham is a very dark vim colorscheme
git clone https://github.com/whatyouhide/vim-gotham %TEMPDIR%\gotham

REM [==== FORMATTING ====]
REM Tabular: Makes aligning text fun!
git clone https://github.com/godlygeek/tabular.git %TEMPDIR%\tabular

REM [==== GENERAL ====]
REM AutoComplPop: Fork that does not automatically select first item in popup menu
REM More here: https://bitbucket.org/ns9tks/vim-autocomplpop/issue/53/make-autoselection-of-the-first-item
git clone https://github.com/dirkwallenstein/vim-autocomplpop %TEMPDIR%\autocomplpop
REM Bbye: Deleting a buffer without closing the window
git clone https://github.com/moll/vim-bbye.git %TEMPDIR%\bbye
REM L9: Dependency for autocomplpop
git clone https://github.com/vim-scripts/L9.git %TEMPDIR%\L9
REM Repeat: Required to repeat actions with '.' in surround and commentary plugins
git clone https://github.com/tpope/vim-repeat.git %TEMPDIR%\repeat
REM Syntastic: Syntax checker
git clone https://github.com/scrooloose/syntastic.git %TEMPDIR%\syntastic
REM Tagbar: Displays tags ordered by scope
git clone https://github.com/majutsushi/tagbar.git %TEMPDIR%\tagbar
REM Tcomment: Commenting, removed it before but not sure why
git clone https://github.com/tomtom/tcomment_vim.git %TEMPDIR%\tcomment

REM [==== GENERAL CODING ====]
REM Better Whitespace: Highlights trailing whitespace and can remove them all
git clone https://github.com/ntpeters/vim-better-whitespace.git %TEMPDIR%\better-whitespace
REM Endwise: Automatically closes programming structures like adding an end to Ruby blocks
git clone https://github.com/tpope/vim-endwise.git %TEMPDIR%\endwise
REM Space Jam: This plugin automatically removes trailing whitespace for ruby, python, javascript, et al
REM It provides automated removal of whitespace while "Better Whitespace" provides highlighting
git clone https://github.com/rondale-sc/vim-spacejam.git %TEMPDIR%\spacejam
REM Surround: Makes handling surrounding structures like '' () [] fun!
git clone https://github.com/tpope/vim-surround.git %TEMPDIR%\surround

REM [==== GIT ====]
REM Fugitive: Git management in Vim
git clone https://github.com/tpope/vim-fugitive.git %TEMPDIR%\fugitive
REM gitgutter: Shows a git diff in the sign column
REM git clone https://github.com/airblade/vim-gitgutter.git %TEMPDIR%\gitgutter
REM gitv: Provides a commit browser for the repo or a specific file
REM git clone https://github.com/gregsexton/gitv.git %TEMPDIR%\gitv

REM [==== PYTHON ====]
REM jedi-vim: awesome Python autocompletion with VIM
REM git clone --recursive https://github.com/davidhalter/jedi-vim.git %TEMPDIR%\jedi-vim
REM cd %TEMPDIR%\jedi-vim
REM git submodule update --init
REM cd ..\..\
REM Python-mode: Can conflict with jedi-vim according to https://github.com/davidhalter/jedi-vim/issues/163
REM git clone https://github.com/python-mode/python-mode %TEMPDIR%\python-mode

REM [==== SEARCH ====]
REM ctrlsf: An ack/ag/pt powered search and view tool
git clone https://github.com/dyng/ctrlsf.vim.git %TEMPDIR%\ctrlsf
REM Ctrl-P: Fuzzy finder for files/tags/buffers
git clone https://github.com/ctrlpvim/ctrlp.vim %TEMPDIR%\ctrlp
REM The Platinum Searcher: Vim interface for pt
git clone https://github.com/nazo/pt.vim.git %TEMPDIR%\pt

REM Rebuild the bundle directory
rmdir /q /s %BUNDLEDIR%
mkdir %BUNDLEDIR%
robocopy temp\ bundle\ /mir /xd .git /xf .gitignore
rmdir /q /s %TEMPDIR%

REM Rebuild ftplugin for plugins that don't come in bundle form
rmdir /q /s %FTPLUGINDIR%
mkdir %FTPLUGINDIR%
cd %FTPLUGINDIR%
curl https://raw.githubusercontent.com/fronell/dotvim/master/ftplugin/python_fn.vim > python_vn.vim
cd ..

REM Will manually add changes for now
REM git add .

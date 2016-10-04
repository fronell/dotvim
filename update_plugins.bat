set TEMPDIR=temp
set BUNDLEDIR=bundle

mkdir %TEMPDIR%

REM Ack: Vim interface for ack
git clone https://github.com/mileszs/ack.vim.git %TEMPDIR%\ack 
REM AutoComplPop: Fork that does not automatically select first item in popup menu
REM More here: https://bitbucket.org/ns9tks/vim-autocomplpop/issue/53/make-autoselection-of-the-first-item
git clone https://github.com/dirkwallenstein/vim-autocomplpop %TEMPDIR%\autocomplpop 
REM Bbye: Deleting a buffer without closing the window
git clone https://github.com/moll/vim-bbye.git %TEMPDIR%\bbye 
REM Conque: Run bash / cmd / powershell within vim
git clone https://github.com/basepi/vim-conque %TEMPDIR%\conque
REM ctrlsf: An ack/ag/pt powered search and view tool
git clone https://github.com/dyng/ctrlsf.vim.git %TEMPDIR%\ctrlsf
REM Ctrl-P: Fuzzy finder for files/tags/buffers
git clone https://github.com/ctrlpvim/ctrlp.vim %TEMPDIR%\ctrlp 
REM Endwise: Automatically closes programming structures like adding an end to Ruby blocks
git clone https://github.com/tpope/vim-endwise.git %TEMPDIR%\endwise 
REM Fugitive: Git management in Vim
git clone https://github.com/tpope/vim-fugitive.git %TEMPDIR%\fugitive 
REM gitv: Provides a commit browser for the repo or a specific file
git clone https://github.com/gregsexton/gitv.git %TEMPDIR%\gitv 
REM jedi-vim: awesome Python autocompletion with VIM
git clone --recursive https://github.com/davidhalter/jedi-vim.git %TEMPDIR%\jedi-vim
REM L9: Dependency for autocomplpop
git clone https://github.com/vim-scripts/L9.git %TEMPDIR%\L9 
REM The Platinum Searcher: Vim interface for pt
git clone https://github.com/nazo/pt.vim.git %TEMPDIR%\pt
REM Repeat: Required to repeat actions with '.' in surround and commentary plugins
git clone https://github.com/tpope/vim-repeat.git %TEMPDIR%\repeat 
REM Ruby: Provides general support for Ruby like text-objects/motions/omnicompletion
git clone https://github.com/vim-ruby/vim-ruby.git %TEMPDIR%\ruby 
REM Ruby Text-Objects: Provides Ruby text-objects for selecting text in and around blocks
git clone https://github.com/nelstrom/vim-textobj-rubyblock.git %TEMPDIR%\textobj-rubyblock 
REM Space Jam: This plugin automatically removes trailing whitespace for ruby, python, javascript, et al
git clone https://github.com/rondale-sc/vim-spacejam.git %TEMPDIR%\spacejam 
REM Solarized: Colorscheme
git clone https://github.com/altercation/vim-colors-solarized.git %TEMPDIR%\colors-solarized 
REM Surround: Makes handling surrounding structures like '' () [] fun!
git clone https://github.com/tpope/vim-surround.git %TEMPDIR%\surround 
REM Syntastic: Syntax checker 
git clone https://github.com/scrooloose/syntastic.git %TEMPDIR%\syntastic 
REM Tabular: Makes aligning text fun!
git clone https://github.com/godlygeek/tabular.git %TEMPDIR%\tabular 
REM Tagbar: Displays tags ordered by scope
git clone https://github.com/majutsushi/tagbar.git %TEMPDIR%\tagbar 
REM Text-Objects: Dependency for vim-textobj-rubyblock
git clone https://github.com/kana/vim-textobj-user.git %TEMPDIR%\textobj-user 
REM Togglelist: Allows for a binding to toggle the quicklist and locationlist
git clone https://github.com/milkypostman/vim-togglelist.git %TEMPDIR%\togglelist 
REM Tmux-Navigator: Use vim key bindings to navigate vim windows and tmux windows
git clone https://github.com/christoomey/vim-tmux-navigator.git %TEMPDIR%\tmux-navigator 
REM vmifiler: File Explorer
git clone https://github.com/Shougo/vimfiler.vim.git %TEMPDIR%\vimfiler
REM Vimux: Create a 20% tall horizontal pane under your current tmux pane and execute a command in it without losing focus of vim
git clone https://github.com/benmills/vimux.git %TEMPDIR%\vimux 
REM unite: Dependency for vimfiler and unified search
git clone https://github.com/Shougo/unite.vim.git %TEMPDIR%\unite

robocopy temp\ bundle\ /mir /xd .git /xf .gitignore
rmdir /q /s %TEMPDIR%
git add .

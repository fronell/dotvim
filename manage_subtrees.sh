#!/bin/bash

# add: Set this for adding new repo's
# pull: Set this to update with changes from repo's
ACTION=$1

# Ctrl-P: Fuzzy finder for files/tags/buffers
git subtree $ACTION https://github.com/ctrlpvim/ctrlp.vim --prefix bundle/ctrlp master --squash
# NERD Tree: File browser
git subtree $ACTION https://github.com/scrooloose/nerdtree --prefix bundle/nerdtree master --squash
# Syntastic: Syntax checker 
git subtree $ACTION https://github.com/scrooloose/syntastic.git --prefix bundle/syntastic master --squash
# Tagbar: Displays tags ordered by scope
git subtree $ACTION https://github.com/majutsushi/tagbar.git --prefix bundle/tagbar master --squash
# Tablist: Displays tags ordered by position in file
## The Tablist on github is out of date, use vim.sourceforge.net instead
#mkdir bundle/taglist; cd bundle/taglist; curl http://vim.sourceforge.net/scripts/download_script.php?src_id=19574 | tar xzv
# Commentary: Makes commenting fun! (Inserts a space after comment)
git subtree $ACTION https://github.com/tpope/vim-commentary.git --prefix bundle/vim-commentary master --squash
# NERD Commenter: Makes commenting fun! (No space after comment)
git subtree $ACTION https://github.com/scrooloose/nerdcommenter.git --prefix bundle/nerdcommenter master --squash
# Endwise: Automatically closes programming structures like adding an end to Ruby blocks
git subtree $ACTION https://github.com/tpope/vim-endwise.git --prefix bundle/vim-endwise master --squash
# Fugitive: Git management in Vim
git subtree $ACTION https://github.com/tpope/vim-fugitive.git --prefix bundle/vim-fugitive master --squash
# gitv: Provides a commit browser for the repo or a specific file
git subtree $ACTION https://github.com/gregsexton/gitv.git --prefix bundle/gitv master --squash
# Solarized: Colorscheme
git subtree $ACTION https://github.com/altercation/vim-colors-solarized.git --prefix bundle/vim-colors-solarized master --squash
# Surround: Makes handling surrounding structures like '' () [] fun!
git subtree $ACTION https://github.com/tpope/vim-surround.git --prefix bundle/vim-surround master --squash
# Repeat: Required to repeat actions with '.' in surround and commentary plugins
git subtree $ACTION https://github.com/tpope/vim-repeat.git --prefix bundle/vim-repeat master --squash
# Tabular: Makes aligning text fun!
git subtree $ACTION https://github.com/godlygeek/tabular.git --prefix bundle/tabular master --squash
# AutoComplPop: Fork that does not automatically select first item in popup menu
# More here: https://bitbucket.org/ns9tks/vim-autocomplpop/issue/53/make-autoselection-of-the-first-item
git subtree $ACTION https://github.com/dirkwallenstein/vim-autocomplpop --prefix bundle/autocomplpop master --squash
# L9: Dependency for autocomplpop
git subtree $ACTION https://github.com/vim-scripts/L9.git --prefix bundle/L9 master --squash
# Togglelist: Allows for a binding to toggle the quicklist and locationlist
git subtree $ACTION https://github.com/milkypostman/vim-togglelist.git --prefix bundle/togglelist master --squash
# Space Jam: This plugin automatically removes trailing whitespace for ruby, python, javascript, et al
git subtree $ACTION https://github.com/rondale-sc/vim-spacejam.git --prefix bundle/spacejam master --squash
# Bbye: Deleting a buffer without closing the window
git subtree $ACTION https://github.com/moll/vim-bbye.git --prefix bundle/vim-bbye master --squash
# Ack: Vim interface for ack
git subtree $ACTION https://github.com/mileszs/ack.vim.git --prefix bundle/ack master --squash
# Ag: Vim interface for ag aka "The Silver Searcher"
git subtree $ACTION https://github.com/rking/ag.vim.git --prefix bundle/ag master --squash
# Tmux-Navigator: Use vim key bindings to navigate vim windows and tmux windows
git subtree $ACTION https://github.com/christoomey/vim-tmux-navigator.git --prefix bundle/tmux-navigator master --squash
# Vimux: Create a 20% tall horizontal pane under your current tmux pane and execute a command in it without losing focus of vim
git subtree $ACTION https://github.com/benmills/vimux.git --prefix bundle/vimux master --squash
# Conque: Use a shell within vim, super sweet!
## The Conque on github is out of date, use the Google Code page
#mkdir bundle/conque; cd bundle/conque; curl https://conque.googlecode.com/files/conque_2.3.tar.gz | tar xzv --strip-components=1
# Ruby: Provides general support for Ruby like text-objects/motions/omnicompletion
git subtree $ACTION https://github.com/vim-ruby/vim-ruby.git --prefix bundle/vim-ruby master --squash
# Ruby Text-Objects: Provides Ruby text-objects for selecting text in and around blocks
git subtree $ACTION https://github.com/nelstrom/vim-textobj-rubyblock.git --prefix bundle/vim-textobj-rubyblock master --squash
# Text-Objects: Dependency for vim-textobj-rubyblock
git subtree $ACTION https://github.com/kana/vim-textobj-user.git --prefix bundle/vim-textobj-user master --squash

# Chopping Block plugins
## Easy Tags: Creates tags on the fly when a file is saved in the active buffer
### Haven't used this yet
git subtree $ACTION https://github.com/xolox/vim-easytags --prefix bundle/vim-easytags master --squash
## Misc: Dependency for vim-easytags
git subtree $ACTION https://github.com/xolox/vim-misc --prefix bundle/vim-misc master --squash
## Buffer Surfer: Allows navigation throw buffer history like a browser
### Haven't used this yet
git subtree $ACTION https://github.com/ton/vim-bufsurf.git --prefix bundle/vim-bufsurf master --squash

# Heads Have Rolled Plugins
# Official autocomplpop version that automatically selects 1st item in popup menu
#git subtree $ACTION https://github.com/othree/vim-autocomplpop.git --prefix bundle/autocomplpop master --squash
# Is not very smooth on an ssh terminal over an RDP connection
#git subtree $ACTION https://github.com/terryma/vim-smooth-scroll.git --prefix bundle/vim-smooth-scroll master --squash
# I prefer Tabular for aligning text
#git subtree $ACTION https://github.com/vim-scripts/Align --prefix bundle/align master --squash
# neocomplcache conflicts with Omnicomplete for ruby
# Reference: https://github.com/Shougo/neocomplcache.vim/issues/417
#git subtree $ACTION https://github.com/Shougo/neocomplcache.vim --prefix bundle/vim-smooth-scroll master --squash
# I have never used this plugin since I installed it
#git subtree $ACTION https://github.com/jgdavey/tslime.vim.git --prefix bundle/tslime master --squash

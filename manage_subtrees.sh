#!/bin/bash

# add or pull
ACTION=$1

git subtree $ACTION https://github.com/kien/ctrlp.vim.git --prefix bundle/ctrlp master --squash
git subtree $ACTION https://github.com/scrooloose/nerdtree --prefix bundle/nerdtree master --squash
git subtree $ACTION https://github.com/scrooloose/syntastic.git --prefix bundle/syntastic master --squash
git subtree $ACTION https://github.com/majutsushi/tagbar.git --prefix bundle/tagbar master --squash
git subtree $ACTION https://github.com/tpope/vim-commentary.git --prefix bundle/vim-commentary master --squash
git subtree $ACTION https://github.com/xolox/vim-misc --prefix bundle/vim-misc master --squash
git subtree $ACTION https://github.com/xolox/vim-easytags --prefix bundle/vim-easytags master --squash
git subtree $ACTION https://github.com/tpope/vim-endwise.git --prefix bundle/vim-endwise master --squash
git subtree $ACTION https://github.com/tpope/vim-fugitive.git --prefix bundle/vim-fugitive master --squash
git subtree $ACTION https://github.com/vim-ruby/vim-ruby.git --prefix bundle/vim-ruby master --squash
git subtree $ACTION https://github.com/vim-scripts/Align --prefix bundle/align master --squash
git subtree $ACTION https://github.com/altercation/vim-colors-solarized.git --prefix bundle/vim-colors-solarized master --squash
git subtree $ACTION https://github.com/tpope/vim-surround.git --prefix bundle/vim-surround master --squash
git subtree $ACTION https://github.com/tpope/vim-repeat.git --prefix bundle/vim-repeat master --squash
git subtree $ACTION https://github.com/godlygeek/tabular.git --prefix bundle/tabular master --squash
# Official autocomplpop version that automatically selects 1st item in popup menu
#git subtree $ACTION https://github.com/othree/vim-autocomplpop.git --prefix bundle/autocomplpop master --squash
# Fork that does not automatically select first item in popup menu
# More here: https://bitbucket.org/ns9tks/vim-autocomplpop/issue/53/make-autoselection-of-the-first-item
git subtree $ACTION https://github.com/dirkwallenstein/vim-autocomplpop --prefix bundle/autocomplpop master --squash
# Dependency for autocomplpop
git subtree $ACTION https://github.com/vim-scripts/L9.git --prefix bundle/L9 master --squash
git subtree $ACTION https://github.com/scrooloose/nerdcommenter.git --prefix bundle/nerdcommenter master --squash
git subtree $ACTION https://github.com/milkypostman/vim-togglelist.git --prefix bundle/togglelist master --squash
git subtree $ACTION https://github.com/terryma/vim-smooth-scroll.git --prefix bundle/vim-smooth-scroll master --squash
git subtree $ACTION https://github.com/ton/vim-bufsurf.git --prefix bundle/vim-bufsurf master --squash

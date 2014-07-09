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
git subtree $ACTION https://github.com/othree/vim-autocomplpop.git --prefix bundle/autocomplpop master --squash
git subtree $ACTION https://github.com/vim-scripts/L9.git --prefix bundle/L9 master --squash

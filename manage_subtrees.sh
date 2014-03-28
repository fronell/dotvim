#!/bin/bash

# add or pull
ACTION=$1

git subtree $ACTION https://github.com/kien/ctrlp.vim.git --prefix bundle/ctrlp master --squash
git subtree $ACTION https://github.com/scrooloose/nerdtree --prefix bundle/nerdtree master --squash
git subtree $ACTION https://github.com/ervandew/supertab.git --prefix bundle/supertab master --squash
git subtree $ACTION https://github.com/scrooloose/syntastic.git --prefix bundle/syntastic master --squash
git subtree $ACTION https://github.com/godlygeek/tabular --prefix bundle/tabular master --squash
git subtree $ACTION https://github.com/majutsushi/tagbar.git --prefix bundle/tagbar master --squash
git subtree $ACTION https://github.com/tpope/vim-commentary.git --prefix bundle/vim-commentary master --squash
git subtree $ACTION https://github.com/xolox/vim-misc --prefix bundle/vim-misc master --squash
git subtree $ACTION https://github.com/xolox/vim-easytags --prefix bundle/vim-easytags master --squash
git subtree $ACTION https://github.com/tpope/vim-endwise.git --prefix bundle/vim-endwise master --squash
git subtree $ACTION https://github.com/tpope/vim-fugitive.git --prefix bundle/vim-fugitive master --squash
git subtree $ACTION https://github.com/plasticboy/vim-markdown.git --prefix bundle/vim-markdown master --squash
git subtree $ACTION https://github.com/vim-ruby/vim-ruby.git --prefix bundle/vim-ruby master --squash
git subtree $ACTION https://github.com/vim-scripts/Align --prefix bundle/align master --squash
# The autocompletion was too much.  I don't need a prompt on every word
#git subtree $ACTION https://github.com/Shougo/neocomplcache.vim.git --prefix bundle/neocomplcache master --squash
git subtree $ACTION https://github.com/vim-scripts/AutoComplPop --prefix bundle/AutoComplPop master --squash

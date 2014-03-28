  cd %UserProfile%
  rmdir vimfiles /S /Q
  git clone https://github.com/fronell/dotvim.git vimfiles
  del _vimrc
  mklink _vimrc vimfiles\vimrc

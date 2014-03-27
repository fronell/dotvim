"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    " Break vi compatbility, should be set first

" Enable pathogen
call pathogen#infect()

filetype plugin indent on

" Leader setings (needs to be above any other use of <Leader>)
let mapleader = ","

" Leave this disabled because it prevents highlighting text to copy 
" to the clipboard in PuTTY -- csworn 2011.08.03
"set mouse=a		    " Enable mouse usage (all modes) in terminals

" Have to place up here so the ruler displays on gVim in
" Windows -- csworn 2011.08.03
set ruler


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax hl
syntax on

if has("gui_running")
  colorscheme desert
  highlight Normal guibg=black guifg=white
  set nu
  set cursorline
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=l  "remove left-hand scroll bar
else
  colorscheme pablo
  set background=dark
  set nu
endif

set encoding=utf8
try
    lang en_US
catch
endtry

set ffs=unix,dos,mac "Default file types


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set expandtab       " Use spaces instead of tabs
set smarttab
" 1 tab == 2 spaces
set shiftwidth=2
set tabstop=2

set lbr "Prevents word wrap from breaking words in the middle
set tw=500 "Sets text width

set si "Smart indent
set wrap "Wrap lines
set linebreak "Wrap lines at convenient points

" Disable auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set guitablabel=%t

" This needs to be at the bottom to because it gets overrided by something
" above -- csworn 2011.08.03
" a - terse messages (like [+] instead of [Modified]
" t - truncate file names
" I - no intro message when starting vim fileless
set shortmess=It

" Set 7 lines to the curors - when moving vertical..
set so=7

set wildmode=longest,list,full
set wildmenu "Turn on WiLd menu
" Ignore these files during tab completion
" Common
set wildignore+=.git,.hg,.svn,*.swp,*.tmp,*.zip,*.pdf
" OSX/Linux
set wildignore+=.DS_Store,*.so                      
" Windows
set wildignore+=*.exe,*.dll,*.doc*,*.xls*            

" Set backspace config
set backspace=eol,start,indent

set ignorecase "Ignore case when searching
set smartcase

set hlsearch "Highlight search things

set incsearch "Make search act like search in modern browsers
set nolazyredraw "Don't redraw while executing macros 

set magic "Set magic on, for regular expressions

set showmatch "Show matching bracets when text indicator is over them
set mat=2 "How many tenths of a second to blink

"Folding
"set foldmethod=syntax
"set foldmethod=indent   "fold based on indent
"set foldnestmax=3       "deepest fold is 3 levels
"set nofoldenable        "dont fold by default
"set foldlevel=1
"set foldcolumn=1        "set the # of fold column indicators

" remember lotsa fun stuff
set viminfo='1000,f1,/50,:50,<50,n~/.viminfo

" Have to place down here so the ruler displays on
" Unix -- csworn 2011.08.03
set ruler "Always show current position

" Prevent ~ swap swp backup files from getting written
" Preferable to set updatecount=0 because you still 
" get a .swp that lets you know the file is already
" opened
set nobackup

" Reference this page for status line syntax:
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html 
set laststatus=2                         " always show the status bar
set statusline=[%n]\                     " buffer number
set statusline+=[%{&ff}]\                " file format
set statusline+=%F\ %m\ %r               " filename, modified, readonly
set statusline+=%{&paste?'[paste]':''}\  " Shows if paste mode is enabld
set statusline+=%{fugitive#statusline()} " fugitive
set statusline+=%=%5l,%v\                " current line,current row
set statusline+=%L[%p%%]                 " total lines[% position]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" Toggle 80th column line
set colorcolumn=80


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" More window mappings
" Close current window
map <Leader>cc <C-W>c
" Close top window
map <Leader>ck <C-W>k<C-W>c
" Close bottom window
map <Leader>cj <C-W>j<C-W>c
" Close right window
map <Leader>ch <C-W>h<C-W>c
" Close left window
map <Leader>cl <C-W>l<C-W>c

" Toggle line numbers
map <silent> <Leader>N :setlocal number!<CR>

" Toggle word wrap
map <silent> <Leader>W :setlocal wrap!<CR>

" Disable color column
map <silent> <Leader>l :setlocal colorcolumn=80<CR>
map <silent> <Leader>ll :setlocal colorcolumn=0<CR>

" prevents pasted text from getting auto-indented
" but it breaks auto indent and other features when enabled
map <Leader>P :setlocal paste!<CR>

map <leader>fi :setlocal foldmethod=indent<CR>
map <leader>fs :setlocal foldmethod=syntax<CR>
map <leader>N :NERDTreeToggle<CR>
map <leader>t :TagbarToggle<CR>
map <leader>T :TlistToggle<CR>

" ctrl-p mappings
map <leader>pb :CtrlPBuffer<CR>
map <leader>pm :CtrlPMRU<CR>
map <leader>pt :CtrlPTag<CR>
" Search Files
map <leader>pf :CtrlP<CR>
" Search everything
map <leader>pp :CtrlPMixed<CR>

" Use tab for omnicompletion 
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"
" You may also try the context value, which lets SuperTab decide which 
" completion mode to use and should play well with OmniCompletion:
let g:SuperTabDefaultCompletionType = "context"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SPECIFIC SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable tag mode in CtrlP
let g:ctrlp_extensions = ['tag']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PYTHON SPECIFIC SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()

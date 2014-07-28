""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"=> General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible    "Break vi compatbility, should be set first

" Enable pathogen
call pathogen#infect()

filetype plugin indent on

" Leave this disabled because it prevents highlighting text to copy
" to the clipboard in PuTTY -- csworn 2011.08.03
"set mouse=a		    "Enable mouse usage (all modes) in terminals

" Have to place up here so the ruler displays on gVim in
" Windows -- csworn 2011.08.03
set ruler

" Use the system clipboard by default (does not work on vim inside tmux!)
"set clipboard=unnamed,unnamedplus


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax enable "Enable syntax highlighting
syntax on

if has("gui_running")
  colorscheme desert
  highlight Normal guibg=black guifg=white
  set guioptions-=m  "remove menu bar
  set guioptions-=T  "remove toolbar
  set guioptions-=r  "remove right-hand scroll bar
  set guioptions-=l  "remove left-hand scroll bar
else
  colorscheme solarized
  "colorscheme pablo
  set background=dark
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
set expandtab    "Use spaces instead of tabs
set smarttab
set shiftwidth=2 "1 tab == 2 spaces
set tabstop=2

set lbr    "Prevents word wrap from breaking words in the middle
set tw=500 "Sets text width

set si        "Smart indent
set wrap      "Wrap lines
set linebreak "Wrap lines at convenient points

" Disable auto-comment
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" What to represent hidden characters as
set listchars=tab:▸\ ,eol:¬


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

set nu "Turn on line numbering

" Set backspace config
set backspace=eol,start,indent

" Searching
set hlsearch     "Highlight search things
set incsearch    "Make search act like search in modern browsers
set ignorecase   "Ignore case when searching
set smartcase    "Overrides ignore case if search pattern has upper case chars
set magic        "Set magic on, for regular expressions

set showmatch    "Show matching bracets when text indicator is over them
set mat=2        "How many tenths of a second to blink

" Folding
" Found syntax produced better results than indent but performance would suck
" when dealing large chef roles because of all the nested hashes
"set foldmethod=syntax
"set foldmethod=indent
" Going to have folding as something I enable manually for now
set nofoldenable        "dont fold by default when opening files

" remember lotsa fun stuff
set viminfo='1000,f1,/50,:50,<50,n~/.viminfo

" Same as default except that I remove the 'u' option
set complete=.,w,b,t

" Toggle 80th column line
set colorcolumn=80

" Keep search matches in the middle of the window.
nnoremap n nzzzv
nnoremap N Nzzzv

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=5

" How splits should open by default
set splitbelow
set splitright


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => STATUS LINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reference this page for status line syntax:
" http://got-ravings.blogspot.com/2008/08/vim-pr0n-making-statuslines-that-own.html
set laststatus=2                         "always show the status bar
set statusline=[%n]\                     "buffer number
set statusline+=[%{&ff}]\                "file format
set statusline+=%F\ %m\ %r               "filename, modified, readonly
set statusline+=%{&paste?'[paste]':''}\  "Shows if paste mode is enabld
set statusline+=%{fugitive#statusline()} "fugitive
set statusline+=%=%5l,%v\                "current line,current row
set statusline+=%L[%p%%]                 "total lines[% position]
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PERFORMANCE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set lazyredraw
set nocursorcolumn

" Vim should enable ttyfast if xterm is used by this may not happen when
" tmux is used depending on the term used by tmux.  We'll turn it on by default
set ttyfast

" nocursorline is recommended but I like it so I'll keep it here just as a
" reminder to turn it off if vim gets slow
set cursorline

" Possible fix if editing ruby files becomes slow
" Reference: http://stackoverflow.com/questions/16902317/vim-slow-with-ruby-syntax-highlighting
"set re=1

" Possible fix if editing large xml files becomes slow
"set synmaxcol=200

" Possible fix for syntax highlighting slowing things down
" Reference: http://vim.wikia.com/wiki/Fix_syntax_highlighting
"syntax sync minlines=200


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Smart way to move btw. windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Cycle through autocomplete options using tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<C-g>u\<Tab>"

" A much easier way of pressing Escape in insert mode
inoremap kj <esc>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => LEADER MAPPINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Leader setings (needs to be above any other use of <Leader>)
let mapleader = ","

" b
"" Buffer navigation
"" Toggle between last used buffers
"" Notice how its the ^ and not 6
map <Leader>bt <C-^>
map <Leader>bb :BufSurfBack<CR>

" c
"" Window mappings
""" Close current window
map <Leader>cq <C-W>c
""" Close top window
map <Leader>ck <C-W>k<C-W>c
""" Close bottom window
map <Leader>cj <C-W>j<C-W>c
""" Close right window
map <Leader>ch <C-W>h<C-W>c
""" Close left window
map <Leader>cl <C-W>l<C-W>c
"" Conque
""" Open conque in a new split running bash in normal mode
map <Leader>ct :ConqueTermSplit bash<CR><C-e>
""" Reopen conque buffer in a split in normal mode
map <Leader>cv :sp <BAR> b bash<CR><C-e>

" d
"" Diffing
map <Leader>do :windo diffthis<CR>
map <leader>dc :diffoff!<CR>
map <leader>du :diffupdate<CR>

" f
map <leader>fi :setlocal foldmethod=indent<CR>
map <leader>fs :setlocal foldmethod=syntax<CR>

" l
"" Disable color column
"" I don't use these and <leader>l is mapped to Location List for now
""map <silent> <Leader>l :setlocal colorcolumn=80<CR>
""map <silent> <Leader>ll :setlocal colorcolumn=0<CR>
"" Toggle list hidden characters
map <Leader>lc :set list!<CR>

" m
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm

" n
map <leader>n :NERDTreeToggle<CR>

" N
"" Toggle line numbers
map <Leader>N :setlocal number!<CR>

" p
"" ctrl-p mappings
map <leader>pb :CtrlPBuffer<CR>
map <leader>pm :CtrlPMRU<CR>
map <leader>pt :CtrlPTag<CR>
"" Search Files
map <leader>pf :CtrlP<CR>
"" Search everything
map <leader>pp :CtrlPMixed<CR>

" P
"" prevents pasted text from getting auto-indented
"" but it breaks auto indent and other features when enabled
map <Leader>P :setlocal paste!<CR>

" q
"" Not needed because of toggle implemented by togglelist plugin
""map <leader>qo :copen<CR>
""map <leader>qc :cclose<CR>

" r
map <leader>rr :w<CR>:!ruby %<CR>
"" Reload vimrc
map <leader>rv :source $MYVIMRC<CR>

" s
nnoremap <leader>ss :w<cr>
"" Save while in insert mode
inoremap <leader>ss <C-c>:w<cr>

" t
map <leader>tc :tabc<CR>
map <leader>te :tabe<CR>
map <leader>tf :tabf<CR>
map <leader>tl :tabl<CR>
map <leader>tn :tabn<CR>
map <leader>tp :tabp<CR>
map <leader>tt :TagbarToggle<CR>

" T
map <leader>TT :TlistToggle<CR>

" v
"" Vimux mappings
map <Leader>vr :call VimuxRunCommand("clear; ls -l " . bufname("%"))<CR>
map <Leader>vp :VimuxPromptCommand<CR>
map <Leader>vl :VimuxRunLastCommand<CR>
map <Leader>vi :VimuxInspectRunner<CR>
map <Leader>vq :VimuxCloseRunner<CR>
map <Leader>vx :VimuxInterruptRunner<CR>
map <Leader>vz :call VimuxZoomRunner()<CR>

" W
"" Toggle word wrap
map <silent> <Leader>W :setlocal wrap!<CR>

" ]
"" Quickfix list
map ]q :cnext<CR>
map ]Q :clast<CR>

" [
"" Quickfix list
map [q :cprev<CR>
map [Q :cfirst<CR>
map <Leader>bf :BufSurfForward<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => MISC
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Allow backgrounding buffers without writing them, and remember marks/undo
" for backgrounded buffers
set hidden

" Prevent ~ swap swp backup files from getting written
" Preferable to set updatecount=0 because you still
" get a .swp that lets you know the file is already
" opened
set nobackup


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => PLUGIN SPECIFIC SETTINGS
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CtrlP
"" Enable tag mode in CtrlP
let g:ctrlp_extensions = ['tag']

" Taglist
"" Place taglist on the right side
let Tlist_Use_Right_Window = 1

" AutoComplPop
let g:acp_behaviorKeywordLength = 3

" NERDTree
let NERDTreeWinSize = 50

" Syntax
" Syntax highlighting can really slow things down if a large file is open
let g:syntastic_enable_highlighting=0

" required for vim-textobj-rubyblock
runtime macros/matchit.vim

" Ack
let g:ack_autofold_results = 1
let g:ackpreview = 1
let g:ack_autoclose = 1
let g:ackhighlight = 1

" Ag
let g:aghighlight=1

" Conque
"" Does not work, pass <C-e> in mappings as a workaround to open in normal mode
let g:ConqueTerm_InsertOnEnter = 0
let g:ConqueTerm_FastMode = 1
let g:ConqueTerm_EscKey = '<C-e>'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => ALLOW FOR LOCAL OVERRIDES
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

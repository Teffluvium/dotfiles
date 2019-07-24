"------------------------------------------------------------------------------
" Standard stuff.
"------------------------------------------------------------------------------

set nocompatible        " Disable vi compatibility.
set nobackup            " Do not keep a backup file.
set history=500         " Number of lines of command line history.
set undolevels=500      " Number of undo levels.
set textwidth=80        " Don't wrap words by default.
set linebreak           " Don't wrap words by default.
set shiftwidth=4        " Set tabs to 4 spaces.
set expandtab           " Insert spaces instead of tabs.
set showcmd             " Show (partial) command in status line.
set showmatch           " Show matching brackets.
set showmode            " Show current mode.
set ruler               " Show the line and column numbers of the cursor.
set ignorecase          " Case insensitive matching.
set incsearch           " Incremental search.
" set noautoindent        " I indent my code myself.
" set nocindent           " I indent my code myself.
set scrolloff=5         " Keep a context when scrolling.
"set digraph             " Required for e.g. German umlauts.
set noerrorbells        " No beeps.
" set nomodeline          " Disable modeline.
set modeline            " Enable modeline.
set esckeys             " Cursor keys in insert mode.
set gdefault            " Use 'g' flag by default with :s/foo/bar/.
set magic               " Use 'magic' patterns (extended regular expressions).
set tabstop=4           " Number of spaces <tab> counts for.
set ttyscroll=0         " Turn off scrolling (this is faster).
set ttyfast             " We have a fast terminal connection.
set hlsearch            " Highlight search matches.
" set encoding=utf-8      " Set default encoding to UTF-8.
set showbreak=+         " Show a '+' if a line is longer than the screen.
" set laststatus=2        " When to show a statusline.
" set autowrite           " Automatically save before :next, :make etc.

set nostartofline       " Do not jump to first character with page commands,
                        " i.e., keep the cursor in the current column.
set viminfo='20,\"50    " Read/write a .viminfo file, don't store more than
                        " 50 lines of registers.
set number              " Turn on line numbering

" Allow backspacing over everything in insert mode.
set backspace=indent,eol,start

" Tell vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
set listchars=tab:>-,trail:·,eol:$

"  Path/file expansion in colon-mode.
set wildmode=list:longest
set wildchar=<TAB>

" Suffixes that get lower priority when doing tab completion for filenames.
" These are files we are not likey to want edit or read.
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc

" Enable syntax-highlighting.
if has("syntax")
    syntax on
endif

" Define the colorscheme
colorscheme elflord

" Use brighter colors if your xterm has a dark background.
"if &term =~ "xterm"
set background=dark
"endif

" hi Search
hi Search term=bold ctermbg=cyan ctermfg=yellow cterm=bold gui=bold guibg=cyan guifg=yellow

" hi DiffText term=reverse cterm=bold ctermbg=10 gui=bold guibg=Green
hi DiffChange term=bold ctermbg=green cterm=bold gui=bold guibg=Brown

"""" Force Cygwin to display a block cursor in Vim
"""let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
"""let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"

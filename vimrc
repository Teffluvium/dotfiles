" This file has been modified for my own personal use.  I got it from URL
" posted below.

"------------------------------------------------------------------------------
" File: $HOME/.vimrc
" Author: Uwe Hermann <uwe@hermann-uwe.de>
" URL: http://www.hermann-uwe.de/files/vimrc
" $Id: .vimrc 331 2005-09-07 21:09:32Z uh1763 $
"------------------------------------------------------------------------------

version 6.3


" Source some standard settings
if filereadable(expand("~/.vim/local/standard"))
   source ~/.vim/local/standard
endif

" Source a list of abbreviations
if filereadable(expand("~/.vim/local/abbreviations"))
   source ~/.vim/local/abbreviations
endif

" Source a remapping of the function keys
if filereadable(expand("~/.vim/local/funcKeys"))
   source ~/.vim/local/funcKeys
endif

" Source a list of common typos to auto correct
if filereadable(expand("~/.vim/local/typos"))
   source ~/.vim/local/typos
endif

" Source configuration for different file types
if filereadable(expand("~/.vim/local/fileType"))
   source ~/.vim/local/fileType
endif


"------------------------------------------------------------------------------
" Local settings.
"------------------------------------------------------------------------------

" Source a local configuration file if available.
if filereadable(expand("~/.vim/local/local"))
  source ~/.vim/local/local
endif

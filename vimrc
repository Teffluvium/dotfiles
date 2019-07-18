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
if filereadable(expand("~/.vimrc.standard"))
   source ~/.vimrc.standard
endif

" Source a list of abbreviations
if filereadable(expand("~/.vimrc.abbreviations"))
   source ~/.vimrc.abbreviations
endif

" Source a remapping of the function keys
if filereadable(expand("~/.vimrc.funcKeys"))
   source ~/.vimrc.funcKeys
endif

" Source a list of common typos to auto correct
if filereadable(expand("~/.vimrc.typos"))
   source ~/.vimrc.typos
endif

" Source configuration for different file types
if filereadable(expand("~/.vimrc.fileType"))
   source ~/.vimrc.fileType
endif


"------------------------------------------------------------------------------
" Local settings.
"------------------------------------------------------------------------------

" Source a local configuration file if available.
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

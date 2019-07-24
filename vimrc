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
if filereadable(expand("~/.vim/local/standard.vim"))
   source ~/.vim/local/standard.vim
endif

" Source a list of abbreviations
if filereadable(expand("~/.vim/local/abbreviations.vim"))
   source ~/.vim/local/abbreviations.vim
endif

" Source a remapping of the function keys
if filereadable(expand("~/.vim/local/funcKeys.vim"))
   source ~/.vim/local/funcKeys.vim
endif

" Source a list of common typos to auto correct
if filereadable(expand("~/.vim/local/typos.vim"))
   source ~/.vim/local/typos.vim
endif

" Source configuration for different file types
if filereadable(expand("~/.vim/local/fileType.vim"))
   source ~/.vim/local/fileType.vim
endif

" Source configuration for different file types
if filereadable(expand("~/.vim/local/vundle.vim"))
   source ~/.vim/local/vundle.vim
endif


"------------------------------------------------------------------------------
" Local settings.
"------------------------------------------------------------------------------

" Source a local configuration file if available.
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif

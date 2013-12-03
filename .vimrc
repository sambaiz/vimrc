if $SHELL =~ 'bin/fish'
  set shell=/bin/sh
endif

if has('vim_starting')
  set nocompatible
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'Shougo/vimproc', {
  \ 'build' : {
    \ 'windows' : 'make -f make_mingw64.mak',
    \ 'mac' : 'make -f make_mac.mak',
    \ 'unix' : 'make -f make_unix.mak',
  \ },
  \ }

NeoBundle 'tpope/vim-rails'    

"status bar
NeoBundle 'itchyny/lightline.vim' 
set laststatus=2


filetype plugin indent on
NeoBundleCheck

syntax on

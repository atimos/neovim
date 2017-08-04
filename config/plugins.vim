set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('~/.local/share/dein/repos/github.com/Shougo/dein.vim')

  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('scrooloose/syntastic')
  call dein#add('rust-lang/rust.vim')
  call dein#add('Raimondi/YAIFA')
  call dein#add('justinmk/vim-sneak')
  call dein#add('tpope/vim-fugitive')
  call dein#add('sjl/gundo.vim')

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif


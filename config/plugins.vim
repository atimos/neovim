set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('~/.local/share/dein')
  call dein#begin('~/.local/share/dein')

  call dein#add('Shougo/dein.vim')
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/junkfile.vim')
  call dein#add('Shougo/deoplete.nvim')

  call dein#add('tpope/vim-rsi')
  call dein#add('tpope/vim-vinegar')
  call dein#add('tpope/vim-obsession')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-eunuch')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-sensible')

  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')

  call dein#add('Yggdroot/indentLine')
  call dein#add('tomtom/tcomment_vim')
  call dein#add('chriskempson/vim-tomorrow-theme')
  call dein#add('scrooloose/syntastic')
  call dein#add('rust-lang/rust.vim')
  call dein#add('justinmk/vim-sneak')
  call dein#add('sjl/gundo.vim')

  call dein#add('baverman/vial')
  call dein#add('baverman/vial-http')

  call dein#add('mhinz/vim-signify')

  call dein#add('lvht/phpcd.vim', {'build': 'composer install' })
  call dein#add('autozimu/LanguageClient-neovim', {'rev': 'next', 'build': 'bash install.sh'})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

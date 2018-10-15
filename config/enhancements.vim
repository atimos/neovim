set ignorecase
set smartcase

set splitbelow

let g:sneak#streak = 1
let g:sneak#label = 1

set hlsearch
let g:incsearch#auto_nohlsearch = 1

let g:deoplete#enable_at_startup = 1

let g:signify_realtime = 1

"" Change grep command to use ripgrep
call denite#custom#var('grep', 'command', ['rg'])
call denite#custom#var('grep', 'default_opts', ['--vimgrep', '--no-heading'])
call denite#custom#var('grep', 'recursive_opts', [])
call denite#custom#var('grep', 'pattern_opt', ['--regexp'])
call denite#custom#var('grep', 'separator', ['--'])
call denite#custom#var('grep', 'final_opts', [])

"" Change recursive search to use ripgrep
call denite#custom#var('file_rec', 'command', ['rg', '--files'])

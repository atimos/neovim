let mapleader=" "

nmap s cl
nmap S cc
xmap s c
xmap S cc
omap s cl
omap S cc

nmap f <Plug>Sneak_s
nmap F <Plug>Sneak_S
xmap f <Plug>Sneak_s
xmap F <Plug>Sneak_S
omap f <Plug>Sneak_s
omap F <Plug>Sneak_S

nmap t <Plug>Sneak_t
nmap T <Plug>Sneak_T
xmap t <Plug>Sneak_t
xmap T <Plug>Sneak_T
omap t <Plug>Sneak_t
omap T <Plug>Sneak_T

noremap <C-J> <C-W>j<C-W>_
noremap <C-K> <C-W>k<C-W>_
noremap <C-L> <C-W>l
noremap <C-H> <C-W>h
inoremap jj <Esc>
inoremap <esc> <NOP>

cmap w!! w !sudo tee > /dev/null %

nnoremap <leader>h :GundoToggle<CR>

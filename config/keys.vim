let mapleader=" "

nmap s cl
nmap S cc
xmap s c
xmap S cc
omap s cl
omap S cc

nmap z <Plug>Sneak_s
nmap Z <Plug>Sneak_S
xmap z <Plug>Sneak_s
xmap Z <Plug>Sneak_S
omap z <Plug>Sneak_s
omap Z <Plug>Sneak_S

nmap f <Plug>Sneak_f
nmap F <Plug>Sneak_F
xmap f <Plug>Sneak_f
xmap F <Plug>Sneak_F
omap f <Plug>Sneak_f
omap F <Plug>Sneak_F

noremap <C-S-J> <C-W>j<C-W>_
noremap <C-S-K> <C-W>k<C-W>_
noremap <C-S-L> <C-W>l
noremap <C-S-H> <C-W>h
inoremap jj <Esc>
tnoremap jj <C-\><C-n>
inoremap <esc> <NOP>

noremap <leader>q :Vexplore<CR>

nnoremap <leader>q :Denite buffer file -buffer-name=file -mode=normal -vertical-preview<CR>
nnoremap <leader>w :Denite file/rec -buffer-name=file -mode=insert -vertical-preview<CR>
nnoremap <leader>e :Denite grep -buffer-name=file -mode=normal -vertical-preview<CR>
nnoremap <leader>r :Denite line -buffer-name=file -mode=insert -vertical-preview<CR>

nnoremap <leader>a :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>s :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader>d :call LanguageClient_contextMenu()<CR>

nnoremap <leader>y :Denite register -buffer-name=register -mode=normal<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>i :Denite command_history -buffer-name=command_history -mode=normal<CR>
nnoremap <leader>p :Denite neoyank -buffer-name=yankhistory -mode=normal<CR>

nnoremap <leader>z :Bwipeout<CR>
nnoremap <leader>x :only<CR>
nnoremap <leader>c :close<CR>

nnoremap <leader>, :Denite command -buffer-name=command -mode=insert<CR>
nnoremap <leader>f :IndentLinesToggle<CR>

nnoremap <leader>n :Denite junkfile -buffer-name=junkfile -mode=normal<CR>
nnoremap <leader>m :Denite junkfile:new -buffer-name=junkfile -mode=insert<CR>

nmap <leader>j <plug>(signify-next-hunk)
nmap <leader>k <plug>(signify-prev-hunk)

map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

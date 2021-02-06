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
inoremap <C-q> <Esc>
tnoremap jj <C-\><C-n>


nnoremap <leader>q :Denite buffer file -buffer-name=file -vertical-preview<CR>
nnoremap <leader>w :Denite file/rec -buffer-name=file -vertical-preview<CR>
nnoremap <leader>e :Denite grep -buffer-name=file -vertical-preview<CR>
nnoremap <leader>r :Denite line -buffer-name=file -vertical-preview<CR>
nnoremap <leader>t :Vexplore<CR>

nnoremap <leader>a :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>s :call LanguageClient_contextMenu()<CR>
nnoremap <leader>d :call LanguageClient_textDocument_hover()<CR>
nnoremap <leader>f :call LanguageClient_textDocument_formatting()<CR>

nnoremap <leader>y :Denite register -buffer-name=register<CR>
nnoremap <leader>u :GundoToggle<CR>
nnoremap <leader>i :Denite command_history -buffer-name=command_history<CR>
nnoremap <leader>p :Denite neoyank -buffer-name=yankhistory<CR>

nnoremap <leader>z :Bwipeout<CR>
nnoremap <leader>x :only<CR>
nnoremap <leader>c :close<CR>

nnoremap <leader>, :Denite command -buffer-name=command<CR>

nnoremap <leader>n :Denite junkfile -buffer-name=junkfile<CR>
nnoremap <leader>m :Denite junkfile:new -buffer-name=junkfile<CR>

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

" Define mappings
autocmd FileType denite call s:denite_my_settings()
function! s:denite_my_settings() abort
  nnoremap <silent><buffer><expr> <CR>
  \ denite#do_map('do_action')
  nnoremap <silent><buffer><expr> d
  \ denite#do_map('do_action', 'delete')
  nnoremap <silent><buffer><expr> p
  \ denite#do_map('do_action', 'preview')
  nnoremap <silent><buffer><expr> q
  \ denite#do_map('quit')
  nnoremap <silent><buffer><expr> i
  \ denite#do_map('open_filter_buffer')
  nnoremap <silent><buffer><expr> <Space>
  \ denite#do_map('toggle_select').'j'
endfunction

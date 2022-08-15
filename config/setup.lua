local lsp_flags = {
  -- This is the default in Nvim 0.7+
  debounce_text_changes = 150,
}

local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  local bufopts = { noremap=true, silent=true, buffer=bufnr }
  vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
  vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, bufopts)
  vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
  vim.keymap.set('n', '<leader>wl', function()
    print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
  end, bufopts)
  vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, bufopts)
  vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, bufopts)
  vim.keymap.set('n', '<leader>s', vim.lsp.buf.code_action, bufopts)
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
  vim.keymap.set('n', '<leader>f', vim.lsp.buf.formatting, bufopts)
  vim.keymap.set('n', '<leader>j', vim.diagnostic.goto_next, bufopts)
  vim.keymap.set('n', '<leader>k', vim.diagnostic.goto_prev, bufopts)
end


require('lspconfig')['rust_analyzer'].setup{
    cmd = { 'rustup', 'run', 'nightly', 'rust-analyzer' },
    on_attach = on_attach,
    flags = lsp_flags,
    settings = {
      ["rust-analyzer"] = {}
    }
}

vim.opt.wrap = false
vim.opt.termguicolors = true
vim.opt.hlsearch = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.hidden = true
vim.opt.list = true
vim.opt.signcolumn = "yes"
vim.opt.guicursor = "n:blinkon1"
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.splitbelow = true

vim.g.indentLine_char = '┆'
vim.g.indentLine_enabled = 0
vim.g["airline#extensions#tabline#enabled"] = 1
vim.g.signify_sign_show_text = 0
vim.g.gundo_preview_bottom = 1

vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25
vim.g.netrw_browse_split = 4

vim.g["incsearch#auto_nohlsearch"] = 1
vim.g["signify_realtime"] = 1

vim.g["sneak#streak"] = 1
vim.g["sneak#label"] = 1

vim.cmd [[
colorscheme base16-tomorrow-night

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

nnoremap <leader>w :Files<CR>
nnoremap <leader>q :Rg<CR>
nnoremap <leader>e :Buffers<CR>
nnoremap <leader>r :Lines<CR>

nnoremap <leader>z :Bwipeout<CR>
nnoremap <leader>x :only<CR>
nnoremap <leader>c :close<CR>
nnoremap <leader>h :bN<CR>
nnoremap <leader>l :bn<CR>

" map /  <Plug>(incsearch-forward)
" map ?  <Plug>(incsearch-backward)
" map g/ <Plug>(incsearch-stay)
" map n  <Plug>(incsearch-nohl-n)
" map N  <Plug>(incsearch-nohl-N)
" map *  <Plug>(incsearch-nohl-*)
" map #  <Plug>(incsearch-nohl-#)
" map g* <Plug>(incsearch-nohl-g*)
" map g# <Plug>(incsearch-nohl-g#)
]]

local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
    packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
    use 'neovim/nvim-lspconfig'
    use 'tpope/vim-fugitive'
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'
    use 'chriskempson/base16-vim'
    use 'rust-lang/rust.vim'
    use 'justinmk/vim-sneak'
    use 'mhinz/vim-signify'
    use 'junegunn/fzf.vim'
    use 'junegunn/fzf'

    if packer_bootstrap then
        require('packer').sync()
    end
end)
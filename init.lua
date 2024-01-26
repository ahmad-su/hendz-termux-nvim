local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- custom shada config
vim.o.shada = [[!,'300,<50,s10,h]]
vim.o.shadafile = "/data/data/com.termux/files/home/.config/nvim/shada/main.shada"

vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({
	'morhetz/gruvbox',
	'itchyny/lightline.vim',
	'jiangmiao/auto-pairs',
	'sheerun/vim-polyglot',
	'junegunn/fzf',
	'preservim/nerdtree',
	'ryanoasis/vim-devicons',
	'airblade/vim-gitgutter',
	'Yggdroot/indentLine'
})

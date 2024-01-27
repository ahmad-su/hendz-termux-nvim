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

require("lazy").setup("plugins")
require("mapping")

-- Colorscheme
vim.cmd([[colorscheme gruvbox]])
-- Pluginpath
vim.cmd([[ set runtimepath+=~/.config/nvim/plugins ]])

-- Common setup
vim.cmd([[
  set clipboard=unnamedplus
  set encoding=utf-8
  set fileencoding=utf-8
  "scriptencoding utf-8
  syntax enable

  set noswapfile
  set wrap

  " Indentation
  set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
  set smarttab
  set autoindent
  set backspace=indent,eol,start

  " Make tilde of the end of buffer disappeared
  set fillchars=eob:\ ,vert:▎

  " Highlight the cursor
  set cursorline

  " Cursor type underlined
  set guicursor=n-v-c-sm:hor20,i-ci-ve:ver25,r-cr-o:hor20

  " Always show at least three lines above/below the cursor.
  set scrolloff=3
  " Always show at least seven line left/right of the cursor.
  set sidescrolloff=7

  " line numbers
  set number relativenumber
  set numberwidth=4

  " Highlight matching pairs of brackets. Use the '%' character to jump between them.
  set matchpairs+=<:>

  " Display different types of white spaces.
  set list
  set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

  " Remove timeout for partially typed commands
  set notimeout

  filetype plugin indent on
  
  " touch screen support
  set mouse=a

  
]])

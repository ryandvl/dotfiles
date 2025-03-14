local set = vim.opt
local cmd = vim.cmd
local global = vim.g

-- Leader Key
global.mapleader = " "

-- Line Numbers
set.relativenumber = false
set.number = true

-- Live Search
set.inccommand = "split"

-- No line wrap
set.wrap = false

-- Tab
set.tabstop = 2
set.shiftwidth = 2
set.softtabstop = 0
set.expandtab = true

-- Enable 24-bit colors
set.termguicolors = true

-- Python
global.lazyvim_python_lsp = "pyright"
global.lazyvim_python_ruff = "ruff"

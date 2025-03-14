local set = vim.keymap.set
local del = vim.keymap.del
local fn = vim.fn
local options = {
  noremap = true,
  silent = true,
}
local Snacks = require("snacks")
local Cmp = require("blink-cmp")

-- LazyVim
del("n", "<leader>l") -- Remove Lazy (Space + l)
del("n", "<leader>L") -- Remove Lazy Changelog (Space + L)

set("n", "<leader>ll", "<Cmd>Lazy<CR>", { desc = "Lazy" }) -- (Space + l + l) Lazy
set("n", "<leader>lc", function()
  LazyVim.news.changelog()
end, { desc = "LazyVim Changelog" }) -- (Space + l + c) LazyVim Changelog
set("n", "<leader>lx", "<Cmd>LazyExtras<CR>", { desc = "LazyExtras" }) -- (Space + l + x) Lazy Extras

-- Increment/Decrement
set("n", "+", "<C-a>") -- (+) Increment
set("n", "-", "<C-x>") -- (-) Decrement

-- Selection
set("n", "<C-a>", "gg<S-v>G") -- (Ctrl + a) Select All

-- Buffers
set("n", "<S-tab>", "<Cmd>bp<CR>", options) -- (Shift + Tab) Previous Buffer
set("n", "<tab>", "<Cmd>bn<CR>", options) -- (Tab) Next Buffer
set("n", "<C-w>", function()
  Snacks.bufdelete()
end, options) -- (Ctrl + w) Close Buffer

-- Neotree
set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", options) -- (Space + e) Toggle NeoTree
set("n", "<leader>E", "<Cmd>Neotree focus<CR>", options) -- (Space + E) Focus NeoTree

-- Quit
set("n", "<C-Del>", "<Cmd>quitall<CR>", options) -- (Ctrl + Delete) Quit All

-- Text Utils
set("n", "<leader>rn", ":IncRename ") -- (Space + r + n) Inc Rename

set("n", "<leader>rq", 'ciw""<Esc>P', {
  noremap = true,
  desc = "Quote a word with double quotes",
}) -- (Space + r + q) Quote a word with double quotes
set("n", "<leader>rQ", 'di"hPl2x', {
  noremap = true,
  desc = "Remove double quotes from a word",
}) -- (Space + r + q) Remove quotes quotes from a word

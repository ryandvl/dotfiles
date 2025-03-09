local set = vim.keymap.set
local options = {
  noremap = true,
  silent = true,
}
local Snacks = require("snacks")

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
set("n", "<C-Del>", "<Cmd>quitall<CR>", options) -- Quit All

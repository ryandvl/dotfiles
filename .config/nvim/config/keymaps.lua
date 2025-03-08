local set = vim.keymap.set
local options = {
  noremap = true,
  silent = true,
}

-- Increment/Decrement
set("n", "+", "<C-a>") -- (+) Increment
set("n", "-", "<C-x>") -- (-) Decrement

-- Selection
set("n", "<C-a>", "gg<S-v>G") -- (Ctrl + a) Select All

-- Buffers
set("n", "<S-tab>", ":bp<Return>", options) -- (Shift + Tab) Previous Buffer
set("n", "<tab>", ":bn<Return>", options) -- (Tab) Next Buffer
set("n", "<C-w>", ":bd<Return>", options) -- (Ctrl + w) Close Buffer

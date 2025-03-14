local create = vim.api.nvim_create_autocmd

-- Markdown
create("FileType", {
  pattern = { "markdown", "txt" },
  callback = function()
    vim.opt_local.spell = false
  end,
})

-- Lua
local lua_tabwidth = 4
create("FileType", {
  pattern = { "lua" },
  callback = function()
    vim.opt_local.tabstop = lua_tabwidth
    vim.opt_local.shiftwidth = lua_tabwidth
    vim.opt_local.expandtab = true
  end,
})

-- Go
local go_tabwidth = 8
create("FileType", {
  pattern = { "go", "mod" },
  callback = function()
    vim.opt_local.tabstop = go_tabwidth
    vim.opt_local.shiftwidth = go_tabwidth
    vim.opt_local.expandtab = true
  end,
})

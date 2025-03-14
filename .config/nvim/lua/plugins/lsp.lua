return {
  -- Mason
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "tailwindcss-language-server",
        "typescript-language-server",
        "css-lsp",

        "pyright",
        "ruff",
      },
    },
  },

  -- LSP Servers Configurations
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local ruff = vim.g.lazyvim_python_ruff
      local lsp = vim.g.lazyvim_python_lsp

      local servers = { "pyright", "basedpyright", "ruff", "ruff_lsp", ruff, lsp }
      for _, server in ipairs(servers) do
        opts.servers[server] = opts.servers[server] or {}
        opts.servers[server].enabled = server == lsp or server == ruff
      end

      opts.inlay_hints.enabled = true
    end,
  },

  -- Beautiful CMP
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}

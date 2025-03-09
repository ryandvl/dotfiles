return {
  -- NeoTree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      window = {
        position = "left",
        width = 30,
        mapping_options = {
          noremap = true,
          nowait = true,
        },
        mappings = {
          ["Y"] = "none",
          ["<space>"] = "none",
          ["<esc>"] = function()
            vim.api.nvim_exec2("wincmd p", {})
          end,
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        filtered_items = {
          hide_dotfiles = false,
          hide_by_name = {
            ".git",
          },
          always_show = {
            ".env",
          },
        },
      },
    },
  },
}

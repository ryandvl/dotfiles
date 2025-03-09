return {
  -- Dashboard
  {
    "nvimdev/dashboard-nvim",
    enabled = false,
  },

  -- Lualine
  {
    "nvim-lualine/lualine.nvim",
    enabled = true,
    opts = {
      sections = {
        lualine_c = {},
        lualine_x = {},
        lualine_z = {},
      },
    },
  },

  -- Noice
  {
    "folke/noice.nvim",
    opts = function(_, opts)
      table.insert(opts.routes, {
        filter = {
          event = "notify",
          find = "No information available",
        },
        opts = { skip = true },
      })

      opts.commands = {
        all = {
          view = "split",
          opts = {
            enter = true,
            format = "details",
          },
          filter = {},
        },
      }
    end,
  },

  -- DevIcons
  {
    "nvim-tree/nvim-web-devicons",
    opts = {},
  },

  -- Filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",
    priority = 1200,
    config = function()
      local helpers = require("incline.helpers")

      require("incline").setup({
        window = {
          padding = 0,
          margin = {
            horizontal = 0,
          },
        },
        render = function(props)
          local filename = vim.fn.fnamemodify(vim.api.nvim_buf_get_name(props.buf), ":t")

          if filename == "" then
            filename = "[No Name]"
          end

          local ft_icon, ft_color = require("nvim-web-devicons").get_icon_color(filename)
          local modified = vim.bo[props.buf].modified

          local buffer = {
            ft_icon and { " ", ft_icon, " ", guibg = ft_color, guifg = helpers.contrast_color(ft_color) } or "",
            " ",
            { filename, gui = modified and "bold,italic" or "bold" },
            " ",
            guibg = "#363944",
          }

          return buffer
        end,
      })
    end,
  },
}

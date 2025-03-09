return {
  {
    -- Highlight Colors
    {
      "echasnovski/mini.hipatterns",
      event = "BufReadPre",
      opts = {},
    },

    -- Telescope
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        function()
          local builtin = require("telescope.builtin")

          builtin.find_files({
            no_ignore = false,
            hidden = true,
          })
        end,
        desc = "Lists files in your current working directory, respect .gitignore",
      },
    },
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
      },
    },
  },
}

return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        ";f",
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
    -- change some options
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

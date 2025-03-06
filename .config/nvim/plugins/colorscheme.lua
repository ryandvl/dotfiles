-- Catpppuccin Color Scheme

return {
  -- Add Catppuccin
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Configure LazyVim to load Catppuccin
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    }
  }
}

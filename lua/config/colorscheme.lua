return {
  -- Disable default colorscheme
  { "LazyVim/LazyVim", opts = { colorscheme = nil } },

  -- Your preferred colorscheme configuration
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      require("gruvbox").setup()
      vim.cmd([[colorscheme gruvbox]])
    end,
  },
}

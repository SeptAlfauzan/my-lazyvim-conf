return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },
  { "tomasr/molokai" },
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}

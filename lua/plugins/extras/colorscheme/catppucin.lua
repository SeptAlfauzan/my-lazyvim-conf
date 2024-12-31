return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    opts = {
      flavour = "mocha", -- Choose your preferred flavor: latte, frappe, macchiato, mocha
      background = { light = "latte", dark = "mocha" },
      transparent_background = true,
      term_colors = true,
      dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
      },
      color_overrides = {
        latte = {
          base = "#121212FF",
          mantle = "#242424",
          crust = "#474747",
        },
        mocha = {
          surface = "#121212",
        },
      },
      custom_highlights = {},
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = true,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
      },
    },
  },
  config = function(_, opts)
    require("catppuccin").setup(opts)
    vim.cmd.colorscheme("catppuccin")
  end,

  -- Configure LazyVim to load catppuccin
  -- {
  -- "LazyVim/LazyVim",
  -- opts = {
  -- colorscheme = "catppuccin",
  -- },
  -- },
}

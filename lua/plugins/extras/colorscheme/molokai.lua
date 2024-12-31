return {
  {
    "tomasr/molokai",
    name = "molokai",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme molokai]])
    end,
  },
}

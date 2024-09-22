return {
  -- Add Dart LSP
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        dartls = {},
      },
    },
  },

  -- Add null-ls for additional formatting
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
      local null_ls = require("null-ls")
      opts.sources = opts.sources or {}
      table.insert(opts.sources, null_ls.builtins.formatting.dart_format)
    end,
  },

  -- Configure autoformat
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        dart = { "dart_format" },
      },
    },
  },
}

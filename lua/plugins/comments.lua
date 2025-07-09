return {
  "folke/ts-comments.nvim",
  dependencies = {
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "razor",
        },
      },
    },
  },
  opts = {
    lang = {
      razor = {
        "@* %s *@",
        razor_block = "// %s",
      },
    },
  },
  event = "VeryLazy",
  enabled = vim.fn.has("nvim-0.10.0") == 1,
}

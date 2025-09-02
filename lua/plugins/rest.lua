return {
  {
    enabled = false,
    "rest-nvim/rest.nvim",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      opts = function(_, opts)
        opts.ensure_installed = opts.ensure_installed or {}
        table.insert(opts.ensure_installed, "http")
      end,
    },
  },
  {
    enabled = false,
    "lima1909/resty.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
}

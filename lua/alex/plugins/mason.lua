return {
  {
    "williamboman/mason.nvim",
    dependencies = 'WhoIsSethDaniel/mason-tool-installer.nvim',
    config = function()
      require("mason").setup()
      require("mason-tool-installer").setup {
	'gopls',
	'delve'
      }
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup {
	ensure_installed = { "lua_ls" }
      }
    end
  }
}

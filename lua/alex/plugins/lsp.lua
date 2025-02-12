return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      'saghen/blink.cmp',
      "neovim/nvim-lspconfig",
    },
    config = function()
      local capabilities = require("blink.cmp").get_lsp_capabilities()
      local lsp = require("lspconfig")
      lsp.lua_ls.setup { capabilities = capabilities }
      lsp.csharp_ls.setup { capabilities = capabilities }
    end
  }
}

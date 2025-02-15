return {
  "neovim/nvim-lspconfig",
  dependencies = {
    'folke/neodev.nvim',
    "neovim/nvim-lspconfig",
  },
  config = function()
    vim.keymap.set('n', 'K', vim.lsp.buf.hover)
    local capabilities = require("blink.cmp").get_lsp_capabilities()
    local lsp = require("lspconfig")
    lsp.lua_ls.setup { capabilities = capabilities }
    lsp.csharp_ls.setup { capabilities = capabilities }
    lsp.gopls.setup { capabilities = capabilities }
  end
}

require("alex")
require("alex.settings")
require("alex.remap")

vim.keymap.set('n', 'gd', function() vim.lsp.buf.definition() end)

return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			lua_ls = {},
			omnisharp = {}
		}
	},
	config = function(_, opts)
		for server, config in pairs(opts.servers) do
			config.capabilities = require('blink.cmp').get_lsp_capabilities(config.capabilities)
			vim.lsp.enable(server)
		end
	end
}

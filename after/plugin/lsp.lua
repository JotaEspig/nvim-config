local lsp = require("lsp-zero")

lsp.preset("recommended")
lsp.setup()

-- Installs language servers
require("mason").setup({})
require("mason-lspconfig").setup({
	-- Replace the language servers listed here 
	-- with the ones you want to install
	ensure_installed = {"clangd", "pyright", "gopls"},
	handlers = {
		lsp.default_setup,
	},
})

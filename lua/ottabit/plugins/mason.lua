local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lspconfig = require("lspconfig")

mason.setup()
mason_lspconfig.setup({
	ensure_installed = {
		"lua_ls",
		"tsserver",
		"emmet_ls",
		"cssls",
		"dockerls",
		"pyright",
		"volar",
	},
})

mason_lspconfig.setup_handlers({
	function(server_name)
		lspconfig[server_name].setup({})
	end,
})

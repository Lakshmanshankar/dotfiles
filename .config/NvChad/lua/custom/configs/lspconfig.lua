-- store all the lsp config for our editor

local config = require "plugins.configs.lspconfig"
local on_attach = config.on_attach
local capabilities = config.capabilities

local lspconfig = require "lspconfig"

lspconfig.biome.setup {
	on_attach = on_attach,
	capablities = capabilities,
	root_dir = lspconfig.util.root_pattern "biome.json",
}
--
lspconfig.tsserver.setup {
	on_attach = on_attach,
	capablities = capabilities,
	root_dir = lspconfig.util.root_pattern "package.json",
	init_options = {
		preferences = {
			disableSuggestions = true,
		},
	},
}

lspconfig.html.setup {
	capabilities = capabilities,
}

lspconfig.grammarly.setup {
	on_attach = on_attach,
	capabilities = capabilities,
}
--
-- lspconfig.denols.setup {
--   root_dir = lspconfig.util.root_pattern "deno.json",
-- }

-- python lsp config
-- lspconfig.pylsp.setup {
--   on_attach = on_attach,
--   capabilities = capabilities,
--   filetype = { "python" },
-- }

-- INFO: CLANG C++ FEATURES HERE
-- lspconfig.clangd.setup {
--   on_attach = function(client, bufnr)
--     client.server_capabilities.signatureHelpProvider = false
--     on_attach(client, bufnr)
--   end,
--   capabilities = capabilities,
-- }

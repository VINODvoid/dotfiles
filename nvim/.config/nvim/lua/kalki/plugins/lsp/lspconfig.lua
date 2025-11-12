return {
	"neovim/nvim-lspconfig",
	dependencies = {
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities = vim.tbl_deep_extend("force", capabilities, require("cmp_nvim_lsp").default_capabilities())

		-- servers you want enabled
		local servers = {
			ts_ls = {}, -- React Native / TypeScript
			pyright = {}, -- Python AI/ML
			clangd = {}, -- C/C++ for OS dev
			lua_ls = { -- Lua for Neovim config
				settings = {
					Lua = {
						runtime = { version = "LuaJIT" },
						workspace = { checkThirdParty = false, library = vim.api.nvim_get_runtime_file("", true) },
						diagnostics = { globals = { "vim" } },
					},
				},
			},
			jsonls = {},
			yamlls = {},
			dockerls = {},
			sqlls = {},
			html = {},
			cssls = {},
			tailwindcss = {},
		}

		for server, cfg in pairs(servers) do
			cfg.capabilities = vim.tbl_deep_extend("force", {}, capabilities, cfg.capabilities or {})
			vim.lsp.config(server, cfg)
			vim.lsp.enable(server)
		end
	end,
}

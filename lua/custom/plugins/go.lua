return {
	"neovim/nvim-lspconfig",
	ft = "go",

	vim.lsp.config("gopls", {
		on_attach = function(client, bufnr)
			local opts = { noremap = true, silent = true, buffer = bufnr }
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
		end,

		settings = {
			gopls = {
				analyses = {
					unusedparams = true,
				},
				staticcheck = true,
			},
		},
	}),

	vim.lsp.enable("gopls"),

	-- config = function()
	-- 	local lspconfig = require("lspconfig")
	--
	-- 	lspconfig.gopls.setup({
	-- 		on_attach = function(client, bufnr)
	-- 			-- Optional: keymaps for LSP features
	-- 			local opts = { noremap = true, silent = true, buffer = bufnr }
	-- 			vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
	-- 			vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
	-- 		end,
	-- 		settings = {
	-- 			gopls = {
	-- 				analyses = {
	-- 					unusedparams = true,
	-- 				},
	-- 				staticcheck = true,
	-- 			},
	-- 		},
	-- 	})
	-- end,
}

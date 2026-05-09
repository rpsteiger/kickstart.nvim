vim.lsp.config("html", {
	filetypes = { "html", "php" }, -- Make it work in PHP files

})

vim.lsp.config("emmet_language_server", {
	filetypes = { "html", "template", "javascriptreact", "typescript" },
})

vim.o.winbar = "%!v:lua.require('mini.statusline').active()"
vim.o.laststatus = 3 -- Ensures a global statusline

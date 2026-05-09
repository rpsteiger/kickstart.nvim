require("kickstart.plugins.debug")
require("kickstart.plugins.lint")
require("kickstart.plugins.autopairs")
require("custom.plugins.nvimtree")
require("custom.plugins.vimtex")
require("custom.plugins.dashboard-nvim")
require("custom.plugins.tmux-navigator")
require("custom.plugins.neotest")
require("custom.plugins.go")

require("custom.formatting")
require("custom.fix-imports")
require("custom.snippets")
require("custom.wezterm-padding")

vim.lsp.config("html", {
  filetypes = { "html", "php" }, -- Make it work in PHP files
})

vim.lsp.config("emmet_language_server", {
  filetypes = { "html", "template", "javascriptreact", "typescript" },
})

vim.o.winbar = "%!v:lua.require('mini.statusline').active()"
vim.o.laststatus = 3 -- Ensures a global statusline

require 'custom.options'

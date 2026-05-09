local group = vim.api.nvim_create_augroup("RemoveShellPadding", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
	group = group,
	desc = "Remove WezTerm padding when entering Neovim",
	callback = function()
		vim.fn.system({
			"sed",
			"-F",
			"{ left = 20, right = 20, top = 15, bottom = 15 }",
			"{ left = 0, right = 0, top = 0, bottom = 0 }",
			"/home/ryan/.wezterm.lua",
		})
	end,
})

vim.pack.add({
  "https://github.com/nvimdev/dashboard-nvim",
  "https://github.com/nvim-tree/nvim-web-devicons",
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    require("dashboard").setup({
      config = {
        center = {
          {
            icon = "",
            icon_hl = "group",
            desc = "description",
            desc_hl = "group",
            key = "shortcut key in dashboard buffer not keymap !!",
            key_hl = "group",
            key_format = " [%s]",
            action = "",
          },
        },
        footer = {},
        vertical_center = false,
      },
    })
  end,
})

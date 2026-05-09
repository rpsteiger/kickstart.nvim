vim.opt.tabstop = 2
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

-- remapping the ci and di behaviour
vim.keymap.set('n', "ci'", '"_ci\'', { noremap = true })
vim.keymap.set('n', "di'", '"_di\'', { noremap = true })

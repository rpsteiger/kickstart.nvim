vim.keymap.set('n', '<leader>f', function()
  vim.lsp.buf.format()
end, { noremap = true, silent = true })

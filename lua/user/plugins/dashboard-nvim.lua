local M = {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { { 'nvim-tree/nvim-web-devicons' } },
}

function M.config()
  require('dashboard').setup {
    -- config
    config = {
      center = {
        {
          icon = '',
          icon_hl = 'group',
          desc = 'description',
          desc_hl = 'group',
          key = 'shortcut key in dashboard buffer not keymap !!',
          key_hl = 'group',
          key_format = ' [%s]', -- `%s` will be substituted with value of `key`
          action = '',
        },
      },
      footer = {},
      vertical_center = false, -- Center the Dashboard on the vertical (from top to bottom)
    },
  }
end

return M

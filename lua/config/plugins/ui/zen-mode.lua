return {
  'folke/zen-mode.nvim',
  opts = {},
  config = function()
    require('zen-mode').setup {}

    -- Set keymap to toggle Zen Mode with <leader>z
    vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
  end,
}

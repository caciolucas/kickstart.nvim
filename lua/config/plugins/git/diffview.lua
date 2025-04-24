return {
  'sindrets/diffview.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('diffview').setup {
      vim.api.nvim_set_keymap('n', '<leader>od', ':DiffviewOpen<CR>', { noremap = true, silent = true }),
    }
  end,
}

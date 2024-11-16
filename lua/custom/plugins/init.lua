-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
--init
-- See the kickstart.nvim README for more information
return {
  {
    'folke/zen-mode.nvim',
    opts = {},
    config = function()
      require('zen-mode').setup {}

      -- Set keymap to toggle Zen Mode with <leader>z
      vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
    end,
  },
  { 'ThePrimeagen/vim-be-good' },
  { 'tpope/vim-surround', config = function() end },
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('diffview').setup {
        vim.api.nvim_set_keymap('n', '<leader>od', ':DiffviewOpen<CR>', { noremap = true, silent = true }),
      }
    end,
  },
  {
    'github/copilot.vim',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>tcd', ':Copilot disable', { noremap = true, silent = true })
      vim.api.nvim_set_keymap('n', '<leader>tce', ':Copilot enable', { noremap = true, silent = true })
    end,
  },
  {
    'mbbill/undotree',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>u', ':UndotreeToggle<CR>', { noremap = true, silent = true })
    end,
  },
  {
    'goolord/alpha-nvim',
    config = function()
      require('alpha').setup(require('alpha.themes.dashboard').config)
    end,
  },
}

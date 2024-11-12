-- You can add your own plugins here or in other files in this directory!
-- I promise not to create any merge conflicts in this directory :)
--init
-- See the kickstart.nvim README for more information
return {
  {
    'folke/zen-mode.nvim',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    config = function()
      require('zen-mode').setup {
        -- add any specific Zen Mode configuration here, or leave it empty for defaults
      }

      -- Set keymap to toggle Zen Mode with <leader>z
      vim.api.nvim_set_keymap('n', '<leader>z', ':ZenMode<CR>', { noremap = true, silent = true })
    end,
  },
  { 'ThePrimeagen/vim-be-good' },
  { 'tpope/vim-surround', config = function() end },
  -- { 'wincent/vim-clipper', config = function() end },
  {
    'sindrets/diffview.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('diffview').setup {}
    end,
  },
}

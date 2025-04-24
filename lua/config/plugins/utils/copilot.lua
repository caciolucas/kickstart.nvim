return {
  'github/copilot.vim',
  config = function()
    vim.api.nvim_set_keymap('n', '<leader>tcd', ':Copilot disable', { noremap = true, silent = true })
    vim.api.nvim_set_keymap('n', '<leader>tce', ':Copilot enable', { noremap = true, silent = true })
  end,
}

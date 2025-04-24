-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- NOTE: Map the custom dockerfiles as regular dockerfiles
vim.api.nvim_create_autocmd({ 'BufRead', 'BufNewFile' }, {
  pattern = '[Dd]ockerfile.*',
  -- Set the filetype to dockerfile when opening a file that matches the pattern
  -- and echo a message to the user
  command = "setfiletype dockerfile | echo 'Set filetype to dockerfile'",
})

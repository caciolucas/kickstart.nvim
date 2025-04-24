local colorscheme = 'gruvbox'

local themes = {
  { 'neanias/everforest-nvim', priority = 1000 },
  { 'navarasu/onedark.nvim', priority = 1000 },
  { 'Shatur/neovim-ayu', priority = 1000 },
  { 'ellisonleao/gruvbox.nvim', priority = 1000, init = function()
	vim.cmd.colorscheme(colorscheme)
  end
  },
}




return themes

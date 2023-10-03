require("guillermo")
local set = vim.opt
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

-- Set the background color to black
vim.cmd('hi Normal guibg=black ctermbg=black')
-- Hide the status line
vim.o.laststatus = 0

require("guillermo")
-- Set tab width to 4 spaces
vim.cmd[[set tabstop=4]]
vim.cmd[[set shiftwidth=4]]
vim.cmd[[set expandtab]]

vim.o.background = "dark"
vim.cmd([[colorscheme gruvbox]])

vim.cmd('hi Normal ctermbg=none guibg=none')
-- Hide the status line
vim.o.laststatus = 0
-- Hide cursor positoin
vim.o.ruler = false
-- Hide keys
vim.o.showcmd =false

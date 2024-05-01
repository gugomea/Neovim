local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })

--------------------------------------------------------------------------------------------------------------------------- 
local id, row, col = nil, 0, 0
local function toggle_float()
    local current_row, current_col = unpack(vim.api.nvim_win_get_cursor(0))
    if id ~= nil and current_row == row and current_col == col then
        vim.api.nvim_set_current_win(id)
        id = nil
    else
        _, id = vim.diagnostic.open_float()
    end
    row, col = current_row, current_col
end
vim.keymap.set('n', '<leader>sl', toggle_float, {})
---------------------------------------------------------------------------------------------------------------------------

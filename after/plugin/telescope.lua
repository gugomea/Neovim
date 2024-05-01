local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
vim.keymap.set('n', '<leader>sd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fs', require("telescope").extensions.live_grep_args.live_grep_args, { noremap = true })

--------------------------------------------------------------------------------------------------------------------------- 
local floating_window_id = nil                                                                                           --
local function toggle_float()                                                                                            --
    if floating_window_id then                                                                                           --
        vim.api.nvim_set_current_win(floating_window_id)                                                                 --
        floating_window_id = nil                                                                                         --
    else                                                                                                                 --
        _, floating_window_id = vim.diagnostic.open_float()                                                              --
    end                                                                                                                  --
end                                                                                                                      --
                                                                                                                         --
vim.keymap.set('n', '<leader>sl', toggle_float, {})                                                                      --
---------------------------------------------------------------------------------------------------------------------------

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function() builtin.find_files({cwd = vim.fn.expand("%:p:h")}) end, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', function() builtin.live_grep({cwd = vim.fn.expand("%:p:h")}) end, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope grep string' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "%.jpg", "%.jpeg", "%.png", "%.gif",  -- ignore image files
            "%.aseprite", 
            "%.lib", "%.dll", "%.exe",
            "%.lock", "%.tbc", "%.tcl~", "%.tcl#"
        },
    }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = 'Telescope grep string' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })

require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "%.jpg", "%.jpeg", "%.png", "%.gif",  -- ignore image files
            "%.aseprite", 
            "%.lib", "%.dll", "%.exe",
            "%.lock", "%.tbc", "%.tcl~", "%.diff", "%.tcl#"
        },
    }
}

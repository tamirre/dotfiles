function ColorTheme(color)
    color = color or "gruvbox"
    require("gruvbox").setup({
        terminal_colors = true, -- add neovim terminal colors
        undercurl = false,
        underline = false,
        bold = false,
        italic = {
            strings = false,
            emphasis = false,
            comments = false,
            operators = false,
            folds = false,
        },
        strikethrough = false,
        invert_selection = false,
        invert_signs = false,
        invert_tabline = false,
        invert_intend_guides = false,
        inverse = true, -- invert background for search, diffs, statuslines and errors
        contrast = "", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
    -- color = color or "srcery"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })
    vim.api.nvim_set_hl(0, "Search", { fg = "#000000", bg = "#FFA500", bold = true })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = "#000000", bg = "#FF8C00", bold = true })
end

ColorTheme()

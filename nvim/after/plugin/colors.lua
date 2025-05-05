function ColorTheme(color)
    -- color = color or "srcery"
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
        contrast = "soft", -- can be "hard", "soft" or empty string
        palette_overrides = {},
        overrides = {},
        dim_inactive = false,
        transparent_mode = false,
    })
    
    vim.cmd.colorscheme(color)
end

ColorTheme()

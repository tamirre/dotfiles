function ColorTheme(color)
	color = color or "srcery"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })
    vim.api.nvim_set_hl(0, "Search", { fg = "#000000", bg = "#FFA500", bold = true })
    vim.api.nvim_set_hl(0, "IncSearch", { fg = "#000000", bg = "#FF8C00", bold = true })
end

ColorTheme()

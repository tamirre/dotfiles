function ColorTheme(color)
	color = color or "srcery"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = 'none' })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = 'none' })
end

ColorTheme()

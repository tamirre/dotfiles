vim.cmd.packadd('tcl.nvim')
local tcl = require('tcl')
tcl.setup()
-- Disable Nagelfar linting for Tcl files

require("lint").linters_by_ft.tcl = {}
-- override the man function
-- override the man function to use :Man tcl <word>
tcl.man = function(word)
	-- local ui = vim.api.nvim_list_uis()[1]
	-- local width, height = 72, 40
	-- vim.cmd('let $MANWIDTH = ' .. width)

	-- local page = tcl_command_pages[word] or ("tcl " .. word)
	-- Escape space in 'tcl <word>'
	if pcall(vim.cmd, "Man " .. word) then
		-- vim.api.nvim_win_set_config(0, {
		-- 	relative = 'editor',
		-- 	width = width,
		-- 	height = height,
		-- 	col = (ui.width / 2) - (width / 2),
		-- 	row = (ui.height / 2) - (height / 2),
		-- 	anchor = 'NW',
		-- 	style = 'minimal',
		-- 	border = 'rounded'
		-- })
		return true
	end

	print("No Tcl man page found for: " .. word)
	return false

end
-- remap K to use the new man function
vim.keymap.set('n', 'K', function()
  tcl.man(vim.fn.expand('<cword>'))
end)

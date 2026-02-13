require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the listed parsers MUST always be installed)
  ensure_installed = {"c", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline", "fortran", "tcl"},

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
  -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

  highlight = {
    enable = true,
    disable = { "fortran", "tcl" },
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },

  vim.filetype.add({
      filename = {
          ["hydro"] = "tcl",
      },
      extension = {
          f77 = "fortran",
          f90 = "fortran",
          f95 = "fortran",
          f03 = "fortran",
          f08 = "fortran",
		  f = "fortran",
		  F = "fortran",
          t = "tcl",
          gnu = "gnuplot",
          gp = "gnuplot",
      }
  }),
  vim.api.nvim_create_autocmd({"BufRead","BufNewFile"}, {
   pattern = {"*.f", "*.f90","*.f95","*.f03"},
   callback = function()
	   vim.b.fortran_free_source = true
	   -- Add highlighting for fixed-form comments
	   vim.cmd([[syntax match fortranFixedComment /^[Cc\*].*/]])
	   vim.cmd([[highlight link fortranFixedComment Comment]])
   end
  }),
  vim.api.nvim_set_hl(0, "@diff.plus",  { fg = "#00ff00" }),  -- semi-transparent green
  vim.api.nvim_set_hl(0, "@diff.minus", { fg = "#ff0000" }),  -- semi-transparent red
  vim.api.nvim_set_hl(0, "@diff.delta", { fg = "#444400" })  -- semi-transparent yellow
}

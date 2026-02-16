vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = false

-- special case for .changes:
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile"}, {
  pattern = "*.changes",
  callback = function()
    vim.opt.expandtab = false
  end,
})

vim.opt.smartindent = true

vim.opt.wrap = false
vim.opt.linebreak = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"
-- Set search result highlight to orange background with black text
vim.keymap.set("n", "<Esc>", "<cmd>noh<CR><Esc>")

vim.opt.guicursor = {
  "n-v-c:block",       -- Normal, visual, command modes
  "i-ci-ve:block",     -- Insert, command-line insert, visual-exclusive
  "r-cr:block",        -- Replace modes
  "o:block",           -- Operator-pending
  "sm:block"           -- Showmatch (briefly shows matching paren)
}

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.g.netrw_liststyle = 1        -- Long listing format
vim.g.netrw_sizestyle = "H"      -- Human-readable file sizes

-- Green background for added lines
vim.cmd("highlight DiffAdd    guibg=#1e3f1e guifg=#a8ff60")
-- Red background for removed lines
vim.cmd("highlight DiffDelete guibg=#3f1e1e guifg=#ff6060")
-- Yellow-ish for changes
vim.cmd("highlight DiffChange guibg=#3f3f1e guifg=#ffffa8")
-- Brighter yellow for changed text
vim.cmd("highlight DiffText   guibg=#5f5f00 guifg=#ffff00 gui=bold")

vim.g.fortran_free_source = 1
vim.g.fortran_fixed_source = 0

vim.keymap.set("n", "<leader>b", function()
  local file = vim.fn.expand("%")
  vim.fn.system("tmux send-keys -t :.1 './build.sh' C-m")
end)
vim.keymap.set("n", "<leader>r", function()
  local file = vim.fn.expand("%")
  -- vim.fn.system("tmux send-keys -t :.1 C-u './build.sh && ./asteroids' C-m")
  -- vim.fn.system("tmux send-keys -t :.1 -X cancel \\; send-keys -t :.1 './build.sh && ./asteroids' C-m")
  vim.fn.system("tmux copy-mode -q -t :.1")
  vim.fn.system("tmux send-keys -t :.1 './build.sh && ./asteroids' C-m")
  -- vim.fn.system("tmux send-keys -t :.1 C-c './build.sh && ./asteroids' C-m")

end)

vim.g.netrw_bufsettings = 'noma nomod nu rnu nowrap ro'
vim.g.netrw_timefmt = "%Y-%m-%d %H:%M"

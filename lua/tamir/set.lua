vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

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


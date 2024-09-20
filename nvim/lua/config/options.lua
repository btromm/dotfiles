
local opt = vim.opt

opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.softtabstop = 2
opt.expandtab = true -- expand tabs to spaces

opt.smartindent = true

opt.wrap = false

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- mixed case = case-sensitive

opt.cursorline = true

opt.termguicolors = true

-- split windows
opt.splitright = true
opt.splitbelow = true

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.hlsearch = false
opt.incsearch = true

opt.scrolloff = 8
opt.signcolumn = "yes"
opt.isfname:append("@-@")

opt.updatetime = 50

--opt.colorcolumn = "80"

-- load theme
vim.cmd([[colorscheme catppuccin]])

-- default notifs
vim.notify = require("notify")

-- conceal level
opt.conceallevel=1

vim.opt.shortmess:append{ I = true }
vim.opt.mouse = "" -- No mouse
vim.opt.guicursor = "" -- Fat cursor always
vim.opt.nu = true -- Shows line numbers
vim.opt.relativenumber = true -- Make line numbers relative

-- Makes all indentations use 4 space tabs
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.splitright = true
vim.opt.splitbelow = true

-- Prevents those annoying vim backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Enhance search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 10 -- Except for EOF, never have less than 10 lines down
vim.opt.signcolumn = 'yes' -- Left column that warns about things per row
vim.opt.isfname:append("@-@") -- From primeagen, expands filename possible chars

vim.opt.updatetime = 100

vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

-- Carryover
vim.opt.relativenumber = true
vim.opt.visualbell = true
vim.opt.shiftround = true
vim.opt.gdefault = true
vim.opt.wildignorecase = true
vim.opt.foldopen = vim.o.foldopen .. ',jump'
vim.opt.wrapscan = false
vim.opt.linebreak = true
vim.opt.path = vim.opt.path._info.default .. './include,include;'
vim.opt.termguicolors = true
vim.opt.swapfile = false
vim.opt.colorcolumn = '101'

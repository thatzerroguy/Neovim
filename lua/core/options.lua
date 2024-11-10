--tabs and indentations

local opt = vim.opt

opt.tabstop = 2 --2 spaces for tab
opt.shiftwidth = 2
opt.autoindent = true

-- searching
opt.ignorecase = true
opt.smartcase = true

--clipboard--
opt.clipboard:append("unnamedplus")

--split window--
opt.splitright = true
opt.splitbelow = true

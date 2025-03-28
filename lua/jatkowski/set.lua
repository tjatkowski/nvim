vim.opt.nu = true
vim.opt.relativenumber = true
-- Set the system clipboard register (*) as the default
vim.opt.clipboard = "unnamedplus"
-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
    callback = function()
        vim.highlight.on_yank {
            higroup = "IncSearch", -- Change this to your preferred highlight group
            timeout = 200,        -- Duration in milliseconds
        }
    end,
})

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.signcolumn = 'yes'

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8

vim.opt.updatetime = 50

vim.o.background = "dark"
-- vim.o.background = "light"
vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[colorscheme catppuccin]])

local nnoremap = require("insom.keymap").nnoremap

vim.g.mapleader = " "

-- Open nvim-tree with current file location 
nnoremap("<leader>e", "<cmd>NvimTreeFindFileToggle<CR>")
-- nnoremap("<leader>e", "<cmd>NvimTreeToggle<CR>")  -- Normal mode

-- Glance (view definitions and references)
vim.keymap.set('n', 'gD', '<CMD>Glance definitions<CR>')
vim.keymap.set('n', 'gR', '<CMD>Glance references<CR>')
vim.keymap.set('n', 'gY', '<CMD>Glance type_definitions<CR>')
vim.keymap.set('n', 'gM', '<CMD>Glance implementations<CR>')


-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])

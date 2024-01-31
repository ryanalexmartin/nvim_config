-- Assuming Comment.nvim is already installed and set up
require('Comment').setup()

-- Toggle comments using Cmd + / on MacOS
vim.api.nvim_set_keymap('n', '<D-m>', 'gc', { noremap=true, silent=true }) -- In iTerm2, map cmd+/ to 'gc'



vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup()

-- vim.keymap.set('n', '<c-n>', ':NvimTreeFindFileToggle<CR>')
-- vim.keymap.set('n', '<Space>t', ':NvimTreeFocus<CR>')
vim.keymap.set('n', 't', ':NvimTreeToggle<CR>')
-- vim.keymap.set('n', '<Space>ms', ':NvimTreeFindFile<CR>')


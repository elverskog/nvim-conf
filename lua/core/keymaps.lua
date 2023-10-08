vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

--use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')

--Use ctrl-[hjkl] to select the active split!
-- nmap <silent> <c-k> :wincmd k<CR>
-- nmap <silent> <c-j> :wincmd j<CR>
-- nmap <silent> <c-h> :wincmd h<CR>
-- nmap <silent> <c-l> :wincmd l<CR>


-- vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
-- vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
-- vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
-- vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

vim.keymap.set('n', '<A-Left>', ':wincmd h<CR>')
vim.keymap.set('n', '<A-Right>', ':wincmd l<CR>')
vim.keymap.set('n', '<A-Down>', ':wincmd j<CR>')
vim.keymap.set('n', '<A-Up>', ':wincmd k<CR>')

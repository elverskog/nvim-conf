-- local status_ok, toggleterm = pcall(require, "toggleterm")
-- if not status_ok then
--   return
-- end

--tesdfasdf

require("toggleterm").setup{

  open_mapping = [[<c-\>]],
  direction = "vertical",
  size =  100,
  start_in_insert = true,
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-Left>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-Down>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-Up>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-Right>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- function _G.set_terminal_focused()
--   if vim.bo.buftype == 'terminal' then vim.cmd('startinsert') end
-- end


-- function _G.terminalOptions()
--   silent! au BufEnter <buffer> startinsert!
--   silent! au BufLeave <buffer> stopinsert!
-- end

-- au TerminalOpen * call terminalOptions()


-- vim.cmd('autocmd! BufWinEnter term://* lua set_terminal_focused()')
-- vim.cmd('autocmd! WinEnter term://* lua set_terminal_focused()')

-- vim.cmd('autocmd! BufWinEnter term://* startinsert')
-- vim.cmd('autocmd! WinEnter term://* startinsert')

-- autocmd BufWinEnter,WinEnter term://* startinsert

-- vim.cmd('autocmd! TermEnter * startinsert')
-- vim.cmd('autocmd! TermLeave * stopinsert')

-- vim.api.nvim_create_autocmd({ "TermOpen", "BufEnter term://*" }, { command = "startinsert" })

-- vim.cmd('autocmd! BufWinEnter * startinsert')
-- vim.cmd('autocmd! WinEnter * startinsert')




-- autocmd FocusGained,BufEnter,BufWinEnter,WinEnter term://* startinsert



-- -- vim.api.nvim_create_autocmd({ 'BufWinEnter', 'WinEnter' }, {

-- local vim_term = vim.api.nvim_create_augroup('vim_term', { clear = true })

-- -- start insert mode when moving to a terminal window
-- vim.api.nvim_create_auto({ 'BufWinEnter', 'WinEnter' }, {
--   callback = function()
--     if vim.bo.buftype == 'terminal' then vim.cmd('startinsert') end
--   end,
--   group = vim_term
-- })

-- -- prevents insert mode when the terminal process has exited
-- vim.api.nvim_create_autocmd('TermClose', {
--   callback = function(ctx)
--     vim.cmd('stopinsert')
--     vim.api.nvim_create_autocmd('TermEnter', {
--       command = 'stopinsert',
--       buffer = ctx.buf,
--     })
--   end,
--   nested = true,
--   group = vim_term
-- })

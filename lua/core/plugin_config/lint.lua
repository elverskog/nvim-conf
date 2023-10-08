require('lint').linters_by_ft = {
  javascript = {"eslint"},
  typescript = {"eslint"},
}


-- function _G.run_lint()
--   require("lint").try_lint()
-- end

-- vim.cmd('autocmd! BufWritePost lua run_lint()')


vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})

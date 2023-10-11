require("core.options")
require("core.keymaps")
require("core.plugins")
require("core.plugin_config")


-- local luasnip = require("luasnip")
-- local keymap = vim.api.nvim_set_keymap

-- -- Define a Luasnip snippet for 'console.log("");'
-- luasnip.snippets[1] = {
--     luasnip.snippet({
--         trig = "clog",
--         name = "console.log",
--         dscr = "Insert a console.log statement",
--     }, {
--         luasnip.text('console.log("'),
--         luasnip.insert(1, ""),
--         luasnip.text('");'),
--     }),
-- }

-- -- Define a function to trigger the snippet and position the cursor
-- function trigger_console_log_snippet()
--     require("luasnip").lsp_expand_or_jump()
-- end

-- -- Create a key mapping to trigger the snippet
-- keymap("n", "<A-l>", "<cmd>lua trigger_console_log_snippet()<CR>", { noremap = true, silent = true })


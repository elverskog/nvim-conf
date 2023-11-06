local ls = require("luasnip")

require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippets/" })


ls.config.set_config({
	history = true, --keep around last snippet local to jump back
	updateevents = "TextChanged,TextChangedI", --update changes as you type
	enable_autosnippets = true,
	ext_opts = {
		[require("luasnip.util.types").choiceNode] = {
			active = {
				virt_text = { { "●", "GruvboxOrange" } },
			},
		},
	},
})


vim.keymap.set({ "i", "s" }, "<A-y>", "<Esc>o", { silent = true })

vim.keymap.set({ "i", "s" }, "<Tab>", function()
	if ls.jumpable(1) then
		ls.jump(1)
	end
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
	if ls.jumpable(-1) then
		ls.jump(-1)
	end
end, { silent = true })

-- vim.keymap.set({ "i", "s" }, "<A-l>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(1)
-- 	else
-- 		-- print current time
-- 		local t = os.date("*t")
-- 		local time = string.format("%02d:%02d:%02d", t.hour, t.min, t.sec)
-- 		print(time)
-- 	end
-- end)
-- vim.keymap.set({ "i", "s" }, "<A-h>", function()
-- 	if ls.choice_active() then
-- 		ls.change_choice(-1)
-- 	end
-- end) --}}}

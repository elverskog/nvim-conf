local ls = require("luasnip")
local s = ls.s
local i = ls.i
local t = ls.t

local d = ls.dynamic_node
local c = ls.choice_node
local f = ls.function_node
local sn = ls.snippet_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {} --}}}

local group = vim.api.nvim_create_augroup("Javascript Snippets", { clear = true })
local file_pattern = "*.mjs"

-- console log
local csl = s("csl", {
  t('console.log("'),
  i(1, "string"),
  t('", );')
})

table.insert(snippets, csl)

-- dynamic import
local did = s("did", {
  i(1, "string"),
  t(' = (await import("'),
  i(1, "string"),
  t('")).default;')
})

table.insert(snippets, did)

-- tap test skeleton
-- local tapt = s("tapt", {
--   t('tap.test("'),
--   i(1, "string"),
--   t('", async t => {'),
--   t(' t.match('),
--   i(1, "string"),
--   t(', '),
--   i(1, "string"),
--   t(');'),
--   t(' t.end();'),
--   t('});')
-- })


local tapt = s(
  "tapt",
	fmt(
    [[
tap.test("{}", async t => {{
  t.match({}, {});
  t.end();
}});
    ]],
    {
      i(1, "description"),
      i(2, "statement"),
      i(3, "expected"),
    }
  )
)
-- local tapt = s({ trig = "tapt", regTrig = true, hidden = true }, tapt_fmt)



-- local tapt = s("tapt", {
--   t('tap.test("'),
--   i(1, "string"),
--   t('", async t => {'),
--   t(' t.match('),
--   i(1, "string"),
--   t(', '),
--   i(1, "string"),
--   t(');'),
--   t(' t.end();'),
--   t('});')
-- })



table.insert(snippets, tapt)

-- tap.test("buildPage, when passed an invalid path, should return an error", async t => {
--   t.match(await buildPage("./bad-path/bad-page.mjs"), undefined);
--   t.end();
-- });


return snippets, autosnippets

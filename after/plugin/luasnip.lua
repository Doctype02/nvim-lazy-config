local ls = require "luasnip"
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

ls.add_snippets("norg", {
  s("nlink", {
    t "{:./",
    i(1, "Link src"),
    t ":}",
    t "[",
    i(2, "Link title"),
    t "]",
  }),
})

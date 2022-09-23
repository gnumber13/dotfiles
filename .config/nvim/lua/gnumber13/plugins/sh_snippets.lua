-- requires
-- {{{1
local ls = require "luasnip"
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local fmt = require("luasnip.extras.fmt").fmt
local m = require("luasnip.extras").m
local lambda = require("luasnip.extras").l
local postfix = require("luasnip.extras.postfix").postfix
-- }}}1

ls.add_snippets("sh", {
	-- generic sh
	s("_test", {
		t("[ "), i(1, "test"), t(" ]")
	}),
	s("_testn", {
		t("[ ! "), i(1, "test"), t(" ]")
	}),

	s("_if", {
		t('if [ '), i(1, test), t({' ]; then', '\t'}), i(2, code), t({'', 'fi'})
	}),

	-- bash bats
	s("_bats", {
		t('#!/usr/bin/env bats')
	}),

	s("_bats_test", {
		t('@test "'), i(1, "descr"), t({'"{', '\t'}),i(2, code), t({'', '}'})
	}),
	s("_files_in_dir", {
		t('i=0;for f in '), i(1,"glob_pattern"), t(';do i=$(expr $i + 1);done')
	})
})




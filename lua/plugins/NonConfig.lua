return {
	-- 注释/反注释
	{ "scrooloose/nerdcommenter" },

	-- 浮动终端
	--{ "voldikss/vim-floaterm" },
	{
		"voldikss/vim-floaterm",
		keys = {
			{
				"<C-_>",
				"<Cmd>FloatermToggle<CR>",
				mode = { "n", "t" },
				desc = "Toggle Floaterm",
			},
		},
	},

	-- markdown
	{ "preservim/vim-markdown", lazy = true, enabled = true },

	-- 彩虹括号
	-- { "luochen1990/rainbow" },
}

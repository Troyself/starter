return {
	-- 注释/反注释
	{ "scrooloose/nerdcommenter" },

	-- 浮动终端
	--{ "voldikss/vim-floaterm" },
	{
		"voldikss/vim-floaterm",
		keys = {
			{ "<C-_>", "<Cmd>FloatermToggle<CR>", desc = "Toggle Floaterm" }, -- <C-/> 实际等于 <C-_>
		},
	},

	-- markdown
	{ "preservim/vim-markdown", lazy = true, enabled = true },

	-- 彩虹括号
	-- { "luochen1990/rainbow" },
}

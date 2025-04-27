return {
	"uga-rosa/translate.nvim",
	keys = {
		{
			"tr",
			"<cmd>Translate<CR>",
			mode = { "n", "v" },
			desc = "Translate (auto)",
		},
		{
			"trc",
			"<cmd>Translate --target=zh-CN<CR>",
			mode = { "n", "v" },
			desc = "Translate to Chinese",
		},
		{
			"trr",
			"<cmd>Translate --source=zh-CN --target=en<CR>",
			mode = { "n", "v" },
			desc = "Translate Reverse",
		}, -- 反向翻译
	},
	opts = {
		default = {
			command = "google", -- 使用 Google 翻译
			output = "floating",
			parse = true,
		},
	},
}

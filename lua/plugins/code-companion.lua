return {
	"olimorris/codecompanion.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-treesitter/nvim-treesitter",
		-- 推荐安装: 这样聊天框里的代码块会有漂亮的图标
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("codecompanion").setup({
			strategies = {
				-- 聊天模式 (右侧分屏) 使用的模型
				chat = {
					adapter = "anthropic", -- 或者 "openai", "ollama", "deepseek"
				},
				-- 行内模式 (Inline) 使用的模型
				inline = {
					adapter = "anthropic",
				},
			},
			-- 界面外观设置
			display = {
				action_palette = {
					provider = "telescope",
				},
			},
		})
	end,
	keys = {
		{ "<leader>a", "", desc = "+ai", mode = { "n", "v" } },

		{
			"<leader>ac",
			"<cmd>CodeCompanionChat Toggle<cr>",
			mode = { "n", "v" },
			desc = "Toggle Chat",
		},

		{
			"<leader>aa",
			"<cmd>CodeCompanionActions<cr>",
			mode = { "n", "v" },
			desc = "AI Actions",
		},

		{ "ga", "<cmd>CodeCompanionChat Add<cr>", mode = "v", desc = "Add to AI Chat" },
	},
}

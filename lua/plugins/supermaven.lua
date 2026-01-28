return {
	"supermaven-inc/supermaven-nvim",
	config = function()
		require("supermaven-nvim").setup({
			keymaps = {
				accept_suggestion = "<C-a>", -- 按 Tab 接受补全（推荐）
				clear_suggestion = "<C-]>", -- 按 Ctrl+] 清除补全
				accept_word = "<C-j>", -- 按 Ctrl+j 只接受一个单词（局部接受）
			},
			-- block some file type here
			ignore_filetypes = {},
			-- custom the text color
			color = {
				suggestion_color = "#888888",
				cterm = 244,
			},
			-- 设置为 true 可以禁用行内补全（如果你只想用 Copilot 或者是为了测试）
			disable_inline_completion = false,
			-- 设置为 true 可以禁用默认快捷键
			disable_keymaps = false,
		})
	end,
}

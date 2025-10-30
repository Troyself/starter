return {
	{
		"f-person/git-blame.nvim",
		event = "BufRead",
		config = function()
			vim.g.gitblame_enabled = 1
			vim.g.gitblame_message_template = " <summary> • <date> • <author>"
			vim.g.gitblame_virtual_text_column = 1
		end,
	},
}

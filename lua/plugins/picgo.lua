return {
	"askfiy/nvim-picgo",
	cmd = { "Picgo", "UploadClipboard" },
	config = function()
		require("nvim-picgo").setup({
			callback = function(url)
				vim.schedule(function()
					vim.api.nvim_put(
						{ string.format("![](%s)", url) },
						"c",
						true,
						true
					)
				end)
			end,
		})
	end,
}

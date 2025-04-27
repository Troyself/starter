return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" }, -- 必须安装 plenary.nvim 作为依赖
	config = function()
		require("telescope").setup({})
	end,
}

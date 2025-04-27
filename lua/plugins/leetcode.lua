return {
	"kawre/leetcode.nvim",
	--"Troyself/leetcode.nvim",
	--branch = "companies",
	build = ":TSUpdate html", -- if you have `nvim-treesitter` installed
	dependencies = {
		"nvim-telescope/telescope.nvim",
		-- "ibhagwan/fzf-lua",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
	},
	opts = {
		-- configuration goes here
		cn = { -- leetcode.cn
			enabled = true, ---@type boolean
			translator = true, ---@type boolean
			translate_problems = true, ---@type boolean
		},

		---@type boolean
		image_support = false,

		injector = { ---@type table<lc.lang, lc.inject>
			["python3"] = {
				before = true,
			},
			["cpp"] = {
				before = { "#include <bits/stdc++.h>", "using namespace std;" },
				after = "int main() {}",
			},
			["java"] = {
				before = "import java.util.*;",
			},
		},
	},
}

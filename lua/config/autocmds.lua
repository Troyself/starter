-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "c", "cpp", "md", "txt", "c.snippets", "cpp.snippets" },
	callback = function()
		vim.b.autoformat = false
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 8
		vim.opt_local.shiftwidth = 8
		vim.opt_local.softtabstop = 8
	end,
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "sh" },
	callback = function()
		vim.b.autoformat = false
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "c", "cpp", "md", "txt", "c.snippets", "cpp.snippets" },
	callback = function()
		local path = vim.fn.expand("%:p")
		if path:find("/home/troy/die2die/") then
			vim.b.autoformat = false
			vim.opt_local.expandtab = true
			vim.opt_local.tabstop = 4
			vim.opt_local.shiftwidth = 4
			vim.opt_local.softtabstop = 4
		end
	end,
})

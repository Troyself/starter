-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
-- Leetcode.nvim
vim.keymap.set("n", "<leader>mlg", "<cmd>Leet run<CR>", { desc = "Leet Run" })
vim.keymap.set("n", "<leader>mls", "<cmd>Leet submit<CR>", { desc = "Leet Submit" })
vim.keymap.set("n", "<leader>mlr", "<cmd>Leet last_submit<CR>", { desc = "Leet Last Submit" })
vim.keymap.set("n", "<leader>mlo", "<cmd>Leet open<CR>", { desc = "Leet Open" })
vim.keymap.set("n", "<leader>mlc", "<cmd>Leet reset<CR>", { desc = "Clear" })
vim.keymap.set("n", "<leader>mll", "<cmd>Leet<CR>", { desc = "Leet" })

-- 普通 ChatGPT 聊天窗口
vim.keymap.set("n", "<leader>mcg", "<cmd>ChatGPT<CR>", { desc = "Open ChatGPT" })

-- 当前选中的文本发送到 ChatGPT（Visual 模式下）
vim.keymap.set(
	"v",
	"<leader>mce",
	":ChatGPTEditWithInstructions<CR>",
	{ desc = "Edit with ChatGPT" }
)

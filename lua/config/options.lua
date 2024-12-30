-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
-- 修改默认缩进
opt.shiftwidth = 8
opt.tabstop = 8
-- 允许复制内容到剪切板
opt.clipboard = "unnamedplus"

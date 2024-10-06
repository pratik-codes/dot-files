-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
--

-- In your LazyVim config file
-- Switch to next tab with Tab + ]
vim.api.nvim_set_keymap("n", "<Tab>]", ":bnext<CR>", { noremap = true, silent = true })
-- Switch to previous tab with Tab + [
vim.api.nvim_set_keymap("n", "<Tab>[", ":bprevious<CR>", { noremap = true, silent = true })

-- knowledge base

-- CHECK ERRORS
-- ]e 	 Next Error	n
-- [e 	Prev Error
--
--
-- CHANGE COLORSCHEME / THEME
-- <leader>+u+C

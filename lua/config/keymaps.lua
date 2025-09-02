-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<leader>dn", vim.diagnostic.goto_next, { desc = "Go to next diagnostic" })
-- map("n", "<leader>rr", ":horizontal Rest run<CR>", { desc = "Run current REST request" })
-- map("n", "<leader>rr", ":Rest run<CR>", { desc = "Run current REST request" })
-- map("n", "<leader>ro", ":vertical Rest open<CR>", { desc = "Open REST result buffer" })

map("n", "=", ":vertical resize +5<cr>") -- make the window biger vertically
map("n", "-", ":vertical resize -5<cr>") -- make the window smaller vertically
map("n", "+", ":horizontal resize +2<cr>") -- make the window bigger horizontally by pressing shift and =
map("n", "_", ":horizontal resize -2<cr>") -- make the window smaller horizontally by pressing shift and -

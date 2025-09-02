-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- vim.opt.shiftwidth = 4
-- vim.opt.tabstop = 4
vim.g.root_spec = { "lsp", { "lua" }, "cwd" }

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "cs", "sql" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.softtabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "json", "txt" },
  callback = function()
    vim.bo.filetype = "jsonc"
  end,
})

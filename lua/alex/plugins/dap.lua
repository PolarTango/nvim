return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      require("netcoredpg").setuo()
      require("dapui").setuo()
      local dap = require("dap")
      vim.keymap.set('n', '<leader>b', dap.toggle_breakpoint)
      vim.keymap.set('n', '<leader>c', dap.continue)
    end
  },
  {
    "rcarriga/nvim-dap-ui"
  }
}

return {
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      --"piredman/nvim-dap-dotnet",
    },
    config = function()
      --require("nvim-dap-dotnet").setup({})
      local dap, dapui = require("dap"), require("dapui")
      dap.listeners.before.attach.dapui_config = function()
	dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
	dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
	dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
	dapui.close()
      end
      dap.adapters.coreclr = {
	type = 'executable',
	command = 'netcoredbg',
	args = {'--interpreter=vscode'}
      }
      dap.configurations.cs = {
	{
	  type = "coreclr",
	  name = "launch - netcoredbg",
	  request = "launch",
	  program = function()
	    return vim.fn.input('Path to dll: ', vim.fn.getcwd() .. '/bin/Debug/', 'file')
	  end,
	},
      }
      vim.keymap.set('n', '<F1>', dap.toggle_breakpoint)
      vim.keymap.set('n', '<F10>', dap.continue)
      vim.keymap.set('n', '<F11>', dap.step_into)
      vim.keymap.set('n', '<S-F11>', dap.step_into)
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "nvim-neotest/nvim-nio"
  }
}

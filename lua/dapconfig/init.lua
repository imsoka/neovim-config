require("plugins.mason-nvim-dap")
require("plugins.nvim-dap-ui")

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after["event_initialized"]["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before["disconnect"]["dapui_config"] = function()
  dapui.close()
end

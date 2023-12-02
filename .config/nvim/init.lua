if vim.fn.has('nvim-0.8') then
  require("core.plugins")
  require("core.plugin_configs")
end
require("core.options")
vim.opt.tabstop = 2

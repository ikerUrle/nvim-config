local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "urlevim.lsp.mason"
require("urlevim.lsp.handlers").setup()
require "urlevim.lsp.null-ls"

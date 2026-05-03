require("config")
require("config.lazy")
require("config.keymaps")

-- LSPs ------------------------------------------------------------------------
vim.lsp.config("luals", require("config.lsp.luals"))
vim.lsp.enable("luals")

vim.lsp.config("tsserver", require("config.lsp.tsserver"))
vim.lsp.enable("tsserver")


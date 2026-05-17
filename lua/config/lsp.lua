vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspKeymaps", { clear = true }),
  desc = "Set LSP keymaps on attach",
  callback = function(event)
    local buf = event.buf

    local map = function(mode, keys, func, desc)
      vim.keymap.set(mode, keys, func, {
        buffer = buf,
        noremap = true,
        silent = true,
        desc = "LSP: " .. desc,
      })
    end

    -- Navigation
    map("n", "gd", vim.lsp.buf.definition, "Go to Definition")
    map("n", "gD", vim.lsp.buf.declaration, "Go to Declaration")
    map("n", "gi", vim.lsp.buf.implementation, "Go to Implementation")
    map("n", "gy", vim.lsp.buf.type_definition, "Go to Type Definition")
    map("n", "gr", vim.lsp.buf.references, "List References")

    -- Docs & Signature
    map("n", "K", vim.lsp.buf.hover, "Hover Docs")
    map("i", "<C-k>", vim.lsp.buf.signature_help, "Signature Help")

    -- Actions
    map({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, "Code Action")
    map("n", "<leader>rn", vim.lsp.buf.rename, "Rename Symbol")

    -- Suggest code completion
    -- 1. Trigger completion
    local client = vim.lsp.get_client_by_id(event.data.client_id)
    vim.lsp.completion.enable(true, client.id, buf, {
      autotrigger = true,
    })
    map("i", "<C-Space>", vim.lsp.completion.get, "Suggest code completion")

    -- 2. Accept completion suggestion
    vim.keymap.set("i", "<CR>", function()
      return vim.fn.pumvisible() == 1 and "<C-y>" or "<CR>"
    end, { expr = true })

    -- Diagnostics
    map("n", "<leader>e", vim.diagnostic.open_float, "Line Diagnostics")
    map("n", "[d", vim.diagnostic.goto_prev, "Prev Diagnostic")
    map("n", "]d", vim.diagnostic.goto_next, "Next Diagnostic")
    map("n", "[e", function()
      vim.diagnostic.goto_prev({ severity = vim.diagnostic.severity.ERROR })
    end, "Prev Error")
    map("n", "]e", function()
      vim.diagnostic.goto_next({ severity = vim.diagnostic.severity.ERROR })
    end, "Next Error")
  end,
})

-- Lua -------------------------------------------------------------------------
vim.lsp.config("luals", {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim" },
      },
    },
  },
})

-- Typescript ------------------------------------------------------------------
vim.lsp.config("tsls", {
  cmd = { "typescript-language-server", "--stdio" },
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },
  root_markers = {
    "package.json",
    ".git",
    "tsconfig.json",
    "package-lock.json",
    "yarn.lock",
  },
})

-- Tailwind CSS -----------------------------------------------------------------
vim.lsp.config("twls", {
  cmd = { "tailwindcss-language-server", "--stdio" },
  filetypes = {
    "typescript",
    "typescriptreact",
    "javascript",
    "javascriptreact",
  },
  root_markers = {
    "package.json",
    ".git",
    "tsconfig.json",
    "package-lock.json",
    "yarn.lock",
  },
})

-- Enable LSPs -----------------------------------------------------------------
vim.lsp.enable({
  "tsls",
  "twls",
  "luals",
})

-- Diagnostics appearance ------------------------------------------------------
vim.diagnostic.config({
  -- Show diagnostics inline as virtual text
  virtual_text = {
    spacing = 4,
    prefix  = "●",
  },
  -- Show signs in the gutter (Neovim 0.10+ accepts a table here)
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "█",
      [vim.diagnostic.severity.WARN]  = "█",
      [vim.diagnostic.severity.HINT]  = "█",
      [vim.diagnostic.severity.INFO]  = "█",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
  float = {
    border = "rounded",
    source = true, -- show which server the diagnostic is from
    focusable = false,
  },
})

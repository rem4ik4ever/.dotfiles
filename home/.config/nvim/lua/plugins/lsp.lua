-- Keymaps on LSP attach (register early, before any LSP loads)
vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local map = function(keys, func, desc)
      vim.keymap.set("n", keys, func, { buffer = args.buf, desc = desc })
    end

    map("gd", vim.lsp.buf.definition, "Go to definition")
    map("gr", vim.lsp.buf.references, "Find references")
    map("gD", vim.lsp.buf.declaration, "Go to declaration")
    map("gI", vim.lsp.buf.implementation, "Go to implementation")
    map("K", vim.lsp.buf.hover, "Hover documentation")
    map("<leader>ca", vim.lsp.buf.code_action, "Code action")
    map("<leader>rn", vim.lsp.buf.rename, "Rename symbol")
    map("[d", vim.diagnostic.goto_prev, "Previous diagnostic")
    map("]d", vim.diagnostic.goto_next, "Next diagnostic")
    map("<leader>d", vim.diagnostic.open_float, "Show diagnostic")
  end,
})

return {
  -- Mason: LSP server installer
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗",
          },
        },
      })
    end,
  },

  -- Mason LSP config bridge
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim", "hrsh7th/cmp-nvim-lsp" },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()

      -- Server configs using nvim 0.11 vim.lsp.config API
      vim.lsp.config("ts_ls", { capabilities = capabilities })
      vim.lsp.config("pyright", { capabilities = capabilities })
      vim.lsp.config("gopls", { capabilities = capabilities })
      vim.lsp.config("rust_analyzer", { capabilities = capabilities })
      vim.lsp.config("ruby_lsp", {
        capabilities = capabilities,
        cmd = { "/Users/rkim/.local/share/mise/installs/ruby/3.4.7/bin/ruby-lsp" },
      })
      vim.lsp.config("lua_ls", {
        capabilities = capabilities,
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { checkThirdParty = false },
            telemetry = { enable = false },
          },
        },
      })

      require("mason-lspconfig").setup({
        ensure_installed = {
          "ts_ls",
          "pyright",
          "gopls",
          "rust_analyzer",
          "lua_ls",
        },
        automatic_installation = true,
      })

      -- Enable LSP servers
      vim.lsp.enable({
        "ts_ls",
        "pyright",
        "gopls",
        "rust_analyzer",
        "ruby_lsp",
        "lua_ls",
      })

    end,
  },
}

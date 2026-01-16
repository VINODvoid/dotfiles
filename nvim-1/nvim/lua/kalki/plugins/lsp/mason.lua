return {
  "williamboman/mason.nvim",
  cmd = "Mason",
  build = ":MasonUpdate",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")
    local mason_tool_installer = require("mason-tool-installer")

    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "ts_ls", -- typescript
        "html",
        "cssls",
        "tailwindcss",
        "svelte",
        "lua_ls",
        "graphql",
        "emmet_ls",
        "prismals",
        "pyright", -- python
        "gopls", -- go
        "rust_analyzer", -- rust
        "clangd", -- c/c++
        "jsonls", -- json
      },
      -- automatically configure lsp servers installed via mason
      automatic_installation = true,
      handlers = {
        -- Default handler for all servers
        function(server_name)
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig[server_name].setup({
            capabilities = capabilities,
          })
        end,

        -- Custom handlers for specific servers
        ["svelte"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.svelte.setup({
            capabilities = capabilities,
            on_attach = function(client, bufnr)
              vim.api.nvim_create_autocmd("BufWritePost", {
                pattern = { "*.js", "*.ts" },
                callback = function(ctx)
                  client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
                end,
              })
            end,
          })
        end,

        ["graphql"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.graphql.setup({
            capabilities = capabilities,
            filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
          })
        end,

        ["emmet_ls"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.emmet_ls.setup({
            capabilities = capabilities,
            filetypes = {
              "html",
              "typescriptreact",
              "javascriptreact",
              "css",
              "sass",
              "scss",
              "less",
              "svelte",
            },
          })
        end,

        ["lua_ls"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.lua_ls.setup({
            capabilities = capabilities,
            settings = {
              Lua = {
                diagnostics = {
                  globals = { "vim" },
                },
                completion = {
                  callSnippet = "Replace",
                },
              },
            },
          })
        end,

        ["pyright"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.pyright.setup({
            capabilities = capabilities,
            settings = {
              python = {
                analysis = {
                  typeCheckingMode = "basic",
                  autoSearchPaths = true,
                  useLibraryCodeForTypes = true,
                  diagnosticMode = "workspace",
                },
              },
            },
          })
        end,

        ["gopls"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.gopls.setup({
            capabilities = capabilities,
            settings = {
              gopls = {
                analyses = {
                  unusedparams = true,
                },
                staticcheck = true,
                gofumpt = true,
              },
            },
          })
        end,

        ["rust_analyzer"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.rust_analyzer.setup({
            capabilities = capabilities,
            settings = {
              ["rust-analyzer"] = {
                checkOnSave = {
                  command = "clippy",
                },
              },
            },
          })
        end,

        ["clangd"] = function()
          local lspconfig = require("lspconfig")
          local cmp_nvim_lsp = require("cmp_nvim_lsp")
          local capabilities = cmp_nvim_lsp.default_capabilities()

          lspconfig.clangd.setup({
            capabilities = capabilities,
            cmd = {
              "clangd",
              "--background-index",
              "--clang-tidy",
              "--header-insertion=iwyu",
              "--completion-style=detailed",
              "--function-arg-placeholders",
            },
          })
        end,
      },
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "prettier", -- prettier formatter
        "stylua", -- lua formatter
        "isort", -- python formatter
        "black", -- python formatter
        "pylint", -- python linter
        "eslint_d", -- js linter
        "gofumpt", -- go formatter
        "goimports", -- go imports formatter
        "golines", -- go formatter
        "rustfmt", -- rust formatter
        "clang-format", -- c/c++ formatter
      },
    })
  end,
}

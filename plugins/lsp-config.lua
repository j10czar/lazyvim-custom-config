-- for this start with the lazy extra for the python language, this will tone the errors down

return {
  -- change nvim-lspconfig options
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff_lsp = {
        mason = false, -- Prevent Mason from installing ruff-lsp
      },
      -- https://github.com/microsoft/pyright/discussions/5852#discussioncomment-6874502
      pyright = {
        capabilities = {
          textDocument = {
            publishDiagnostics = {
              tagSupport = {
                valueSet = { 2 },
              },
            },
          },
        },
      },
    },
  },
}

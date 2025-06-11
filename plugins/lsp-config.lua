-- for this start with the lazy extra for the python language, this will tone the errors down
-- you can also do <ud> to toggle these

return {
  -- change nvim-lspconfig options
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
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

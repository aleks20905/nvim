return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {
          mason = false,
          cmd = { "templ", "lsp" },
          filetypes = { "templ" },
        },
      },
    },
  },
}

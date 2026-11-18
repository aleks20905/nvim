return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = { enabled = false },
    servers = {
      gopls = {
        mason = false,
      },

      nil_ls = {
        mason = false,
      },

      pyright = {
        mason = false,
      },

      ruff = {
        mason = false,
      },
      lua_ls = {
        mason = false,
      },
    },
  },
}

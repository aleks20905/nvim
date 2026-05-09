return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        nil_ls = {
          mason = false, -- must be false
          cmd = { "nil" }, -- must be plain "nil"
          settings = {
            ["nil"] = {
              formatting = {
                command = { "nixfmt" },
                options = {
                  width = 160,
                },
              },
            },
          },
        },
      },
    },
  },
}

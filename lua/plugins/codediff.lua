return {
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
    keys = {
      { "<leader>gd", "<cmd>CodeDiff<cr>", desc = "VS Code Diff Explorer" },
      { "<leader>gD", "<cmd>CodeDiff HEAD~1<cr>", desc = "Diff against previous commit" },
    },
    opts = {
      explorer = {
        -- Automatically open the diff as you move up/down with j and k
        auto_open_on_cursor = true,
      },
    },
    config = function(_, opts)
      require("codediff").setup(opts)

      -- Map plain `h` and `l` to switch windows only inside CodeDiff tabs
      vim.api.nvim_create_autocmd("User", {
        pattern = "CodeDiffOpen",
        callback = function(event)
          local wins = vim.api.nvim_tabpage_list_wins(event.data.tabpage)
          for _, win in ipairs(wins) do
            local buf = vim.api.nvim_win_get_buf(win)
            -- Jump left/right between Explorer -> Original -> Modified panes
            vim.keymap.set("n", "h", "<C-w>h", { buffer = buf, silent = true, desc = "CodeDiff Left Pane" })
            vim.keymap.set("n", "l", "<C-w>l", { buffer = buf, silent = true, desc = "CodeDiff Right Pane" })
          end
        end,
      })
    end,
  },
}

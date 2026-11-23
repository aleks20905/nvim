-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- VSCode-style side-by-side diff: vertical split with word-accurate matching
vim.opt.diffopt:append({ "vertical", "linematch:60", "algorithm:patience", "indent-heuristic" })

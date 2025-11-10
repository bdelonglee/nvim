-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- COMMAND replace
map("n", ";", ":", { noremap = true })
map("n", ":", ";", { noremap = true })
map("v", ";", ":", { noremap = true })
map("v", ":", ";", { noremap = true })

-- ESC radditional mappings for Esc
map("i", "jj", "<Esc>")
map("i", "kk", "<Esc>")

-- Search will center on the line it's found in
map("n", "N", "Nzz")
map("n", "n", "nzz")

-- TMUX-NAVIGATION --------------------------------------------------------------
-- NOTE: These override the default Ctrl+hjkl window navigation when tmux is detected
map("n", "<C-h>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateLeft()
end, { desc = "Navigate Left (Tmux)" })
map("n", "<C-j>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateDown()
end, { desc = "Navigate Down (Tmux)" })
map("n", "<C-k>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateUp()
end, { desc = "Navigate Up (Tmux)" })
map("n", "<C-l>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateRight()
end, { desc = "Navigate Right (Tmux)" })
map("n", "<C-\\>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateLastActive()
end, { desc = "Navigate Last Active (Tmux)" })
map("n", "<C-Space>", function()
  require("nvim-tmux-navigation").NvimTmuxNavigateNext()
end, { desc = "Navigate Next (Tmux)" })

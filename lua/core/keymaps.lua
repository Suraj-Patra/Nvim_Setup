vim.g.mapleader = " "

local map = vim.keymap.set

map("n", "<leader>w", ":w<CR>")
map("n", "<leader>q", ":q<CR>")
-- Diagnostics
map("n", "[d", vim.diagnostic.goto_prev, { desc = "Previous diagnostic" })
map("n", "<leader>d", vim.diagnostic.open_float, { desc = "Show diagnostics" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "Next diagnostic" })

map("i", "jk", "<Esc>")
map("n", "<leader>e", function()
   require("nvim-tree.api").tree.toggle()
end, {desc = "Toggle file tree"})


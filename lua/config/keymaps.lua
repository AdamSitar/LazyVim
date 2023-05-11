-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

vim.keymap.set(
  "n",
  "<leader>so",
  require("telescope.builtin").oldfiles,
  { noremap = true, silent = true, desc = "Old Files" }
)

vim.keymap.set("n", "<leader>n", require("nvim-navbuddy").open, { desc = "Navbuddy" })

vim.keymap.set("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon" })
vim.keymap.set("n", "<leader>hn", require("harpoon.ui").nav_next, { desc = "Next mark" })
vim.keymap.set("n", "<leader>hp", require("harpoon.ui").nav_prev, { desc = "Prev mark" })
vim.keymap.set("n", "<leader>he", require("harpoon.mark").add_file, { desc = "Add file" })

vim.keymap.set("n", "<leader>j", require("treesj").toggle)

vim.keymap.set("n", "<leader>sr", "<cmd>SearchBoxReplace confirm=menu<CR>", { desc = "Search and replace" })
vim.keymap.set("n", "<leader>sm", "<cmd>SearchBoxIncSearch <CR>", { desc = "Start search" })

vim.keymap.set({ "n", "v" }, "k", "j")
vim.keymap.set({ "n", "v" }, "j", "k")

vim.keymap.set({ "n", "v" }, "d", '"_d', opts)
vim.keymap.set({ "n", "v" }, "D", '"_D', opts)
vim.keymap.set({ "n", "v" }, "c", '"_c', opts)
vim.keymap.set({ "n", "v" }, "C", '"_C', opts)
vim.keymap.set({ "n", "v" }, "p", "P", opts)

vim.keymap.set("n", "<C-d>", "<C-d>zz" )
vim.keymap.set("n", "<C-u>", "<C-u>zz" )

vim.keymap.set("n", "m", '<cmd>lua require("tsht").move({ side = "end" })<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "M", '<cmd>lua require("tsht").move({ side = "start" })<CR>', { noremap = true, silent = true })

vim.keymap.set("n", "<A-k>", "<cmd>m .+1<cr>==", { desc = "Move down", silent = true })
vim.keymap.set("n", "<A-j>", "<cmd>m .-2<cr>==", { desc = "Move up", silent = true })
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down", silent = true })
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up", silent = true })
vim.keymap.set("v", "<A-k>", ":m '>+1<cr>gv=gv", { desc = "Move down", silent = true })
vim.keymap.set("v", "<A-j>", ":m '<-2<cr>gv=gv", { desc = "Move up", silent = true })

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local opts = { noremap = true, silent = true }

function Map(mode, lhs, rhs, opts)
  local options = { noremap = true, silent = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

Map("n", "<leader>so", require("telescope.builtin").oldfiles, { noremap = true, silent = true, desc = "Oldfiles" })
-- Map("n", "<C-d>", require("telescope.actions").delete_buffer, { noremap = true, silent = true })

Map("n", "<leader>sS", "<cmd>Telescope luasnip<CR>", { noremap = true, silent = true, desc = "Luasnip" })

Map(
  "n",
  '<leader>"',
  -- require("telescope.builtin").registers,
  "<cmd>Telescope neoclip<CR>",
  { noremap = true, silent = true, desc = "Neoclip" }
)

Map(
  "n",
  "<leader>ct",
  -- require("telescope.builtin").registers,
  "<cmd>TSC<CR>",
  { noremap = true, silent = true, desc = "TS Check" }
)

-- Move to window using the <ctrl> hjkl keys
Map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
Map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true })
Map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
Map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })

-- Map("n", "<leader>h", require("harpoon.ui").toggle_quick_menu, { desc = "Harpoon" })
-- Map("n", "<leader>hn", require("harpoon.ui").nav_next, { desc = "Next mark" })
-- Map("n", "<leader>hp", require("harpoon.ui").nav_prev, { desc = "Prev mark" })
-- Map("n", "<leader>he", require("harpoon.mark").add_file, { desc = "Add file" })

Map("n", "<leader>ug", "<cmd>GitBlameToggle <CR>", { desc = "Toggle git blame" })

Map("n", "<leader>sr", "<cmd>SearchBoxReplace confirm=menu<CR>", { desc = "Search and replace" })

Map({ "n", "v" }, "d", '"_d', opts)
Map({ "n", "v" }, "D", '"_diw', opts)
Map({ "n", "v" }, "r", '"_c', opts)
Map({ "n", "v" }, "R", '"_ciw', opts)
Map({ "n", "v" }, "p", '""P', opts)
Map({ "n", "v" }, "P", '"_diwP', opts)

Map("n", "<C-d>", "<C-d>zz")
Map("n", "<C-u>", "<C-u>zz")

Map("n", "<A-k>", "<cmd>m .+1<cr>==", { desc = "Move down", silent = true })
Map("n", "<A-j>", "<cmd>m .-2<cr>==", { desc = "Move up", silent = true })
Map("i", "<A-k>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move down", silent = true })
Map("i", "<A-j>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move up", silent = true })
Map("v", "<A-k>", ":m '>+1<cr>gv=gv", { desc = "Move down", silent = true })
Map("v", "<A-j>", ":m '<-2<cr>gv=gv", { desc = "Move up", silent = true })

local map = vim.keymap.set

-- THE mapping
map("i", "kj","<Esc>")

-- Manage tabs 
map("n", "<C-J>","<C-W><C-J>")
map("n", "<C-K>","<C-W><C-K>")
map("n", "<C-L>","<C-W><C-L>")
map("n", "<C-H>","<C-W><C-H>")

map("n", "<leader>b","<C-^>")

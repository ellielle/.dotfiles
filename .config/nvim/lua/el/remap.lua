vim.g.mapleader = " "

-- Toggle nvimtree
vim.keymap.set("n", "<leader>pv", ":Neotree<CR>")

-- undotree toggle
vim.keymap.set("n", "<leader>u", ":UndotreeShow<CR>")

-- Allows shifting highlighted text up and down in visual mode 
-- fails when trying to move beyond first or last line in buffer
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "Y", "yg$")

-- Keep cursor in place when using 'J' to join lines
vim.keymap.set("n", "J", "mzJ`z")

-- Half screen scrolling that keeps the cursor toward the center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle when jumping between them
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Pass highlighted word into _ register before pasting
vim.keymap.set("x", "<leader>p", [[\"_dP]])

-- Yanks into the system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [[\"+y]])
vim.keymap.set("n", "<leader>Y", [[\"+Y]])

-- Delete into _ register
vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

-- A hack around the differences between C-c vs Esc with vertical edit mode
vim.keymap.set("i", "<C-c>", "<Esc>")

-- pls go away Q
vim.keymap.set("n", "Q", "<nop>")


vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- Binding to format 
vim.keymap.set("n", "<leader>;", vim.lsp.buf.format)

-- Quickfix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- Shortcut to substitute all instances of the text the cursor is over
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Shortcut to make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

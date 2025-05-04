vim.g.mapleader = " " -- easy to reach leader key
vim.keymap.set("n", "-", vim.cmd.Ex) -- need nvim 0.8+

local opts = { silent = true }

-- Neotree
vim.keymap.set("n", "<leader>e", "<cmd>:Neotree toggle<CR>", opts)

vim.keymap.set("n", "<C-s>", "<cmd>:w<CR>", opts) -- quicksave

vim.keymap.set("n", "<leader>m", "<cmd>:Mason<CR>", opts)
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<CR>", opts)

-- Navigate splits with ctrl + arrows
vim.keymap.set("n", "<C-Left>", ":wincmd h<CR>", { silent = true, noremap = true, desc = "Navigate to left split" })
vim.keymap.set("n", "<C-Right>", ":wincmd l<CR>", { silent = true, noremap = true, desc = "Navigate to right split" })
vim.keymap.set("n", "<C-Up>", ":wincmd k<CR>", { silent = true, noremap = true, desc = "Navigate to up split" })
vim.keymap.set("n", "<C-Down>", ":wincmd j<CR>", { silent = true, noremap = true, desc = "Navigate to down split" })

-- Buffers
vim.keymap.set("n", "<Tab>", ":bnext <CR>", { silent = true, noremap = true, desc = "Next buffer" })
vim.keymap.set("n", "<leader>bn", "<cmd> enew <CR>", { silent = true, noremap = true, desc = "New buffer" })
vim.keymap.set("n", "<leader>bd", ":bdelete!<CR>", { silent = true, noremap = true, desc = "Delete current buffer" })

vim.keymap.set(
	"n",
	"<leader>fp",
	"<cmd> Telescope projects <CR>",
	{ silent = true, noremap = true, desc = "Find projects" }
)

--Config notes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"


--General keymaps
local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-h>", "<C-w>h", opts) -- left window
vim.keymap.set("n", "<C-k>", "<C-w>k", opts) -- up window
vim.keymap.set("n", "<C-j>", "<C-w>j", opts) -- down window
vim.keymap.set("n", "<C-l>", "<C-w>l", opts) -- right window

vim.keymap.set("n", "<a-j>", "<esc>:m .+1<cr>==gv", opts) -- move text down
vim.keymap.set("n", "<a-k>", "<esc>:m .-2<cr>==gv", opts) -- move text up

--Telescope keymaps

local builtin_telescope = require('telescope.builtin')

vim.keymap.set("n", "<leader>tlg", builtin_telescope.live_grep)
vim.keymap.set("n", "<leader>tff", builtin_telescope.find_files)
vim.keymap.set("n", "<C-A-g>", builtin_telescope.git_files)

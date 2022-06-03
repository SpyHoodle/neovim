-- Window management
vim.api.nvim_set_keymap('n', '<leader>vs', ':vs<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>hs', ':sp<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>th', ':tabprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tj', ':tabprev<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tk', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tl', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>to', ':tabo<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabc<CR>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<C-f>', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', { noremap = true, silent = true })

-- Custom keymaps
vim.api.nvim_set_keymap('n', '<leader>T', ':sp<CR> :term<CR> :resize 20N<CR> i', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>nh', ':nohl<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'U', ':redo<CR>', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-q>', ':wqa<CR>', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = false })
vim.api.nvim_set_keymap('n', '<Tab>', '<C-w>w', { noremap = false })
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = false })
vim.api.nvim_set_keymap('n', '<leader>r', ':luafile %<CR>:PackerSync<CR>', { noremap = false })

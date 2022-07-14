-- Neat variables
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

-- Custom/special keymaps
keymap('n', '<leader>c', ':sp<CR> :term<CR> :resize 20N<CR> i', term_opts)
keymap('n', '<leader>r', ':luafile %<CR>:PackerSync<CR>', term_opts)
keymap('n', '<leader>h', ':nohl<CR>', term_opts)
keymap('n', '<leader>z', ':ZenMode<CR>:set wrap<CR>:set linebreak<CR>', term_opts)
keymap('n', '<leader>Z', ':ZenMode<CR>:set nowrap<CR>:set nolinebreak<CR>', term_opts)
keymap('n', '<C-c>', ':Telescope colorscheme<CR>', term_opts)
keymap('n', '<C-q>', ':wqa<CR>', term_opts)
keymap('n', '<C-s>', ':w<CR>', term_opts)
keymap('n', 'U', ':redo<CR>', term_opts)

-- Window management
keymap('n', '<leader>vs', ':vs<CR>', opts)
keymap('n', '<leader>hs', ':sp<CR>', opts)
keymap('n', '<leader>tn', ':tabnew<CR>', opts)
keymap('n', '<leader>th', ':tabprev<CR>', opts)
keymap('n', '<leader>tj', ':tabprev<CR>', opts)
keymap('n', '<leader>tk', ':tabnext<CR>', opts)
keymap('n', '<leader>tl', ':tabnext<CR>', opts)
keymap('n', '<leader>to', ':tabo<CR>', opts)
keymap('n', '<leader>tc', ':tabc<CR>', opts)

-- Window navigation
keymap('n', '<C-Tab>', '<C-w>w', opts)
keymap('n', '<C-h>', '<C-w>h', opts)
keymap('n', '<C-j>', '<C-w>j', opts)
keymap('n', '<C-k>', '<C-w>k', opts)
keymap('n', '<C-l>', '<C-w>l', opts)

-- Buffer navigation
keymap('n', '<S-l>', ':bnext<CR>', opts)
keymap('n', '<S-h>', ':bprevious<CR>', opts)

-- Stay in visual mode when indenting
keymap('v', '<', '<gv', opts)
keymap('v', '>', '>gv', opts)

-- When moving up or down, move physical lines not file lines
keymap('n', 'j', 'gj', opts)
keymap('n', 'k', 'gk', opts)

-- NvimTree
keymap('n', '<C-n>', ':NvimTreeToggle<CR>', term_opts)

-- Telescope
keymap('n', '<C-f>', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
keymap('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
keymap('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
keymap('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
keymap('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)

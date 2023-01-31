-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Open file location folder
vim.keymap.set('n', '<leader>pf', vim.cmd.Ex, { desc = 'Open Folder' })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float)
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

-- Remap to move code block around
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move code block down' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move code block up' })

vim.keymap.set('n', 'J', 'mzJ`z', { desc = 'Keep cursor at line begin' })

-- Cursor jump
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Keep cursor at the middle when page jump down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Keep cursor at the middle when page jump up' })

-- Cursor jump search
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Keep cursor at the middle when search down' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Keep cursor at the middle when search up' })

-- Greatest remap ever
vim.keymap.set('n', '<leader>p', '\"_dP')

-- next greatest remap ever : asbjornHaland
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")


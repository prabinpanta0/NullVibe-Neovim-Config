-- Keymaps for VS Code-like experience
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
-- File explorer toggle
map('n', '<C-b>', ':NvimTreeToggle<CR>', opts)
-- Fuzzy finder
map('n', '<C-p>', ':Telescope find_files<CR>', opts)
-- Terminal toggle (Alt+Shift+t)
vim.api.nvim_set_keymap('n', '<A-S-t>', ':ToggleTerm<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-S-t>', '<Esc>:ToggleTerm<CR>', { noremap = true, silent = true })
-- Remove previous Alt+t mapping if present
vim.api.nvim_set_keymap('n', '<A-t>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-t>', '', { noremap = true, silent = true })
-- Buffer navigation
map('n', '<S-l>', ':BufferLineCycleNext<CR>', opts)
map('n', '<S-h>', ':BufferLineCyclePrev<CR>', opts)
-- Save file (Ctrl+S)
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-s>', '<Esc>:w<CR>a', { noremap = true, silent = true })
-- Comment toggle (Ctrl+/)
vim.api.nvim_set_keymap('n', '<C-/>', 'gcc', { noremap = false })
vim.api.nvim_set_keymap('v', '<C-/>', 'gc', { noremap = false })
-- Undo/Redo
vim.api.nvim_set_keymap('n', '<C-z>', 'u', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-z>', '<Esc>ua', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-y>', '<C-r>', { noremap = true })
vim.api.nvim_set_keymap('i', '<C-y>', '<Esc><C-r>a', { noremap = true })
-- Find in file (Ctrl+F) - now searches only in current buffer
vim.api.nvim_set_keymap('n', '<C-f>', ':Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-f>', '<Esc>:Telescope current_buffer_fuzzy_find<CR>', { noremap = true, silent = true })
-- Replace in file
vim.api.nvim_set_keymap('n', '<C-r>', ':%s//g<Left><Left>', { noremap = true })
-- Global search (Alt+Shift+F)
vim.api.nvim_set_keymap('n', '<A-S-f>', ':Telescope live_grep<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<A-S-f>', '<Esc>:Telescope live_grep<CR>', { noremap = true, silent = true })
-- Close buffer (Ctrl+W)
vim.api.nvim_set_keymap('n', '<C-w>', ':bd<CR>', { noremap = true, silent = true })
-- Next/Previous buffer (Ctrl+Tab/Ctrl+Shift+Tab)
vim.api.nvim_set_keymap('n', '<C-Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':BufferLineCyclePrev<CR>', { noremap = true, silent = true })
-- New file (Ctrl+N)
vim.api.nvim_set_keymap('n', '<C-n>', ':enew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<C-n>', '<Esc>:enew<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-`>', '', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-f>', '', { noremap = true, silent = true })
-- Open new Neovim window (Ctrl+Shift+N) - launches new terminal window with nvim (if possible)
-- This is terminal/OS dependent, so not mapped by default

-- Enter insert mode when opening a file (like VS Code)
vim.api.nvim_create_autocmd('BufReadPost', {
  pattern = '*',
  callback = function()
    if vim.fn.line('.') == 1 and vim.fn.col('.') == 1 and vim.bo.modifiable then
      vim.cmd('startinsert')
    end
  end,
})

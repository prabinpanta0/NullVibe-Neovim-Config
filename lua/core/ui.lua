-- UI plugins and configuration
-- File explorer setup
require('nvim-tree').setup{}
-- Statusline setup
require('lualine').setup{}
-- Bufferline setup
require('bufferline').setup{}
-- Icon support (auto-setup)
require('nvim-web-devicons').setup{}

-- Enable mouse support
vim.opt.mouse = 'a'

-- Setup which-key
require('which-key').setup{}

-- Setup Comment.nvim
require('Comment').setup{}

-- Setup alpha-nvim (dashboard)
require('alpha').setup(require('alpha.themes.startify').config)

-- Setup nvim-cmp (autocomplete)
local cmp = require('cmp')
cmp.setup({
  mapping = {
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'buffer' },
    { name = 'path' },
  },
})

-- Setup LSP (example: pyright for Python)
require('lspconfig').pyright.setup{}
-- Add more LSP servers as needed

-- Setup nvim-autopairs
require('nvim-autopairs').setup{}

-- Setup LuaSnip (snippets)
require('luasnip').config.set_config({
  history = true,
  updateevents = 'TextChanged,TextChangedI',
})

-- Setup nvim-notify
vim.notify = require('notify')

-- Setup trouble.nvim (problems/diagnostics panel)
require('trouble').setup{}

-- Setup toggleterm.nvim (integrated terminal)
require('toggleterm').setup{}

-- Easy window navigation (Ctrl+h/j/k/l)
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })

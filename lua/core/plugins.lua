-- Plugin management using lazy.nvim
require('lazy').setup({
  -- File explorer
  { 'nvim-tree/nvim-tree.lua' },
  -- Statusline
  { 'nvim-lualine/lualine.nvim' },
  -- Bufferline (tabs)
  { 'akinsho/bufferline.nvim' },
  -- Fuzzy finder
  { 'nvim-telescope/telescope.nvim', dependencies = { 'nvim-lua/plenary.nvim' } },
  -- Git integration
  { 'lewis6991/gitsigns.nvim' },
  -- Terminal integration
  { 'akinsho/toggleterm.nvim' },
  -- Icon support
  { 'nvim-tree/nvim-web-devicons' },
  -- Theme plugins (for hybrid setup)
  { 'morhetz/gruvbox' },
  { 'altercation/vim-colors-solarized' },
  -- Command palette & keybinding hints
  { 'folke/which-key.nvim' },
  -- Commenting
  { 'numToStr/Comment.nvim' },
  -- Dashboard
  { 'goolord/alpha-nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  -- Autocompletion
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' },
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' },
  -- LSP
  { 'neovim/nvim-lspconfig' },
  -- Multi-cursor editing
  { 'mg979/vim-visual-multi' },
  -- Problems/diagnostics panel
  { 'folke/trouble.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  -- Auto-pairs for brackets/quotes
  { 'windwp/nvim-autopairs' },
  -- Snippet support
  { 'L3MON4D3/LuaSnip' },
  -- Notification popups
  { 'rcarriga/nvim-notify' },
})

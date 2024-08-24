return {
  {
    'catppuccin/nvim',
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'catppuccin-macchiato'
    end,
  },
  'ellisonleao/gruvbox.nvim',
  'ayu-theme/ayu-vim',
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
  },
  {
    "neanias/everforest-nvim",
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      -- require("everforest").setup({
      --   -- Your config here
      -- })
      -- vim.cmd.colorscheme 'everforest'
    end,
  }



}

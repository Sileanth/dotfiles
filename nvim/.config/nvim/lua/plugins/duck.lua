return {

  {
    'tamton-aquib/duck.nvim',
    config = function()
      vim.keymap.set('n', '<leader>dd', function() require("duck").hatch() end, { desc = "hatch duck on stack" })
      vim.keymap.set('n', '<leader>dk', function() require("duck").cook() end, { desc = "delete duck from stack" })
    end
  }

}

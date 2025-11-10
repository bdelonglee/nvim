return {
  'kevinhwang91/nvim-bqf',
  ft = 'qf',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    {
      'junegunn/fzf',
      build = function()
        vim.fn['fzf#install']()
      end,
    },
  },
  opts = {
    preview = {
      win_height = 25,
      win_vheight = 25,
      winblend = 05,
    },
  },
}

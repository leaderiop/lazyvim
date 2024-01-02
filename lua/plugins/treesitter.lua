return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = {
    "HiPhish/nvim-ts-rainbow2",
    "windwp/nvim-ts-autotag",
  },
  build = ":TSUpdate",
  config = function()
    local configs = require('nvim-treesitter.configs')
    configs.setup({
      ensure_installed = {"lua","javascript"},
      auto_install= true,
      highlight = { enable = true },
      indent = { enable = true },
      rainbow = {
        enable = true,
        disable = { 'jsx', 'cpp' },
        query = 'rainbow-parens',
        strategy = require('ts-rainbow').strategy.global,
      },
      autotag = {
        enable = true,
      },
    })
  end
}

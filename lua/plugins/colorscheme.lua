return {
  "folke/tokyonight.nvim",
  priority = 1000, -- load before everything else
  config = function()
    vim.cmd.colorscheme("tokyonight-night")
  end,
}


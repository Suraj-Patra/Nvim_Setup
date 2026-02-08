return {
  "windwp/nvim-autopairs",
  event = "InsertEnter",
  config = function()
    require("nvim-autopairs").setup({
      check_ts = false, -- uses treesitter when available
      fast_wrap = {},
    })
  end,
}


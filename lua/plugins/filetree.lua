return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  cmd = { "NvimTreeToggle", "NvimTreeOpen" },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 25,
      },
      renderer = {
        icons = {
          show = {
            git = false,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },
      filters = {
        dotfiles = false,
      },
    })
  end,
}


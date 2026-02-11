return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<leader>t", desc = "Toggle terminal" },
  },
  config = function()
    require("toggleterm").setup({
      size = function(term)
        if term.direction == "horizontal" then
          return 13
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.3
        end
      end,
      open_mapping = [[<leader>t]],
      hide_numbers = true,
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      terminal_mappings = true,
      persist_size = true,
      direction = "vertical", -- default
      close_on_exit = true,
      shell = vim.o.shell,
    })
  end,
}


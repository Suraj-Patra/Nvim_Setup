return {
  "L3MON4D3/LuaSnip",
  dependencies = { "saadparwaiz1/cmp_luasnip" },
  event = "InsertEnter",
  config = function()
    local ls = require("luasnip")

    -- Optional but very useful
    ls.config.set_config({
      history = true,
      updateevents = "InsertLeave",
      enable_autosnippets = true,
    })

    -- Load snippets from lua folder
    require("luasnip.loaders.from_lua").lazy_load({
      paths = vim.fn.stdpath("config") .. "/lua/snippets",
    })
  end,
}


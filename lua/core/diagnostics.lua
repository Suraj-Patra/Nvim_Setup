vim.diagnostic.config({
  virtual_text = true,     -- inline text (errors on the same line)
  signs = true,            -- gutter symbols (E, W, etc.)
  underline = true,        -- underline problem code
  update_in_insert = false, -- don’t distract while typing
  severity_sort = true,    -- show most severe first
  float = {
    border = "rounded",
    source = "always",
  },
})


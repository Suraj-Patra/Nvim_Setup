return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    -- Keymaps when LSP attaches
    local on_attach = function(_, bufnr)
      local map = vim.keymap.set
      local opts = { buffer = bufnr }

      map("n", "gd", vim.lsp.buf.definition, opts)
      map("n", "gD", vim.lsp.buf.declaration, opts)
      map("n", "K", vim.lsp.buf.hover, opts)
      map("n", "gi", vim.lsp.buf.implementation, opts)
      map("n", "<leader>rn", vim.lsp.buf.rename, opts)
      map("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end

    -- Capabilities (completion support)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    local ok, cmp_lsp = pcall(require, "cmp_nvim_lsp")
    if ok then
      capabilities = cmp_lsp.default_capabilities(capabilities)
    end

    -- New Neovim 0.11+ LSP config
    vim.lsp.config.clangd = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    vim.lsp.config.pyright = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    vim.lsp.config.gopls = {
      on_attach = on_attach,
      capabilities = capabilities,
    }

    -- Enable servers
    vim.lsp.enable({ "clangd", "pyright", "gopls" })
  end,
}

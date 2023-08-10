return {
  "jose-elias-alvarez/null-ls.nvim",
  autostart = true,
  opts = function(_, config)
    -- config variable is the default configuration table for the setup function call
    local null_ls = require "null-ls"

    -- Check supported formatters and linters
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
    -- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
    config.sources = {
      -- Set a formatter
      null_ls.builtins.formatting.prettier,
      null_ls.builtins.diagnostics.eslint_d,
      null_ls.builtins.diagnostics.tsc,
    }

    config.on_attach = require("astronvim.utils.lsp").on_attach

    return config -- return final config table
  end,
  -- opts = function() return { on_attach = require("astronvim.utils.lsp").on_attach } end,
}

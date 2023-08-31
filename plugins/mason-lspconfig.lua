-- use mason-lspconfig to configure LSP installations
return {
  "williamboman/mason-lspconfig.nvim",
  opts = {
    automatic_installation = true,
    ensure_installed = {
      -- available servers here: https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
      "clangd",
      "cssls",
      "html",
      "marksman",
      "jsonls",
      "pyright",
      "sqlls",
      "lua_ls",
      "tsserver",
      "yamlls",
    },
  },
}

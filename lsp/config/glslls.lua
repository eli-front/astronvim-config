-- glslls config set to opengl
-- https://github.com/svenstaro/glsl-language-server
-- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md#glslls for config
return {
  capabilities = {
    offsetEncoding = { "utf-8", "utf-16" },
    textDocument = {
      completion = {
        editsNearCursor = true,
      },
    },
  },
  cmd = { "glslls", "--stdin", "--target-env", "opengl" },
  filetypes = { "glsl", "hlsl", "vert", "tesc", "tese", "geom", "frag", "comp" },
}

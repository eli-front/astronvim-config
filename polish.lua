return function()
  vim.filetype.add {
    extension = {
      ["frag"] = "glsl",
      ["vert"] = "glsl",
    },
  }
end

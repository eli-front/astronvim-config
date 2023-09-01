return function()
  local web_devicons = require "nvim-web-devicons"

  vim.filetype.add {
    extension = {
      ["frag"] = "glsl",
      ["vert"] = "glsl",
    },
  }

  web_devicons.set_icon {
    ["frag"] = {
      icon = "△",
      color = "#00FF00",
      name = "Frag",
    },
  }
end

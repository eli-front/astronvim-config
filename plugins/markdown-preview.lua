return {
  {
    "vim-pandoc/vim-pandoc",
  },
  {
    "vim-pandoc/vim-pandoc-syntax",
  },
  { "nvim-orgmode/orgmode", config = function() require("orgmode").setup {} end },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    -- build = "cd app && yarn install",
    build = ":call mkdp#util#install()",
  },
}

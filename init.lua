return {
  -- Configure AstroNvim updates
  updater = {
    remote = "origin", -- remote to use
    channel = "stable", -- "stable" or "nightly"
    version = "latest", -- "latest", tag name, or regex search like "v1.*" to only do updates before v2 (STABLE ONLY)
    branch = "nightly", -- branch name (NIGHTLY ONLY)
    commit = nil, -- commit hash (NIGHTLY ONLY)
    pin_plugins = nil, -- nil, true, false (nil will pin plugins on stable only)
    skip_prompts = false, -- skip prompts about breaking changes
    show_changelog = true, -- show the changelog after performing an update
    auto_quit = false, -- automatically quit the current session after a successful update
    remotes = { -- easily add new remotes to track
    },
  },
  colorscheme = "catppuccin",
  diagnostics = {
    virtual_text = true,
    underline = true,
  },
  lsp = {
    config = {
      emmet_ls = {
        filetypes = {
          "astro",
          "css",
          "eruby",
          "html",
          "htmldjango",
          "javascriptreact",
          "less",
          "php",
          "pug",
          "sass",
          "scss",
          "svelte",
          "typescriptreact",
          "vue",
        },
      },
    },
    -- customize lsp formatting options
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
        allow_filetypes = { -- enable format on save for specified filetypes only
          -- "go",
        },
        ignore_filetypes = { -- disable format on save for specified filetypes
          -- "python",
        },
      },
      disabled = { -- disable formatting capabilities for the listed language servers
        -- "sumneko_lua",
      },
      timeout_ms = 2000, -- default format timeout
      -- filter = function(client) -- fully override the default formatting function
      --   return true
      -- end
    },
    -- enable servers that you already have installed without mason
    servers = {
      -- "pyright"
    },
  },
  -- Configure require("lazy").setup() options
  lazy = {
    defaults = { lazy = true },
    performance = {
      rtp = {
        -- customize default disabled vim plugins
        disabled_plugins = { "tohtml", "gzip", "matchit", "zipPlugin", "netrwPlugin", "tarPlugin" },
      },
    },
  },
  -- This function is run last and is a good place to configuring
  -- augroups/autocommands and custom filetypes also this just pure lua so
  -- anything that doesn't fit in the normal config locations above can go here
  polish = function()
    require("notify").setup {
      background_colour = "#000000",
      level = "info",
      timeout = 1000,
      max_width = 80,
      max_height = 80,
      icons = {
        ERROR = "",
        WARN = "",
        INFO = "",
        DEBUG = "",
        TRACE = "✎",
      },
      stages = {
        ERROR = "background",
        WARN = "background",
        INFO = "background",
        DEBUG = "background",
        TRACE = "background",
      },
      on_open = function()
        vim.cmd "setlocal nocursorcolumn"
        vim.cmd "setlocal nocursorline"
      end,
      on_close = function()
        vim.cmd "setlocal cursorcolumn"
        vim.cmd "setlocal cursorline"
      end,
      render = "notification#render",
      fps = 60,
      minimum_width = 5000,
      top_down = false,
    }

    -- vim.cmd ":highlight Normal guibg=NONE"
    -- make background color transparent
    -- require("copilot").setup {
    --   panel = {
    --     auto_refresh = false,
    --     keymap = {
    --       accept = "<C-j>",
    --       jump_prev = "[[",
    --       jump_next = "]]",
    --       refresh = "gr",
    --       open = "<M-CR>",
    --     },
    --   },
    --   suggestion = {
    --     auto_trigger = true,
    --     keymap = {
    --       accept = "<C-j>",
    --       prev = "<C-[>",
    --       next = "<C-]>",
    --       dismiss = "<C-]>",
    --     },
    --   },
    -- }
  end,
}
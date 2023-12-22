return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    event = "VeryLazy",
  },
  {
    "sickill/vim-monokai",
    event = "VeryLazy",
  },
  {
    "patstockwell/vim-monokai-tasty",
    event = "VeryLazy",
  },
  {
    "joshdick/onedark.vim",
    event = "VeryLazy",
  },
  {
    "olimorris/onedarkpro.nvim",
    event = "VeryLazy",
  },
  {
    "tomasr/molokai",
    event = "VeryLazy",
  },
  {
    "ellisonleao/gruvbox.nvim",
    event = "VeryLazy",
  },
  {
    "projekt0n/github-nvim-theme",
    event = "VeryLazy",
  },
  {
    "iCyMind/NeoSolarized",
    dependencies = {
      "tjdevries/colorbuddy.nvim",
    },
    config = function()
      local status, n = pcall(require, "neosolarized")
      if (not status) then return end

      n.setup({
        comment_italics = true,
      })

      local cb = require('colorbuddy.init')
      local Color = cb.Color
      local colors = cb.colors
      local Group = cb.Group
      local groups = cb.groups
      local styles = cb.styles

      Color.new('white', '#ffffff')
      Color.new('black', '#000000')
      Group.new('Normal', colors.base1, colors.NONE, styles.NONE)
      Group.new('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
      Group.new('CursorLineNr', colors.yellow, colors.black, styles.NONE, colors.base1)
      Group.new('Visual', colors.none, colors.base03, styles.reverse)
      Group.new('NormalFloat', colors.base1, colors.NONE, styles.NONE)

      local cError = groups.Error.fg
      local cInfo = groups.Information.fg
      local cWarn = groups.Warning.fg
      local cHint = groups.Hint.fg

      Group.new("DiagnosticVirtualTextError", cError, cError:dark():dark():dark():dark(), styles.NONE)
      Group.new("DiagnosticVirtualTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
      Group.new("DiagnosticVirtualTextWarn", cWarn, cWarn:dark():dark():dark(), styles.NONE)
      Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
      Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cError)
      Group.new("DiagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
      Group.new("DiagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
      Group.new("DiagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)

      Group.new("HoverBorder", colors.yellow, colors.none, styles.NONE)
    end
  },
  {
    "luisiacc/gruvbox-baby",
    event = "VeryLazy",
  },
  {
    "folke/tokyonight.nvim",
    config = function()
      require("tokyonight").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        style = "storm",        -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "storm",  -- The theme is used when the background is set to light
        transparent = false,    -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
        styles = {
          -- Style to be applied to different syntax groups
          -- Value is any valid attr-list value for `:help nvim_set_hl`
          comments = { italic = true },
          keywords = { italic = true },
          functions = {},
          variables = {},
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark",              -- style for sidebars, see below
          floats = "dark",                -- style for floating windows
        },
        sidebars = { "qf", "help" },      -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        day_brightness = 0.3,             -- Adjusts the brightness of the colors of the **Day** style. Number between 0 and 1, from dull to vibrant colors
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false,             -- dims inactive windows
        lualine_bold = false,             -- When `true`, section headers in the lualine theme will be bold

        --- You can override specific color groups to use other groups or a hex color
        --- function will be called with a ColorScheme table
        ---@param colors ColorScheme
        on_colors = function(colors) end,

        --- You can override specific highlights to use other groups or a hex color
        --- function will be called with a Highlights and ColorScheme table
        ---@param highlights Highlights
        ---@param colors ColorScheme
        on_highlights = function(hl, c)
          local prompt = "#2d3149"
          hl.TelescopeNormal = {
            bg = c.bg_dark,
            fg = c.fg_dark,
          }
          hl.TelescopeBorder = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopePromptNormal = {
            bg = prompt,
          }
          hl.TelescopePromptBorder = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePromptTitle = {
            bg = prompt,
            fg = prompt,
          }
          hl.TelescopePreviewTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
          hl.TelescopeResultsTitle = {
            bg = c.bg_dark,
            fg = c.bg_dark,
          }
        end,
      })
    end,
    event = "VeryLazy"
  },
  -- {
  --   "Mofiqul/dracula.nvim",
  --   event = "VeryLazy"
  -- },
  {
    "maxmx03/dracula.nvim",
    -- opts = {},
    event = "VeryLazy"
  },
  {
    "maxmx03/fluoromachine.nvim",
    -- config = function()
    --   local fluoromachine = require('fluoromachine')
    --   fluoromachine.setup({
    --     theme = 'retrowave', -- fluoromachine, retrowave, delta
    --   })
    -- end,
    event = "VeryLazy"
  },
  {
    "catppuccin/nvim",
    optional = true,
    opts = { integrations = { leap = true } },
  },
  {
    "catppuccin/nvim",
    event = "VeryLazy"
  },
  {
    "lunarvim/horizon.nvim",
    event = "VeryLazy"
  },
  {
    "Shatur/neovim-ayu",
    event = "VeryLazy"
  }
}

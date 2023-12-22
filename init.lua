return {
  lsp = {
    formatting = {
      -- control auto formatting on save
      format_on_save = {
        enabled = true, -- enable or disable format on save globally
      },
      disabled = {      -- disable formatting capabilities for the listed language servers
        "tsserver",
        "typescript-language-server",
      },
      timeout_ms = 1000, -- default format timeout
    },
  },
  polish = function()

    -- Telescope ignore large fileslocal previewers = require('telescope.previewers')
    local previewers = require('telescope.previewers')
    local new_maker = function(filepath, bufnr, opts)
      opts = opts or {}

      filepath = vim.fn.expand(filepath)
      vim.loop.fs_stat(filepath, function(_, stat)
        if not stat then return end
        if stat.size > 100000 then
          return
        else
          previewers.buffer_previewer_maker(filepath, bufnr, opts)
        end
      end)
    end
    require('telescope').setup {
      defaults = {
        buffer_previewer_maker = new_maker,
      }
    }

    -- Remove notify notifications
    vim.notify = function(_, _, _) end
    local notify = require "notify"
    local currNot = vim.notify
    if currNot == notify then
      vim.notify = function(_, _, _)

      end
    end

    -- Git signs setup
    require('gitsigns').setup {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "▎" },
        topdelete = { text = "契" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },

      current_line_blame = true, -- Toggle with `:Gitsigns toggle_current_line_blame`
      current_line_blame_opts = {
        virt_text = true,
        virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
        delay = 0,
        ignore_whitespace = false,
      },
      current_line_blame_formatter = '<author> (<author_time:%R>) -  <summary>',
    }

  end,
}

local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
local oil = require("oil")

return {
  n = {
    ["<leader>fw"] = { "<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<cr>", desc = "Enhanced grep" },
    ["<S-l>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end },
    ["<S-h>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end },
    -- ["Y"] = { "yy" },
    ["<leader>x"] = { ":bp<bar>sp<bar>bn<bar>bd<CR>" },
    ["<leader>aa"] = mark.add_file,
    ["<leader>am"] = ui.toggle_quick_menu,
    ["<leader>1"] = function() ui.nav_file(1) end,
    ["<leader>2"] = function() ui.nav_file(2) end,
    ["<leader>3"] = function() ui.nav_file(3) end,
    ["<leader>4"] = function() ui.nav_file(4) end,
    ["K"] = "<cmd>Lspsaga hover_doc<CR>",
    ["gd"] = "<cmd>Lspsaga goto_definition<CR>",
    ["gD"] = "<cmd>Lspsaga peek_definition<CR>",
    ["gi"] = "<cmd>Lspsaga finder<CR>",
    ["<leader>r"] = "<cmd>Lspsaga rename<CR>",
    ["<leader>gn"] = "<cmd>Lspsaga diagnostic_jump_next<CR>",
    ["<leader><S-k>"] = "<cmd>Lspsaga show_cursor_diagnostics<CR>",
    ["<C-j>"] = "<down>",
    ["<C-k>"] = "<up>",
    ["<leader>c"] = "",
    ["-"] = oil.open,
  },
  v = {
    ["J"] = { ":m '>+1<CR>gv=gv" },
    ["K"] = { ":m '<-2<CR>gv=gv" },
    ["D"] = { "_D" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}

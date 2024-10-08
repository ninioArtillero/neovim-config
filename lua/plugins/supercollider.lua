return {
  'davidgranstrom/scnvim',
}

-- The following configuration sets up mappings,
-- configures the eval "flash" color to be
-- the same highlight group as hl-IncSearch and displays the post window
-- as a floating window.
--
-- Reference:
-- -- https://github.com/davidgranstrom/scnvim/wiki/Configuration
--[[
local scnvim = require 'scnvim'
local map = scnvim.map
local map_expr = scnvim.map_expr

scnivm.setup({
  ensure_installed = true,
  sclang = {
    cmd = nil,
    args = {},
  },
  keymaps = {
    ['<M-e>'] = map('editor.send_line', {'i', 'n'}),
    ['<C-e>'] = {
      map('editor.send_block', {'i', 'n'}),
      map('editor.send_selection', 'x'),
    },
    ['<CR>'] = map('postwin.toggle'),
    ['<M-CR>'] = map('postwin.toggle', 'i'),
    ['<M-L>'] = map('postwin.clear', {'n', 'i'}),
    ['<C-k>'] = map('signature.show', {'n', 'i'}),
    ['<F12>'] = map('sclang.hard_stop', {'n', 'x', 'i'}),
    ['<leader>st'] = map('sclang.start'),
    ['<leader>sk'] = map('sclang.recompile'),
    ['<F1>'] = map_expr('s.boot'),
    ['<F2>'] = map_expr('s.meter'),
  },
  documentation = {
    cmd = nil,
    horizontal = true,
    direction = 'top',
    keymaps = true,
  },
  postwin = {
    highlight = true,
    auto_toggle_error = true,
    scrollback = 5000,
    horizontal = false,
    direction = 'right',
    size = nil,
    fixed_size = nil,
    keymaps = nil,
    float = {
      enabled = false,
      row = 0,
      col = function()
        return vim.o.columns
      end,
      width = 64,
      height = 14,
      config = {
        border = 'single',
      },
      callback = function(id)
        vim.api.nvim_win_set_option(id, 'winblend', 10)
      end,
    },
  },
  editor = {
    force_ft_supercollider = true,
    highlight = {
      color = 'TermCursor', --'IncSearch'
      type = 'flash',
      flash = {
        duration = 100,
        repeats = 2,
      },
      fade = {
        duration = 375,
      },
    },
    signature = {
      float = true,
      auto = true,
    },
  },
  snippet = {
    engine = {
      name = 'luasnip',
      options = {
        descriptions = true,
      },
    },
  },
  statusline = {
    poll_interval = 1,
  },
  extensions = {},
})
--]]

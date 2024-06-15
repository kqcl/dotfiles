require "nvchad.options"

-- add yours here!

vim.opt.relativenumber = true
vim.opt.tabstop = 4

require('nvim-tree').setup({
  actions = {
    open_file = {
      quit_on_open = true,
    },
  },
})

vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())
-- vim.diagnostic.config({ virtual_text = true })

vim.api.nvim_set_hl(0, "LspInlayHint", { bg = "NONE", fg = "#9DA9A0" })

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local o = vim.o


o.noswapfile = true
o.clipboard = 'unnamed'
o.cursorline = false
o.hlsearch = true
o.number = true


-- make tabs equal two spaces
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.shiftround = true
o.expandtab = true


-- package manager init
-- to add plugins, see lua/plugins.lua
require('packagemanager')
require("lazy").setup({
  spec = {
    require('plugins')
  },
  install = { colorscheme = { "habamax" } },
  checker = { 
    enabled = false,
    notify = false
  },
})

-- color scheme
vim.cmd[[colorscheme tokyonight]]

-- keymap for neotree
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>')

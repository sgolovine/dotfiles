local o = vim.o


o.noswapfile = true
o.clipboard = 'unnamed'
o.cursorline = false
o.hlsearch = true
o.number = true


o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.shiftround = true
o.expandtab = true


require('packagemanager')
require("lazy").setup({
  spec = {
    require('plugins')
  },
  install = { colorscheme = { "habamax" } },
  checker = { enabled = true },
})

vim.cmd[[colorscheme tokyonight]]
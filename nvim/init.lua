local o = vim.o


-- o.noswapfile = true
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
vim.keymap.set('n', '<C-b>', '<Cmd>Neotree toggle<CR>', { desc = 'Toggle Neo-tree sidebar' })

local function focus_editor_from_neotree()
  if vim.bo.filetype ~= 'neo-tree' then
    return
  end

  for _, win in ipairs(vim.api.nvim_tabpage_list_wins(0)) do
    local buf = vim.api.nvim_win_get_buf(win)
    if vim.api.nvim_buf_get_option(buf, 'filetype') ~= 'neo-tree' then
      vim.api.nvim_set_current_win(win)
      return
    end
  end
end

vim.keymap.set('n', '<C-j>', focus_editor_from_neotree, { desc = 'Leave Neo-tree to editor' })
vim.keymap.set('n', '<C-k>', focus_editor_from_neotree, { desc = 'Leave Neo-tree to editor' })

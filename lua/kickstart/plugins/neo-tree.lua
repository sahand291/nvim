-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<Leader>ee', ':Neotree toggle<CR>', desc = 'NeoTree toggle', silent = true },
    { '<Leader>ef', ':Neotree reveal<CR>', desc = 'NeoTree toggle', silent = true },
    { '<Leader>ec', 'z', desc = 'NeoTree toggle', silent = true },
    { '<Leader>eg', ':Neotree git_status<CR>', desc = 'NeoTree git status - left', silent = true },
    { '<Leader>egf', ':Neotree float git_status<CR>', desc = 'NeoTree git status - float', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}

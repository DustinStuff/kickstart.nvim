return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = { 'nvim-lua/plenary.nvim' },

  init = function()
    local harpoon = require 'harpoon'

    harpoon:setup()

    vim.keymap.set('n', '<leader>ga', function()
      harpoon:list():add()
    end, { desc = 'Harpoon [a]dd' })
    vim.keymap.set('n', '<leader>gh', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end)

    vim.keymap.set('n', '<leader>gp', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon [P]revious' })
    vim.keymap.set('n', '<leader>gn', function()
      harpoon:list():next()
    end, { desc = 'Harpoon [N]ext' })
  end,
}

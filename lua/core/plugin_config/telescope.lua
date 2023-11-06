require('telescope').setup({
  find_command = { "rg", "--files", "--sort", "path" },

  extensions = {

    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    },

    file_browser = {
      -- theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    }

  }

})

local builtin = require('telescope.builtin')

require('telescope').load_extension('fzf')
require("telescope").load_extension "file_browser"

-- vim.keymap.set('n', '<Space>f', builtin.find_files, {no_ignore=true})
vim.keymap.set('n', '<Space>a', function() builtin.find_files({no_ignore = true}) end, {})
vim.keymap.set('n', '<Space>f', builtin.find_files, {})
vim.keymap.set('n', '<Space>b', builtin.buffers, {})
vim.keymap.set('n', '<Space><Space>', builtin.oldfiles, {})
vim.keymap.set('n', '<Space>g', builtin.live_grep, {})
vim.keymap.set('n', '<Space>h', builtin.help_tags, {})

-- vim.api.nvim_set_keymap("n", "<space>p", ":Telescope file_browser<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<space>p", ":Telescope file_browser path=%:p:h select_buffer=true<CR>", { noremap = true })

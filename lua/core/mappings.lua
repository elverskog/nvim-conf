local M = {}

M.general = {
  n = {
    -- ["<C-h>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    -- ["<C-l>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    -- ["<C-j>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    -- ["<C-k>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

    ["<A-Left>"] = { "<cmd> TmuxNavigateLeft<CR>", "window left" },
    ["<A-Right>"] = { "<cmd> TmuxNavigateRight<CR>", "window right" },
    ["<A-Down>"] = { "<cmd> TmuxNavigateDown<CR>", "window down" },
    ["<A-Up>"] = { "<cmd> TmuxNavigateUp<CR>", "window up" },

  }
}

return M

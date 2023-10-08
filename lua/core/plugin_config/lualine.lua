local colors = {
  bg_dark = "#000000",
  bg = "#000000",
  grey = "#777777",
  white = "#ffffff",
}


require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'drybones',
    component_separators = { left = '|', right = '|'},
    section_separators = { left = '', right = ''},
    disabled_filetypes = {
      statusline = {},
      winbar = {},
    },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {
      {
        'buffers',
        show_filename_only = true,
        hide_filename_extension = false,
        show_modified_status = true,
        mode = 0,
        max_length = vim.o.columns * 2 / 3,
        -- use_mode_colors = false,
        -- buffers_color = {
        --   active = { bg = colors.bg, fg = colors.white },
        --   inactive = { bg = colors.bg_dark, fg = colors.grey },
        -- },
        symbols = {
          modified = '●',
          alternate_file = '#',
          directory =  '',
        },
      }
    },
    lualine_x = {
      {
        'encoding',
        use_mode_colors = false,
        encoding_color = {
          active = { bg = colors.bg, fg = colors.white },
          inactive = { bg = colors.bg_dark, fg = colors.grey },
        },
      },
      {
        'fileformat',
        use_mode_colors = false,
        fileformat_color = {
          active = { bg = colors.bg, fg = colors.white },
          inactive = { bg = colors.bg_dark, fg = colors.grey },
        },
      },
      'filetype'
    },
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
}

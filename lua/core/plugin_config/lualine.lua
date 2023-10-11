-- local colors = {
--   bg_dark = "#000000",
--   bg = "#000000",
--   grey = "#777777",
--   white = "#ffffff",
-- }

local colors = {
  bg            = '#1b1918',
  bglight       = '#23211f',
  fg            = '#898988',
  fgactive      = '#b4bdc3',
  water         = '#6099c0',
  sky           = '#66a5ad',
  wood          = '#b77e64',
  blossom       = '#b279a7',
  reed          = '#a7a264',
  leaf          = '#a7a264',
  rose          = '#de6e7c',
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
        use_mode_colors = false,
        buffers_color = {
          active = { bg = colors.bglight, fg = colors.fgactive },
          inactive = { bg = colors.bglight, fg = colors.fg },
        },
        symbols = {
          modified = '●',
          alternate_file = '#',
          directory =  '',
        },
      }
    },
    lualine_x = {'encoding', 'fileformat', 'filetype'},
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

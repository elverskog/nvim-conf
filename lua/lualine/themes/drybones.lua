local colors = {
  bg            = '#1b1918',
  bglight       = '#23211f',
  fg            = '#898988',
  water         = '#6099c0',
  sky           = '#66a5ad',
  wood          = '#b77e64',
  blossom       = '#b279a7',
  reed          = '#a7a264',
  leaf          = '#a7a264',
  rose          = '#de6e7c',
}

local b = {bg = colors.bglight, fg = colors.fg}

local c = {bg = colors.bglight, fg = colors.fg}

return {
  normal = {
    a = {bg = colors.fg, fg = colors.bg, gui = 'bold'},
    b = b,
    c = c
  },
  insert = {
    a = {bg = colors.leaf, fg = colors.bg, gui = 'bold'},
    b = b,
    c = c
  },
  visual = {
    a = {bg = colors.reed, fg = colors.bg, gui = 'bold'},
  },
  replace = {
    a = {bg = colors.rose, fg = colors.bg, gui = 'bold'},
    b = b,
    c = c
  },
  command = {
    a = {bg = colors.blossom, fg = colors.bg, gui = 'bold'},
    b = b,
    c = c
  },
  inactive = {
    a = {bg = colors.bglight, fg = colors.bg, gui = 'bold'},
    b = b,
    c = c
  }
}

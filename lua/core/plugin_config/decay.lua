local present, decay = pcall(require, 'decay')

if not present then
  error('Can\'t import decay, make sure u installed it!')
end

decay.setup({
  style = 'decayce',
  nvim_tree = {
    contrast = true, -- or false to disable tree contrast
  },
  italics = {
    code = true,
    comments = true -- to disable italic comments, replace to true to enable
  },
  palette_overrides = {
    background = "#000000",
    comments = "#777777",
  }
})

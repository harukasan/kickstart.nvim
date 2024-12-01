local filetype_config = {
  lua = { size = 2, expandtab = true },
  ruby = { size = 2, expandtab = true },
  go = { size = 2, expandtab = false },
  markdown = { size = 2, expandtab = true },
}

vim.api.nvim_create_autocmd('FileType', {
  callback = function(args)
    local config = filetype_config[args.match]
    if config then
      vim.opt.shiftwidth = config.size
      vim.opt.tabstop = config.size
      vim.opt.softtabstop = config.size
      vim.opt.expandtab = config.expandtab
    end
  end,
})

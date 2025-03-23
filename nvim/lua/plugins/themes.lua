return {
    {
      'EdenEast/nightfox.nvim',
      priority = 1000,
      config = function()
      --vim.cmd.colorscheme('carbonfox')
        require('nightfox').setup({
          options = {
            transparent = false
          }
        })
      end
    }
}

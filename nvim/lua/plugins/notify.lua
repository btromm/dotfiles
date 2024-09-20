-- TODO change colors

return  {
    "rcarriga/nvim-notify",
    config = function()
      require("notify").setup({
        background_colour = "#000000",
        enabled = false,
        render = "default",
        timeout = 1500,
      })
    end
  }

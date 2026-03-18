return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    preset = "modern"
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
dependencies = {
    "echasnovski/mini.icons",
        "nvim-web-devicons"
    },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}

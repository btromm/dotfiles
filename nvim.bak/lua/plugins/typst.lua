return {
  'chomosuke/typst-preview.nvim',
  lazy = false, -- or ft = 'typst'
  version = '1.*',
  opts = {}, -- lazy.nvim will implicitly calls `setup {}`
  keys = {
    { "<leader>tu", ":TypstPreviewUpdate", desc = "Update Typst" },
    { "<leader>tt", ":TypstPreviewToggle", desc = "Toggle Typst preview" },
    { "<leader>tc", ":TypstPreviewFollowCursorToggle", desc = "Toggle Typst cursor follow" }
   }
}

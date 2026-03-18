return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function ()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
        ensure_installed = { "c", "markdown", "markdown_inline", "bash", "regex", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html", "python", "matlab", "norg", "svelte", "tsx", "typst", "vue" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
  end
}

return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({
      ensure_installed = {
        "lua",
        "typescript",
        "tsx",
        "javascript",
        "python",
        "go",
        "rust",
        "ruby",
        "json",
        "yaml",
        "html",
        "css",
        "markdown",
        "markdown_inline",
        "vim",
        "vimdoc",
        "bash",
      },
      auto_install = true,
    })

    -- Enable highlighting and indent via vim options
    vim.treesitter.language.add = vim.treesitter.language.add or function() end
  end,
}

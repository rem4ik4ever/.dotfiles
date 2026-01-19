-- Compatibility shim for nvim 0.11 treesitter API (must be first)
if not vim.treesitter.language.ft_to_lang then
  vim.treesitter.language.ft_to_lang = function(ft)
    return vim.treesitter.language.get_lang(ft) or ft
  end
end

-- Bootstrap lazy.nvim and load config
require("config.options")
require("config.lazy")
require("config.keymaps")

return { -- this table overrides highlights in all themes
  -- colorscheme = "tokyonight",
  -- Normal = { bg = "#000000" },
  vim.api.nvim_command "hi MatchParen ctermbg=blue guibg=lightblue",
}

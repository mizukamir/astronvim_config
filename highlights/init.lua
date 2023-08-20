return { -- this table overrides highlights in all themes
  -- Normal = { bg = "#000000" },
  vim.api.nvim_command "hi MatchParen ctermbg=blue guibg=lightblue",
}

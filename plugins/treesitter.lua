return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- add more things to the ensure_installed table protecting against community packs modifying it
    opts.ensure_installed = require("astronvim.utils").list_insert_unique(opts.ensure_installed, {
      "lua",
      "python",
      "markdown",
      "typescript",
      "javascript",
      "graphql",
      "html",
      "tsx",
      "markdown_inline",
      "css",
      "rust",
      "gitignore",
      "json",
    })
    opts.context_commentstring = {
      enable = true,
    }
  end,
}

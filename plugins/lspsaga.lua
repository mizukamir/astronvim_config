return {
  "glepnir/lspsaga.nvim",
  event = "UIEnter",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-treesitter/nvim-treesitter" },
  },
  config = function()
    require("lspsaga").setup {
      finder = {
        keys = {
          expand_or_jump = "<CR>",
        },
      },
      outline = {
        keys = {
          expand_or_jump = "<CR>",
        },
      },
    }
    local wk = require "which-key"

    wk.register({
      g = {
        name = "+LSP",
        g = { "<cmd>Lspsaga lsp_finder<cr>", "lsp finder" },
        r = { "<cmd>Lspsaga rename<cr>", "Rename" },
        a = { "<cmd>Lspsaga code_action<cr>", "Code action" },
        p = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
        d = { "<cmd>Lspsaga goto_definition<cr>", "Goto definition" },
        o = { "<cmd>Lspsaga outline<cr>", "File Outline" },
        n = { "<cmd>lua vim.diagnostic.goto_next()<cr>", "Goto next diagnostic" },
      },
    }, { prefix = "<leader>" })
  end,
}

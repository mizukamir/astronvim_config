return {
  "glepnir/lspsaga.nvim",
  event = "UIEnter",
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-treesitter/nvim-treesitter" },
  },
  config = function()
    require("lspsaga").setup {
      outline = {
        keys = {
          expand_or_jump = "<CR>",
        },
      },
      ui = {
        -- currently only round theme
        theme = "round",
        -- this option only work in neovim 0.9
        title = false,
        -- border type can be single,double,rounded,solid,shadow.
        border = "rounded",
        winblend = 6,
        expand = "",
        collapse = "",
        preview = " ",
        code_action = "💡",
        diagnostic = "",
        incoming = " ",
        outgoing = " ",
        colors = {
          --float window normal background color
          -- normal_bg = '#232136',
        },
        kind = {},
      },

      preview = {
        lines_above = 1,
        lines_below = 10,
      },
      scroll_preview = {
        scroll_down = "<C-f>",
        scroll_up = "<C-b>",
      },
      request_timeout = 2000,

      finder = {
        edit = { "o", "<CR>" },
        vsplit = "s",
        split = "i",
        tabe = "t",
        quit = { "q", "<ESC>" },
      },
      code_action_lightbulb = {
        enable = true,
      },
      lightbulb = {
        enable = false,
        enable_in_insert = false,
        sign = false,
        sign_priority = 40,
        virtual_text = false,
      },
      definition = {
        width = 1.0,
      },
      diagnostic = {
        show_code_action = false,
        show_source = true,
        jump_num_shortcut = true,
        keys = {
          exec_action = "o",
          quit = "q",
          go_action = "g",
        },
      },
    }
  end,
}
-- TODO: todo test

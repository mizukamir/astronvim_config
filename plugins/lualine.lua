return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local colors = require "tokyonight.colors"
    local function diff_source()
      ---@diagnostic disable-next-line: undefined-field
      local gitsigns = vim.b.gitsigns_status_dict
      if gitsigns then
        return {
          added = gitsigns.added,
          modified = gitsigns.changed,
          removed = gitsigns.removed,
        }
      end
    end
    require("lualine").setup {
      options = {
        icons_enabled = true,
        theme = "auto",
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = {
          statusline = {
            -- "neo-tree",
          },
          winbar = {
            "help",
            "startify",
            "dashboard",
            "packer",
            "neogitstatus",
            "neo-tree",
            "Trouble",
            "alpha",
            "lir",
            "Outline",
            "spectre_panel",
            "toggleterm",
          },
          tabline = {
            "neo-tree",
          },
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          "branch",
          "diagnostics",
        },
        lualine_c = {
          {
            "filename",
            newfile_status = true,
            path = 1,
            shorting_target = 24,
            symbols = { modified = "_󰷥", readonly = " ", newfile = "󰄛" },
          },
          {
            "diff",
            colored = true, -- Displays a colored diff status if set to true
            diff_color = {
              -- Same color values as the general color option can be used here.
              added = colors.green, -- Changes the diff's added color
              modified = colors.blue0, -- Changes the diff's modified color
              removed = colors.red1, -- Changes the diff's removed color you
            },
            symbols = { added = " ", modified = " ", removed = " " }, -- Changes the symbols used by the diff.
            source = diff_source, -- A function that works as a data source for diff.
            -- It must return a table as such:
            --   { added = add_count, modified = modified_count, removed = removed_count }
            -- or nil on failure. count <= 0 won't be displayed.
          },
        },
        lualine_x = { "encoding", "fileformat", "filetype" },
        lualine_y = { "progress" },
        lualine_z = { "location" },
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { "filename" },
        lualine_x = { "location" },
        lualine_y = {},
        lualine_z = {},
      },
      tabline = {
        lualine_a = {
          {
            "buffers",
            -- buffers_color = switch_color,
            symbols = { modified = "_󰷥", alternate_file = " ", directory = " " },
          },
        },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {
          "diff",
        },
        lualine_y = {
          "branch",
        },
        lualine_z = {
          {
            "tabs",
            -- tabs_color = switch_color
          },
        },
      },
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "BufRead",
}

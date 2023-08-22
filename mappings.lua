-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- resize
    ["<A-l>"] = { ":vertical resize +2<CR>" },
    ["<A-h>"] = { ":vertical resize -2<CR>" },
    ["<A-j>"] = { ":resize -2<CR>" },
    ["<A-k>"] = { ":resize +2<CR>" },
    ["<A-=>"] = { "<C-w>=", desc = "Resize equal" },
    -- split
    ["<A-v>"] = { "<C-w>v", desc = "Split window vertically" },
    ["<A-s>"] = { "<C-w>s", desc = "Split window horizontally" },
    -- terminal
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "Toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "Toggle vertical terminal" },
    -- quickhl
    ["<Space>m"] = { "<Plug>(quickhl-manual-this)", desc = "highlight word on" },
    ["<Space>M"] = { "<Plug>(quickhl-manual-reset)", desc = "highlight word off" },
    -- lspsaga
    ["<C-g>g"] = { "<cmd>Lspsaga lsp_finder<cr>", desc = "lsp finder" },
    ["<C-g>r"] = { "<cmd>Lspsaga rename<cr>", desc = "Rename" },
    ["<C-g>a"] = { "<cmd>Lspsaga code_action<cr>", desc = "Code action" },
    ["<C-g>p"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peek definition" },
    ["<C-g>d"] = { "<cmd>Lspsaga goto_definition<cr>", desc = "Goto definition" },
    ["<C-g>o"] = { "<cmd>Lspsaga outline<cr>", desc = "File Outline" },
    ["<C-g>n"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Goto next diagnostic" },
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = {
    ["<A-i>"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "toggle floating terminal" },
    ["<A-H>"] = { "<cmd>ToggleTerm size=10 direction=horizontal<cr>", desc = "toggle horizontal terminal" },
    ["<A-V>"] = { "<cmd>ToggleTerm size=80 direction=vertical<cr>", desc = "toggle vertical terminal" },
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  x = {
    -- quickhl
    ["<Space>m"] = { "<Plug>(quickhl-manual-this)" },
    ["<Space>M"] = { "<Plug>(quickhl-manual-reset)" },
  },
}

-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- treesitter-unit
  vim.api.nvim_set_keymap("x", "iu", ':lua require"treesitter-unit".select()<CR>', { noremap = true }),
  vim.api.nvim_set_keymap("x", "au", ':lua require"treesitter-unit".select(true)<CR>', { noremap = true }),
  vim.api.nvim_set_keymap("o", "iu", ':<c-u>lua require"treesitter-unit".select()<CR>', { noremap = true }),
  vim.api.nvim_set_keymap("o", "au", ':<c-u>lua require"treesitter-unit".select(true)<CR>', { noremap = true }),
  -- treehopper
  vim.api.nvim_set_keymap("o", "m", ':<C-U>lua require("tsht").nodes()<CR>', { noremap = false }),
  vim.api.nvim_set_keymap("x", "m", ':lua require("tsht").nodes()<CR>', { noremap = true }),

  -- first key is the mode
  -- second key is the lefthand side of the map
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
    ["<leader>m"] = { "<Plug>(quickhl-manual-this)", desc = "highlight word on" },
    ["<leader>M"] = { "<Plug>(quickhl-manual-reset)", desc = "highlight word off" },
    -- lspsaga
    ["<C-g>g"] = { "<cmd>Lspsaga lsp_finder<cr>", desc = "lsp finder" },
    ["<C-g>r"] = { "<cmd>Lspsaga rename<cr>", desc = "Rename" },
    ["<C-g>a"] = { "<cmd>Lspsaga code_action<cr>", desc = "Code action" },
    ["<C-g>p"] = { "<cmd>Lspsaga peek_definition<cr>", desc = "Peek definition" },
    ["<C-g>d"] = { "<cmd>Lspsaga goto_definition<cr>", desc = "Goto definition" },
    ["<C-g>o"] = { "<cmd>Lspsaga outline<cr>", desc = "File Outline" },
    ["<C-g>n"] = { "<cmd>lua vim.diagnostic.goto_next()<cr>", desc = "Goto next diagnostic" },
    --sidebar
    ["<leader>j"] = { "<cmd>lua require('sidebar-nvim').toggle()<cr>", desc = "Toggle sidebar" },
    -- vim-asterisk
    -- ["*"] = { "<Plug>(asterisk-z*)", desc = "asterisk-z*" },
    -- ["#"] = { "<Plug>(asterisk-z#)", desc = "asterisk-z#" },
    -- ["g*"] = { "<Plug>(asterisk-gz*)", desc = "asterisk-gz*" },
    -- ["g#"] = { "<Plug>(asterisk-gz#)", desc = "asterisk-gz#" },
    -- rust-tools
    ["<leader>z"] = { "<cmd>lua require('rust-tools').hover_actions.hover_actions()<cr>", desc = "rust-tools hover" },
    ["<leader>a"] = {
      "<cmd>lua require('rust-tools').code_action_group.code_action_group()<cr>",
      desc = "rust-tools code action",
    },

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
  x = {
    -- quickhl
    ["<Space>m"] = { "<Plug>(quickhl-manual-this)" },
    ["<Space>M"] = { "<Plug>(quickhl-manual-reset)" },
  },
}

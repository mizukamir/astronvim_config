return {
  "kevinhwang91/nvim-hlslens",
  event = "BufRead",
  config = function() require("scrollbar.handlers.search").setup {} end,
}

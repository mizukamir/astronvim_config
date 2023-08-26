return {
  "SmiteshP/nvim-gps",
  dependencies = "nvim-treesitter/nvim-treesitter",
  event = "BufReadPre",
  config = function() require("nvim-gps").setup {} end,
}

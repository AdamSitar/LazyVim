return {
  "stevearc/oil.nvim",
  opts = {},
  config = function()
    require("oil").setup()
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}

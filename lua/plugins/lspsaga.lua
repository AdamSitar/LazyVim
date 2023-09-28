return {
  "glepnir/lspsaga.nvim",
  event = "LspAttach",
  enabled = false,
  config = function()
    require("lspsaga").setup({})
  end,
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    --Please make sure you install markdown and markdown_inline parser
    { "nvim-treesitter/nvim-treesitter" },
  },
}

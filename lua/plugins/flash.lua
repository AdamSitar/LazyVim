return {
  "folke/flash.nvim",
  event = "VeryLazy",
  ---@type Flash.Config
  opts = {
    labels = "setnriaoplfuwydhc,",
    label = {
      uppercase = false,
      -- min_pattern_length = 1,
    },
    modes = {
      treesitter = {
        labels = "setnriaoplfuwydhc,",
        highlight = {
          backdrop = true,
          matches = false,
        },
      },
    },
  },
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "o", "x" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "l", mode = { "n", "o", "x" }, function() 
      require("flash").jump({
  search = { mode = "search", max_length = 0 },
  label = { after = { 0, 0 } },
  pattern = "^"
})
    end, desc = "Flash Treesitter" },
    -- { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "J", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
}

if true then
  return {}
end

return {
  "ggandor/leap.nvim",
  opts = {
    target_windows = { vim.fn.win_getid() },
    safe_labels = { "s", "e", "t", "n", "r", "o" },
    labels = {
      "s",
      "e",
      "t",
      "n",
      "r",
      "o",
      "p",
      "l",
      "f",
      "u",
      "d",
      "h",
      "c",
      ",",
      "g",
      "m",
      "w",
      "y",
    },
  },
}

return {
  "akinsho/toggleterm.nvim",
  event = "VeryLazy",
  config = function()
    local theme = require("catppuccin.palettes").get_palette("mocha")

    require("toggleterm").setup({
      direction = "float",
      highlights = {
        NormalFloat = {
          link = "Normal",
        },
        FloatBorder = {
          guifg = theme.overlay0,
        },
      },
      shade_terminals = false,
    })
  end,
}

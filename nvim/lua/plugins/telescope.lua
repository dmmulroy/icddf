return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope-ui-select.nvim",
  },
  config = function()
    require("telescope").setup({
      defaults = {
        vimgrep_arguments = {
          "rg",
          "-L",
          "--color=never",
          "--no-heading",
          "--with-filename",
          "--line-number",
          "--column",
          "--smart-case",
        },
        extensions = {
          ["ui-select"] = {},
        },
        prompt_prefix = "   ",
        selection_caret = "  ",
        entry_prefix = "  ",
        initial_mode = "insert",
        selection_strategy = "reset",
        sorting_strategy = "ascending",
        layout_strategy = "horizontal",
        file_ignore_patterns = { "node_modules", ".git", "target", "dist", "build", ".cargo" },
        path_display = { "truncate" },
        winblend = 0,
        color_devicons = true,
      },
    })
    require("telescope").load_extension("ui-select")
  end,
}

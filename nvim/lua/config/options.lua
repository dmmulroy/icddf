-- Set tab width to four spaces
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.autoindent = true
vim.opt.backspace = "indent,eol,start"

-- Sync clipboard
vim.opt.clipboard = "unnamedplus"

-- Prevent vimgrep from looking through unwanted directories
vim.opt.wildignore:append({
  "*/node_modules/*",
  "*/dist/*",
  "*/target/*",
  "*/.git/*",
  "*/.next/*",
  "*/build/*"
})

-- Inline diagnostics
vim.diagnostic.config({ virtual_text = true })

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true

-- Line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- Tmux-like splits
vim.o.equalalways = false

-- Prevent layout shift from diagnostics
vim.opt.signcolumn = "yes"

-- Gitsigns git refresh rate
vim.opt.updatetime = 250

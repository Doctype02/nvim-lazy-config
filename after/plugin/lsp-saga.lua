local status, saga = pcall(require, "lspsaga")
if not status then return end

saga.setup {
  ui = {
    winblend = 10,
    border = "rounded",
    colors = {
      normal_bg = "#002b36",
    },
    title = false,
  },
}
local keymap = vim.keymap
keymap.set("n", "md", ":Lspsaga show_line_diagnostics<CR>")
keymap.set("n", "<S-j>", ":Lspsaga diagnostic_jump_next<CR>")


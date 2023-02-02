vim.g.mapleader = ";"
local keymap = vim.keymap

--- Git
keymap.set("n", "<leader>ng", ":Neogit<CR>")

keymap.set("n", "x", '"_x')

-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")

-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')

-- Zen Mode
keymap.set("n", "<leader>z", "<cmd>ZenMode<CR>")

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>")

-- Quick escape
keymap.set("i", "jk", "<Esc>")
keymap.set("n", "<C-d>", ":BufDel<CR>")
keymap.set("n", "<C-j>", "<C-d>")
keymap.set("n", "<C-k>", "<C-u>")
keymap.set("n", "<C-s>", ":w<CR>")

keymap.set("n", "<Tab>", "<Cmd>BufferLineCycleNext<CR>")
keymap.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>")

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Split window
keymap.set("n", "<Space>h", ":split<Return><C-w>w")
keymap.set("n", "<Space>v", ":vsplit<Return><C-w>w")
-- Move window
keymap.set("", "<C-h>", "<C-w>h")
keymap.set("", "<C-l>", "<C-w>l")

-- Resize window
keymap.set("n", "<leader>h", "<Cmd>SmartResizeLeft<CR>")
keymap.set("n", "<leader>l", "<Cmd>SmartResizeRight<CR>")
keymap.set("n", "<leader>k", "<Cmd>SmartResizeUp<CR>")
keymap.set("n", "<leader>j", "<Cmd>SmartResizeDown<CR>")

-- Treesitter units

--- Treesitter-units
keymap.set("x", "iu", ':lua require"treesitter-unit".select()<CR>')
keymap.set("x", "au", ':lua require"treesitter-unit".select(true)<CR>')
keymap.set("o", "iu", ':<c-u>lua require"treesitter-unit".select()<CR>')
keymap.set("o", "au", ':<c-u>lua require"treesitter-unit".select(true)<CR>')

--- Move.lua
keymap.set("n", "<A-j>", ":MoveLine(1)<CR>")
keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>")
keymap.set("v", "<A-j>", ":MoveBlock(1)<CR>")
keymap.set("v", "<A-k>", ":MoveBlock(-1)<CR>")
keymap.set("n", "<A-l>", ":MoveHChar(1)<CR>")
keymap.set("n", "<A-h>", ":MoveHChar(-1)<CR>")
keymap.set("v", "<A-l>", ":MoveHBlock(1)<CR>")
keymap.set("v", "<A-h>", ":MoveHBlock(-1)<CR>")

--- Replace

keymap.set("n", "<leader>rs", ":%s/")

--- Quit
keymap.set("n", "<leader>q", ":q!<CR>")

--- Markdown table
keymap.set("n", ";ta", "<cmd>TableModeRealign<CR><cmd>w<CR>")

--- ChatGPT
keymap.set("n", "<space>g", "<cmd>ChatGPT<CR>")

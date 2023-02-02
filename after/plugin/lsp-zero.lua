local lsp = require "lsp-zero"

lsp.preset "lsp-compe"

lsp.set_preferences {
  suggest_lsp_servers = true,
  setup_servers_on_start = true,
  set_lsp_keymaps = false,
  configure_diagnostics = true,
  call_servers = "local",
  sign_icons = {
    error = "E",
    warn = "W",
    hint = "H",
    info = "I",
  },
}

lsp.on_attach(function()
  local diagnostic = require "lspsaga.diagnostic"
  local opts = { noremap = true, silent = true }
  vim.keymap.set("n", "<S-j>", diagnostic.goto_next, opts)
  vim.keymap.set("n", "gl", diagnostic.show_diagnostics, opts)
  vim.keymap.set("n", "K", "<Cmd>Lspsaga hover_doc<CR>", opts)
  vim.keymap.set("n", "gd", "<Cmd>Lspsaga lsp_finder<CR>", opts)
  -- vim.keymap.set('i', '<C-k>', '<Cmd>Lspsaga signature_help<CR>', opts)
  vim.keymap.set("i", "<C-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
  vim.keymap.set("n", "gp", "<Cmd>Lspsaga peek_definition<CR>", opts)
  vim.keymap.set("n", "gr", "<Cmd>Lspsaga rename<CR>", opts)

  -- code action
  local codeaction = require "lspsaga.codeaction"
  vim.keymap.set("n", "<leader>af", function() codeaction:code_action() end, { silent = true })
  vim.keymap.set("v", "<leader>af", function()
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
    codeaction:range_code_action()
  end, { silent = true })
end)

lsp.ensure_installed {
  "tsserver",
  "eslint",
  "sumneko_lua",
  "marksman",
}

lsp.nvim_workspace()
lsp.setup()

vim.diagnostic.config {
  virtual_text = {
    prefix = "●",
  },
  update_in_insert = false,
  float = {
    source = "always", -- Or "if_many"
  },
}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

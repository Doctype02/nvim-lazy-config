local status, ts = pcall(require, "nvim-treesitter.configs")
if not status then return end

ts.setup {
  highlight = {
    enable = true,
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    -- colors = {}, -- table of hex strings
    -- termcolors = {} -- table of colour name strings
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    "tsx",
    "typescript",
    "javascript",
    "bash",
    "json",
    "css",
    "html",
    "lua",
    "prisma",
    "astro",
    "lua",
    "markdown",
  },
  autotag = {
    enable = true,
  },
}

require("nvim-ts-autotag").setup()

local parser_config = require("nvim-treesitter.parsers").get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

# My neovim config 💻
![My neovim config sample image](https://i.imgur.com/hYmt0Z5.png)
This config is completely customized to fit my needs. I'm a Full-Stack Web developer using React and Typescript all day, so it won't work for you if you're using anything else.
## Main features
- Languages servers protocols and autocompletion being handled by [lsp-zero](https://github.com/VonHeikemen/lsp-zero.nvim) and [Mason](https://github.com/williamboman/mason.nvim).
- Format and lint on save with [prettierd](https://github.com/fsouza/prettierd), [eslint_d](https://github.com/mantoni/eslint_d.js) and [stylua](https://github.com/JohnnyMorganz/StyLua).
- Colorscheme is [gruvbox-baby](https://github.com/luisiacc/gruvbox-baby).
- Syntax highlighting with [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter).
- File navigation with [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua) as file tree explorer, and [telescope](https://github.com/nvim-telescope/telescope.nvim) as fuzzy finder.
- Tabs and status line are [bufferline](https://github.com/akinsho/bufferline.nvim) and [lualine](https://github.com/nvim-lualine/lualine.nvim).
- Git integration thanks to [neogit](https://github.com/TimUntersberger/neogit).
- ... and many things more that I'm to lazy to write (check the plugins.lua file).
## Setup
You'll need to have [packer.nvim](https://github.com/wbthomason/packer.nvim) installed previously
```bash
cd ~/.config
git clone https://github.com/enzom-uy/nvim.git
cd nvim
nvim lua/enzom/plugins.lua
# If you installed packer previous to cloning my repo, just run ':PackerSync' in your neovim.
# Otherwise install packer, run ':luafile %' and then ':PackerSync.
```
## Keybindings
Check nvim/lua/enzom/maps.lua file.
# nvim-lazy-config

-- Plugins --
lvim.plugins = {
  { "lunarvim/colorschemes" },
  { "folke/tokyonight.nvim" },
  { "WhoIsSethDaniel/mason-tool-installer.nvim" },
}

-- Keybindings --
lvim.keys.normal_mode["|"] = ":vsplit<CR>"
lvim.keys.normal_mode["-"] = ":split<CR>"

-- Colorscheme --
lvim.colorscheme = "tokyonight"

require("tokyonight").setup {
    transparent = true,
    styles = {
       sidebars = "transparent",
       floats = "transparent",
    },
}

-- lvim Options --
lvim.transparent_window = true

-- vim Options --
vim.opt.cursorline = false

-- Auto Mason Tool Installer --
require('mason-tool-installer').setup {
  ensure_installed = {
    "bash-language-server", 
    "black",
    "emmet-ls", 
    "html-lsp",
    "prettierd",
    "pyright",
    "tailwindcss-language-server",
    "typescript-language-server",
  },
  run_on_start = true,
}

-- LSP's --
local lsp_manager = require("lvim.lsp.manager")
lsp_manager.setup("emmet_ls")

-- Formatters --
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { name = "black" },
  {
    name = "prettierd",
    filetypes = { "typescript", "typescriptreact" },
  },
}

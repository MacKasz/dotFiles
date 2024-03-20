-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = " "

require("lazy").setup({
    -- Themes
    "tanvirtin/monokai.nvim",
    "shaunsingh/nord.nvim",
    "hachy/eva01.vim",

    -- Other
    "tpope/vim-fugitive",
    "tpope/vim-commentary",
    "lewis6991/gitsigns.nvim",
    "nvim-lualine/lualine.nvim",
    {
        'nvim-telescope/telescope.nvim',
        dependencies =
        {
            'nvim-lua/plenary.nvim',
            'nvim-tree/nvim-web-devicons'
        }
    },

    -- LSP
    "williamboman/mason.nvim",
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = {
            "williamboman/mason.nvim",
            'neovim/nvim-lspconfig',
        },
    },
    {
        'VonHeikemen/lsp-zero.nvim', branch = 'v3.x',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/nvim-cmp',
            'L3MON4D3/LuaSnip',
            'neovim/nvim-lspconfig',
        }
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
  })

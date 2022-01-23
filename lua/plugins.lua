local packer = require("packer")
local get_config = function(name)
  return string.format([[require("config/%s")]], name)
end
packer.init()
local use = packer.use
packer.reset()

use({ "wbthomason/packer.nvim" })

use({
  "neovim/nvim-lspconfig",
  config = get_config("lsp"),
})
use({
  "hrsh7th/nvim-cmp",
  config = get_config("cmp"),
})
use({ "hrsh7th/cmp-nvim-lsp" })
use({ "hrsh7th/cmp-buffer" })
use({ "hrsh7th/cmp-path" })
use({ "hrsh7th/cmp-cmdline" })
use({ "hrsh7th/cmp-vsnip" })
use({ "hrsh7th/vim-vsnip" })
use({
  "jose-elias-alvarez/null-ls.nvim",
  config = get_config("null-ls"),
})

use({ "editorconfig/editorconfig-vim" })
use({
  "nvim-treesitter/nvim-treesitter",
  run = "TSUpdate",
  config = get_config("treesitter"),
})
use({ "LionC/nest.nvim" })
use({
  "kyazdani42/nvim-tree.lua",
  requires = {
    { "kyazdani42/nvim-web-devicons" },
  },
  config = get_config("nvim-tree"),
})
use({
  "nvim-telescope/telescope.nvim",
  requires = {
    { "nvim-lua/plenary.nvim" }
  },
  config = get_config("telescope"),
})
use({
  "folke/which-key.nvim",
  config = get_config("which-key"),
})
use({
  "windwp/nvim-autopairs",
  config = get_config("autopairs"),
})

use({
  "Th3Whit3Wolf/space-nvim",
  config = get_config("theme")
})
use({
  "goolord/alpha-nvim",
  config = get_config("alpha")
})
use({
  "projekt0n/circles.nvim",
  config = get_config("circles"),
})
use({
  'lewis6991/gitsigns.nvim',
  requires = {
    'nvim-lua/plenary.nvim'
  },
  config = get_config("gitsigns")
})


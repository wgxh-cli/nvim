local packer = require("packer")
local get_config = function(name)
  return string.format([[require("config/%s")]], name)
end
packer.init({
  git = { default_url_format = "git@github.com:%s" },
})
local use = packer.use
packer.reset()

use({ "wbthomason/packer.nvim" })

use({
  "neovim/nvim-lspconfig",
  config = get_config("lsp"),
})
use({
  "ray-x/lsp_signature.nvim",
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
use({ "hrsh7th/cmp-nvim-lua" })
use({ "hrsh7th/vim-vsnip" })
use({ "lukas-reineke/cmp-rg" })
use({
  "mfussenegger/nvim-lint",
  config = get_config("nvim-lint"),
})
use({
  "nvim-lua/lsp_extensions.nvim",
})
use({
  "onsails/lspkind.nvim",
})

use({ "editorconfig/editorconfig-vim" })
use({ "tpope/vim-surround" })
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
  "beauwilliams/focus.nvim",
  config = get_config("focus"),
})

use({
  "Th3Whit3Wolf/space-nvim",
  config = get_config("theme")
})
use({ "NTBBloodbath/doom-one.nvim" })
use({ "Mofiqul/vscode.nvim" })
use({ "shaunsingh/nord.nvim" })
use({
  "goolord/alpha-nvim",
  config = get_config("alpha")
})
use({
  "projekt0n/circles.nvim",
  config = get_config("circles"),
})
use({
  "eddyekofo94/gruvbox-flat.nvim",
})
use({
  "glepnir/indent-guides.nvim",
  config = get_config("indent-guides"),
})

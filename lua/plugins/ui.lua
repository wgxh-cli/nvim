local platte = {
  rosewater = "#f5e0dc",
  flamingo = "#f2cdcd",
  pink = "#f5c2e7",
  mauve = "#cba6f7",
  red = "#f38ba8",
  maroon = "#eba0ac",
  peach = "#fab387",
  yellow = "#f9e2af",
  green = "#a6e3a1",
  teal = "#94e2d5",
  sky = "#89dceb",
  sapphire = "#74c7ec",
  blue = "#89b4fa",
  lavender = "#b4befe",
  text = "#cdd6f4",
  subtext1 = "#bac2de",
  subtext0 = "#a6adc8",
  overlay2 = "#9399b2",
  overlay1 = "#7f849c",
  overlay0 = "#6c7086",
  surface2 = "#585b70",
  surface1 = "#45475a",
  surface0 = "#313244",
  base = "#181825",
  mantle = "#181825",
  crust = "#11111b",
}

return {
  {
    "norcalli/nvim-colorizer.lua",
    config = function ()
      require("colorizer").setup {}
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function ()
      require("catppuccin").setup {
        flavour = "mocha",
      }
      vim.cmd.colorscheme "catppuccin"
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function ()
      local cuso4_catppuccin = {
        normal = {
          a = { bg = platte.crust, fg = platte.blue },
          b = { bg = platte.surface0, fg = platte.text },
          c = { bg = platte.crust, fg = platte.text },
        },
        insert = {
          a = { bg = platte.crust, fg = platte.green },
        },
        visual = {
          a = { bg = platte.crust, fg = platte.mauve },
        },
      }
      local mode = function ()
        local current_mode = vim.fn.mode();

        return '> ' .. string.upper(current_mode)
      end
      local filename = function ()
        return vim.fn.expand('%:t')
      end

      require("lualine").setup {
        options = {
          theme = cuso4_catppuccin,
          section_separators = '',
          component_separators = '',
        },
        sections = {
          lualine_a = { mode },
          lualine_b = { filename },
          lualine_c = {},
        },
      }
    end
  },
  {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = {
      'lewis6991/gitsigns.nvim',
      'nvim-tree/nvim-web-devicons',
    },
    config = function ()
      require("bufferline").setup {
        options = {
          diagnostics = 'nvim_lsp',
          offsets = {
            {
              filetype = 'neo-tree',
              test = 'File Explorer',
              text_align = 'center',
              separator = true,
            },
          },
          always_show_bufferline = false,
        },
      }
    end,
  },
}

-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/sx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/sx/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/sx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/sx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/sx/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["alpha-nvim"] = {
    config = { 'require("config/alpha")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/alpha-nvim",
    url = "git@github.com:goolord/alpha-nvim"
  },
  ["circles.nvim"] = {
    config = { 'require("config/circles")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/circles.nvim",
    url = "git@github.com:projekt0n/circles.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "git@github.com:hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "git@github.com:hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "git@github.com:hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "git@github.com:hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "git@github.com:hrsh7th/cmp-path"
  },
  ["cmp-rg"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-rg",
    url = "git@github.com:lukas-reineke/cmp-rg"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "git@github.com:hrsh7th/cmp-vsnip"
  },
  ["doom-one.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/doom-one.nvim",
    url = "git@github.com:NTBBloodbath/doom-one.nvim"
  },
  ["editorconfig-vim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/editorconfig-vim",
    url = "git@github.com:editorconfig/editorconfig-vim"
  },
  ["focus.nvim"] = {
    config = { 'require("config/focus")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/focus.nvim",
    url = "git@github.com:beauwilliams/focus.nvim"
  },
  ["gruvbox-flat.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/gruvbox-flat.nvim",
    url = "git@github.com:eddyekofo94/gruvbox-flat.nvim"
  },
  ["indent-guides.nvim"] = {
    config = { 'require("config/indent-guides")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/indent-guides.nvim",
    url = "git@github.com:glepnir/indent-guides.nvim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim",
    url = "git@github.com:nvim-lua/lsp_extensions.nvim"
  },
  ["lsp_signature.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "git@github.com:ray-x/lsp_signature.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "git@github.com:onsails/lspkind.nvim"
  },
  ["nest.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nest.nvim",
    url = "git@github.com:LionC/nest.nvim"
  },
  ["nord.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nord.nvim",
    url = "git@github.com:shaunsingh/nord.nvim"
  },
  ["nvim-autopairs"] = {
    config = { 'require("config/autopairs")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "git@github.com:windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { 'require("config/cmp")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "git@github.com:hrsh7th/nvim-cmp"
  },
  ["nvim-lint"] = {
    config = { 'require("config/nvim-lint")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "git@github.com:mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    config = { 'require("config/lsp")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "git@github.com:neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { 'require("config/nvim-tree")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "git@github.com:kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { 'require("config/treesitter")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "git@github.com:nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "git@github.com:p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "git@github.com:kyazdani42/nvim-web-devicons"
  },
  ["onedarkpro.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "git@github.com:olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "git@github.com:wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "git@github.com:nvim-lua/plenary.nvim"
  },
  ["pounce.nvim"] = {
    config = { 'require("config/pounce")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/pounce.nvim",
    url = "git@github.com:rlane/pounce.nvim"
  },
  ["space-nvim"] = {
    config = { 'require("config/theme")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/space-nvim",
    url = "git@github.com:Th3Whit3Wolf/space-nvim"
  },
  ["telescope.nvim"] = {
    config = { 'require("config/telescope")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "git@github.com:nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { 'require("config/trouble")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "git@github.com:folke/trouble.nvim"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "git@github.com:tpope/vim-surround"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "git@github.com:hrsh7th/vim-vsnip"
  },
  ["vscode.nvim"] = {
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/vscode.nvim",
    url = "git@github.com:Mofiqul/vscode.nvim"
  },
  ["which-key.nvim"] = {
    config = { 'require("config/which-key")' },
    loaded = true,
    path = "/home/sx/.local/share/nvim/site/pack/packer/start/which-key.nvim",
    url = "git@github.com:folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
require("config/trouble")
time([[Config for trouble.nvim]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
require("config/nvim-tree")
time([[Config for nvim-tree.lua]], false)
-- Config for: indent-guides.nvim
time([[Config for indent-guides.nvim]], true)
require("config/indent-guides")
time([[Config for indent-guides.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
require("config/autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
require("config/treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: pounce.nvim
time([[Config for pounce.nvim]], true)
require("config/pounce")
time([[Config for pounce.nvim]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
require("config/which-key")
time([[Config for which-key.nvim]], false)
-- Config for: focus.nvim
time([[Config for focus.nvim]], true)
require("config/focus")
time([[Config for focus.nvim]], false)
-- Config for: space-nvim
time([[Config for space-nvim]], true)
require("config/theme")
time([[Config for space-nvim]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
require("config/cmp")
time([[Config for nvim-cmp]], false)
-- Config for: circles.nvim
time([[Config for circles.nvim]], true)
require("config/circles")
time([[Config for circles.nvim]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
require("config/telescope")
time([[Config for telescope.nvim]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
require("config/lsp")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-lint
time([[Config for nvim-lint]], true)
require("config/nvim-lint")
time([[Config for nvim-lint]], false)
-- Config for: alpha-nvim
time([[Config for alpha-nvim]], true)
require("config/alpha")
time([[Config for alpha-nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end

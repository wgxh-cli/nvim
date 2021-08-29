# neovim configuration of me

It has got three lua modules:
Note:
> `init.lua` is used to load other files under the module.

1. `core`
  - `init.lua`
  - `settings.lua`

    Editor basic configs.
  - `keymaps.lua`

    Editor keymap configs.
2. `plugin`
  - `init.lua`
  - `plugins.lua`

    Plugins list.
  - `config.lua`

    Configure plugins.
3. `lsp`
  - `init.lua`
  - `config.lua`

    Load lsp and configure ls.
  - `diasnogtics.lua`

    Configure diasnogtics.

## Lsp
**Lsp client** : `nvim-lspconfig`, it just simplify the nvim built-in lsp config.

**Auto completion** : `nvim-cmp` and its `sources`.

**Symbol outline** : `vista.vim`.

**Signature show** : `lsp_signature.nvim`

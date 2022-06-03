-- Basic vim config
require('basics')
require('keymaps')
require('colours')

-- Packages
return require('packer').startup(function(use)
  -- Neovim package manager
  use 'wbthomason/packer.nvim'

  -- Atom's One Dark theme
  use 'navarasu/onedark.nvim'

  -- Gruvbox theme
  use 'ellisonleao/gruvbox.nvim'

  -- Smooth scrolling
  use 'psliwka/vim-smoothie'

  -- Comments
  use 'tpope/vim-commentary'

  -- Surrounding
  use 'tpope/vim-surround'

  -- Repeating
  use 'tpope/vim-repeat'

  -- Vim-wiki
  use 'vimwiki/vimwiki'

  -- Git bindings
  use 'tpope/vim-fugitive'

  -- Github Copilot
  use 'github/copilot.vim'

  -- Rainbow brackets
  use 'p00f/nvim-ts-rainbow'

  -- Fuzzy finder
  use {
    'nvim-telescope/telescope.nvim',
    requires = { 'nvim-lua/plenary.nvim' }
  }

  -- Highlight whitespaces
	use {
    'ntpeters/vim-better-whitespace',
    config = function()
      vim.g.better_whitespace_filetypes_blacklist = { 'startify' }
    end
  }

  -- Highlight indents
	use {
    'nathanaelkane/vim-indent-guides',
    config = function()
      vim.g.indent_guides_enable_on_vim_startup = 1
      vim.g.indent_guides_exclude_filetypes = { 'help', 'NvimTree', 'startify' }
    end
  }

  -- Color hex codes
  use {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end
  }

  -- Autosaving
  use {
    'Pocco81/AutoSave.nvim',
    config = function()
      require('autosave').setup {
        enabled = true,
        execution_message = '>w< autosaved at ' .. vim.fn.strftime('%H:%M:%S'),
        events = { 'InsertLeave', 'TextChanged' }
      }
    end
  }

  -- Statusbar line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function()
      require('lualine').setup()
    end
  }

  -- File browser
  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('nvim-tree').setup()
    end
  }

  -- Org-mode
  use {
    'nvim-orgmode/orgmode',
    config = function()
      require('orgmode').setup()
      require('orgmode').setup_ts_grammar()
    end
  }

  -- Speedup neovim startup
  use {
    'lewis6991/impatient.nvim',
    config = function()
      require('impatient')
    end
  }

  -- Language Server Protocol
  use {
    'neovim/nvim-lspconfig',
    config = function()
      require('lspconfig').pyright.setup{}
      require('lspconfig').rnix.setup{}
      require('lspconfig').bashls.setup{}
      require('lspconfig').vimls.setup{}
      require('lspconfig').sumneko_lua.setup {
        settings = {
          Lua = {
            diagnostics = {
              globals = { 'vim' }
            }
          }
        }
      }
    end
  }

  -- Code suggestions
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use {
    'hrsh7th/nvim-cmp',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function()
      require('cmp').setup {
        sources = {
          { name = 'nvim_lsp', group_index = 2 },
          { name = 'path', group_index = 2 },
        }
      }
    end
  }

  -- Treesitter for highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'c', 'lua', 'go', 'rust', 'python', 'nix', 'vim', 'markdown' },
        sync_install = false,
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
        rainbow = {
          enable = true,
          extended_mode = true
        }
      }
    end
  }
end)

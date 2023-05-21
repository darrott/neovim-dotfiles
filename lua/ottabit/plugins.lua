local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  -- Plugin Manager (Packer)
  use 'wbthomason/packer.nvim'

  -- Which Key
  use 'folke/which-key.nvim'

  -- Mason
  use {
    'williamboman/mason.nvim',
    run = ':MasonUpdate',
    requires = {
      'williamboman/mason-lspconfig.nvim',
      'neovim/nvim-lspconfig',
    }
  }

  -- Neo-Tree
  use {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v2.x',
    requires = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    }
  }

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.1',
    requires = {
      'nvim-lua/plenary.nvim',
      'ahmedkhalf/project.nvim',
    }
  }

  -- Completion
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'L3MON4D3/LuaSnip',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-emoji',
      'hrsh7th/cmp-nvim-lsp-signature-help',
      'hrsh7th/cmp-nvim-lua',
      'rafamadriz/friendly-snippets',
    }
  }

  -- Lspkind
  use {
    'onsails/lspkind-nvim'
  }

  -- Trouble
  use {
    'folke/trouble.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons'
    }
  }

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate', 
  }

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- Bufferline
  use {
    'akinsho/bufferline.nvim',
    requires = {
      'nvim-tree/nvim-web-devicons',
    }
  }

  -- Null-LS
  use {
    'jose-elias-alvarez/null-ls.nvim',
    requires = {
      'nvim-lua/plenary.nvim',
    }
  }

  -- Markdown Preview
  use {
    'iamcco/markdown-preview.nvim',
  }

  -- Autopairs
  use {
    'windwp/nvim-autopairs',
  }

  -- Theme: OneDark
  use {
    'navarasu/onedark.nvim',
  }

  if packer_bootstrap then
    require('packer').sync()
  end
end)

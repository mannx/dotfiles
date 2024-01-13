-- bootstrap packer
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

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- lsp
	-- use("neovim/nvim-lspconfig")
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

	-- switch between freq used files
	use("nvim-lua/plenary.nvim")
	use("ThePrimeagen/harpoon")

	-- syntax highlighting / formatting
	use("maxmellon/vim-jsx-pretty")
	use{"fatih/vim-go", run = ':GoInstallBinaries'}

	use("rust-lang/rust.vim")
	use("simrat39/rust-tools.nvim")

	-- quick commenting with gc/gcc/etc
	use("tpope/vim-commentary")

	-- colour scheme
	-- use("folke/tokyonight.nvim")
	use("navarasu/onedark.nvim")

	-- tree sitter for highlighting
	use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

	-- tree view for file browsing
	-- use {
	-- 	'kyazdani42/nvim-tree.lua',
	-- 	requires = {
	-- 		'kyazdani42/nvim-web-devicons',
	-- 	},
	-- 	tag = 'nightly',
	-- }

    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons',
        }
    }

	-- fuzzy finder
	-- use { 'junegunn/fzf'}
	
	-- telescope for opening files
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim'} }
	}


end)

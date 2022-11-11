return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- lsp
	use("neovim/nvim-lspconfig")

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
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons',
		},
		tag = 'nightly',
	}

	-- fuzzy finder
	-- use { 'junegunn/fzf'}
	
	-- telescope for opening files
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { { 'nvim-lua/plenary.nvim'} }
	}


end)

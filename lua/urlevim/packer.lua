vim.cmd [[packadd packer.nvim]]

return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")
	-- Editor stuff
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate"
	})
	use {
	    'numToStr/Comment.nvim',
	    config = function()
		require('Comment').setup()
	    end
	}
	use { "JoosepAlviste/nvim-ts-context-commentstring", commit = "4d3a68c41a53add8804f471fcc49bb398fe8de08" }
	use { "kyazdani42/nvim-web-devicons", commit = "563f3635c2d8a7be7933b9e547f7c178ba0d4352" }
	use { "kyazdani42/nvim-tree.lua", commit = "7282f7de8aedf861fe0162a559fc2b214383c51c" }
	-- Themes
	use({"catppuccin/nvim", as = "catppuccin" })
	use({"sainnhe/gruvbox-material"})
	-- LSP
	use({'neovim/nvim-lspconfig'})
	use({ "williamboman/mason.nvim"})
	use({ "williamboman/mason-lspconfig.nvim" })
	-- Completion and Snippets
	use { "hrsh7th/nvim-cmp", commit = "b0dff0ec4f2748626aae13f011d1a47071fe9abc" } -- The completion plugin
	use { "hrsh7th/cmp-buffer", commit = "3022dbc9166796b644a841a02de8dd1cc1d311fa" } -- buffer completions
	use { "hrsh7th/cmp-path", commit = "447c87cdd6e6d6a1d2488b1d43108bfa217f56e1" } -- path completions
	use { "saadparwaiz1/cmp_luasnip", commit = "a9de941bcbda508d0a45d28ae366bb3f08db2e36" } -- snippet completions
	use { "hrsh7th/cmp-nvim-lsp", commit = "3cf38d9c957e95c397b66f91967758b31be4abe6" }
	use { "hrsh7th/cmp-nvim-lua", commit = "d276254e7198ab7d00f117e88e223b4bd8c02d21" }
	use { "L3MON4D3/LuaSnip", commit = "8f8d493e7836f2697df878ef9c128337cbf2bb84" } --snippet engine
	use { "rafamadriz/friendly-snippets", commit = "2be79d8a9b03d4175ba6b3d14b082680de1b31b1" } -- a bunch of snippets to use
end)

-- nvim/lua/pluginlist.lua

return {
	{ -- comments
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end
	},
	{
		"cpea2506/one_monokai.nvim",
		priority = 1000,
		config = function()
			require("one_monokai").setup({
				transparent = false,
				colors = {},
				themes = function(colors)
					return {}
				end,
				italics = true,
			})
			vim.cmd("colorscheme one_monokai")
		end
	},
	    
    	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
    	"neovim/nvim-lspconfig",

    	'folke/neodev.nvim', -- new

    	{
        	'hrsh7th/nvim-cmp',
        	dependencies = {
            		'L3MON4D3/LuaSnip',
            		'saadparwaiz1/cmp_luasnip',
            		'rafamadriz/friendly-snippets',
            
            		'hrsh7th/cmp-nvim-lsp',
            
        	},
    	},

    	{
        	'nvim-treesitter/nvim-treesitter',
        	build = ':TSUpdate',
    	},


    	{ 
        	'nvim-telescope/telescope.nvim',
        	dependencies = { 'nvim-lua/plenary.nvim' } 
    	},

    	{
        	'nvim-telescope/telescope-fzf-native.nvim',
        	build = 'make',
    	},


    	{
        	'nvim-lualine/lualine.nvim',
        	dependencies = {
            		"nvim-tree/nvim-web-devicons"
        	},
        	config = function()
            		require("lualine").setup({
                		icons_enabled = true,
                		theme = 'onedark',
            		})
        	end,
    	},
	{
    		"nvim-neo-tree/neo-tree.nvim",
    		branch = "v3.x",
    		dependencies = {
      			"nvim-lua/plenary.nvim",
      			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      			"MunifTanjim/nui.nvim",
    		}
	},
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
  		init = function()
    			vim.o.timeout = true
		    	vim.o.timeoutlen = 300
  		end,
		opts = {
			-- your configuration comes here
			-- or leave it empty to use the default settings
    			-- refer to the configuration section below
  		}
	}
}
